.class public Lcom/google/android/syncadapters/calendar/safetynet/BatchSyncSafetyNet;
.super Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;
.source "BatchSyncSafetyNet.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/google/android/syncadapters/calendar/safetynet/BatchSyncSafetyNet;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/safetynet/BatchSyncSafetyNet;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;-><init>()V

    .line 32
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "google_calendar_max_local_changes_in_batch"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/syncadapters/calendar/safetynet/BatchSyncSafetyNet;->mMaxLocalChangesInBatch:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "google_calendar_sync_num_allowed_simultaneous changes"

    const-wide/16 v2, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/syncadapters/calendar/safetynet/BatchSyncSafetyNet;->mAllowedSimultaneousDeletesNumber:J

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "google_calendar_sync_percent_allowed_simultaneous_changes"

    const-wide/16 v2, 0x14

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/syncadapters/calendar/safetynet/BatchSyncSafetyNet;->mAllowedSimultaneousDeletesPercent:J

    .line 45
    invoke-static {}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->getInstance()Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/syncadapters/calendar/safetynet/BatchSyncSafetyNet;->mMaxLocalChangesInBatch:I

    iget-wide v4, p0, Lcom/google/android/syncadapters/calendar/safetynet/BatchSyncSafetyNet;->mAllowedSimultaneousDeletesNumber:J

    iget-wide v6, p0, Lcom/google/android/syncadapters/calendar/safetynet/BatchSyncSafetyNet;->mAllowedSimultaneousDeletesPercent:J

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setLoggedGservicesFlags(ZIJJ)V

    .line 48
    return-void
.end method


# virtual methods
.method protected getConsideredDeletes(II)I
    .locals 0

    .prologue
    .line 64
    return p1
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/android/syncadapters/calendar/safetynet/BatchSyncSafetyNet;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onBatchSync(Landroid/content/ContentProviderClient;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/EntityIterator;Landroid/content/SyncResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentProviderClient;",
            "Lcom/google/android/apiary/ItemAndEntityHandler",
            "<TT;>;",
            "Landroid/content/EntityIterator;",
            "Landroid/content/SyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/safetynet/BatchSyncSafetyNet;->runProtection(Landroid/content/ContentProviderClient;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/EntityIterator;Landroid/content/SyncResult;)V

    .line 54
    return-void
.end method

.method public onFullSync(Landroid/content/ContentProviderClient;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/SyncResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentProviderClient;",
            "Lcom/google/android/apiary/ItemAndEntityHandler",
            "<TT;>;",
            "Landroid/content/SyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    return-void
.end method
