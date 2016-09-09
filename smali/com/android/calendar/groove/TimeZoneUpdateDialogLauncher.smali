.class public Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;
.super Ljava/lang/Object;
.source "TimeZoneUpdateDialogLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInProgress:Z

.field private mOnSaveInstanceStateCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->mInProgress:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->mOnSaveInstanceStateCalled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->mInProgress:Z

    return p1
.end method


# virtual methods
.method public maybeLaunchDialog(Landroid/app/Activity;)V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 59
    iget-boolean v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->mInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$TimeZoneUpdateDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    sget-object v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->TAG:Ljava/lang/String;

    const-string v1, "Launcher in progress or dialog shown. Exiting."

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 183
    :goto_0
    return-void

    .line 64
    :cond_1
    iput-boolean v12, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->mInProgress:Z

    .line 67
    const-string v1, "preferences_last_display_tz"

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    if-nez v0, :cond_2

    .line 72
    sget-object v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->TAG:Ljava/lang/String;

    const-string v1, "Last displayed timezone is null, setting to current."

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 73
    const-string v0, "preferences_last_display_tz"

    .line 74
    invoke-static {p1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {p1, v0, v1}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iput-boolean v13, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->mInProgress:Z

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {p1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 82
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v10, v1

    .line 84
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v6, v1

    .line 86
    sget-object v1, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->TAG:Ljava/lang/String;

    const-string v2, "Last timezone: %s (%d), Current timezone: %s (%d)"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v13

    .line 87
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v12

    const/4 v0, 0x2

    aput-object v5, v9, v0

    const/4 v0, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v9, v0

    .line 86
    invoke-static {v1, v2, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 91
    cmp-long v0, v10, v6

    if-nez v0, :cond_3

    .line 92
    iput-boolean v13, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->mInProgress:Z

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v9

    new-instance v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;-><init>(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;Landroid/app/Activity;JLjava/lang/String;J)V

    invoke-virtual {v9, v13, v8, v0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    goto :goto_0
.end method

.method public setOnSaveInstanceStateCalled(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->mOnSaveInstanceStateCalled:Z

    .line 51
    return-void
.end method
