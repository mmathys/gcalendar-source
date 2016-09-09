.class public Lcom/google/android/syncadapters/calendar/safetynet/FullSyncSafetyNet;
.super Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;
.source "FullSyncSafetyNet.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/android/syncadapters/calendar/safetynet/FullSyncSafetyNet;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/safetynet/FullSyncSafetyNet;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "google_calendar_max_local_changes_in_batch_new"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/syncadapters/calendar/safetynet/FullSyncSafetyNet;->mMaxLocalChangesInBatch:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "google_calendar_sync_num_allowed_simultaneous_deletes"

    const-wide/16 v2, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/syncadapters/calendar/safetynet/FullSyncSafetyNet;->mAllowedSimultaneousDeletesNumber:J

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "google_calendar_sync_percent_allowed_simultaneous_deletes"

    const-wide/16 v2, 0x14

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/syncadapters/calendar/safetynet/FullSyncSafetyNet;->mAllowedSimultaneousDeletesPercent:J

    .line 51
    invoke-static {}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->getInstance()Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    move-result-object v1

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/syncadapters/calendar/safetynet/FullSyncSafetyNet;->mMaxLocalChangesInBatch:I

    iget-wide v4, p0, Lcom/google/android/syncadapters/calendar/safetynet/FullSyncSafetyNet;->mAllowedSimultaneousDeletesNumber:J

    iget-wide v6, p0, Lcom/google/android/syncadapters/calendar/safetynet/FullSyncSafetyNet;->mAllowedSimultaneousDeletesPercent:J

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setLoggedGservicesFlags(ZIJJ)V

    .line 54
    return-void
.end method


# virtual methods
.method protected getConsideredDeletes(II)I
    .locals 0

    .prologue
    .line 70
    return p2
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/android/syncadapters/calendar/safetynet/FullSyncSafetyNet;->TAG:Ljava/lang/String;

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
    .line 60
    return-void
.end method

.method public onFullSync(Landroid/content/ContentProviderClient;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/SyncResult;)V
    .locals 1
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
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/syncadapters/calendar/safetynet/FullSyncSafetyNet;->runProtection(Landroid/content/ContentProviderClient;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/EntityIterator;Landroid/content/SyncResult;)V

    .line 66
    return-void
.end method
