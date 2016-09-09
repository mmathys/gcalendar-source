.class public Lcom/google/android/syncadapters/calendar/ConscryptUtils;
.super Ljava/lang/Object;
.source "ConscryptUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/android/syncadapters/calendar/ConscryptUtils;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/ConscryptUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installSecurityProvider(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/syncadapters/calendar/ConscryptInstallationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 21
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 25
    sget-object v1, Lcom/google/android/syncadapters/calendar/ConscryptUtils;->TAG:Ljava/lang/String;

    const-string v2, "Repairable error from installIfNeeded, in installSecurityProvider"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getConnectionStatusCode()I

    move-result v1

    invoke-static {v1, p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->showErrorNotification(ILandroid/content/Context;)V

    .line 30
    new-instance v1, Lcom/google/android/syncadapters/calendar/ConscryptInstallationException;

    const-string v2, "Error from installSecurityProvider"

    invoke-direct {v1, v2, v0}, Lcom/google/android/syncadapters/calendar/ConscryptInstallationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 32
    :catch_1
    move-exception v0

    .line 34
    sget-object v1, Lcom/google/android/syncadapters/calendar/ConscryptUtils;->TAG:Ljava/lang/String;

    const-string v2, "Unrecoverable error from installIfNeeded, in installSecurityProvider"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 36
    new-instance v1, Lcom/google/android/syncadapters/calendar/ConscryptInstallationException;

    const-string v2, "Error from installSecurityProvider"

    invoke-direct {v1, v2, v0}, Lcom/google/android/syncadapters/calendar/ConscryptInstallationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
