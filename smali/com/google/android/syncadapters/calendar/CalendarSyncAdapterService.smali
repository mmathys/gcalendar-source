.class public Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;
.super Landroid/app/Service;
.source "CalendarSyncAdapterService.java"


# static fields
.field private static sSyncAdapter:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    return-void
.end method

.method public static getOrMakeSyncAdapter(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;
    .locals 3

    .prologue
    .line 43
    sget-object v1, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;

    if-nez v0, :cond_1

    .line 45
    invoke-static {}, Lcom/android/calendarcommon2/LogUtils;->buildPreventsDebugLogging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Improperly configured release build."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 48
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;

    invoke-direct {v0, p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;

    .line 50
    :cond_1
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->sSyncAdapter:Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterService;->getOrMakeSyncAdapter(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;

    .line 40
    return-void
.end method
