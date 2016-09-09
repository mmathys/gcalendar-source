.class Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase$1;
.super Ljava/lang/Object;
.source "AnalyticsLoggerBase.java"

# interfaces
.implements Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;


# direct methods
.method constructor <init>(Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase$1;->this$0:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoggerConnected()V
    .locals 3

    .prologue
    .line 39
    const-string v0, "AnalyticsLogBase"

    const-string v1, "PlayLogger.onLoggerConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 40
    return-void
.end method

.method public onLoggerFailedConnection()V
    .locals 3

    .prologue
    .line 35
    const-string v0, "AnalyticsLogBase"

    const-string v1, "PlayLogger.onLoggerFailedConnection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 36
    return-void
.end method

.method public onLoggerFailedConnectionWithResolution(Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 31
    const-string v0, "AnalyticsLogBase"

    const-string v1, "PlayLogger.onLoggerFailedWithRes. intent=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 32
    return-void
.end method
