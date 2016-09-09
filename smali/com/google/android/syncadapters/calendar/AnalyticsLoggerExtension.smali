.class public Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;
.super Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;
.source "AnalyticsLoggerExtension.java"


# static fields
.field private static final ANALYTICS_LOGGER_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static sAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

.field private static sAppVersion:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sCustomDimensionsBuilder:Ljava/lang/StringBuilder;

.field private static sCustomMetricsBuilder:Ljava/lang/StringBuilder;

.field private static sPackageName:Ljava/lang/String;

.field private static sSyncLogBuilder:Ljava/lang/StringBuilder;

.field private static sTrackingId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const-class v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->ANALYTICS_LOGGER_LOCK:Ljava/lang/Object;

    .line 27
    sput-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    .line 28
    sput-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sSyncLogBuilder:Ljava/lang/StringBuilder;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sCustomDimensionsBuilder:Ljava/lang/StringBuilder;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sCustomMetricsBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;-><init>()V

    return-void
.end method

.method private addDimensions(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    if-nez p1, :cond_1

    .line 220
    :cond_0
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 218
    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 217
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private addMetrics(Landroid/util/SparseLongArray;)V
    .locals 7

    .prologue
    .line 223
    if-nez p1, :cond_1

    .line 229
    :cond_0
    return-void

    .line 226
    :cond_1
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 227
    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v6}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 226
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method private addSessionScopeCustomDimensions()V
    .locals 4

    .prologue
    .line 284
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/4 v2, 0x3

    sget-object v3, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sAppVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    return-void
.end method

.method private addSyncResultCustomFields(Landroid/content/SyncResult;)V
    .locals 7

    .prologue
    .line 312
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    if-nez v0, :cond_1

    .line 313
    :cond_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->TAG:Ljava/lang/String;

    const-string v1, "No Sync Stats found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 344
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v6, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 319
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_2

    .line 321
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/16 v2, 0xc

    const-string v3, "TRUE"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    :cond_2
    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/4 v3, 0x1

    iget-wide v4, v6, Landroid/content/SyncStats;->numInserts:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 328
    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/4 v3, 0x2

    iget-wide v4, v6, Landroid/content/SyncStats;->numUpdates:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 330
    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/4 v3, 0x3

    iget-wide v4, v6, Landroid/content/SyncStats;->numDeletes:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 332
    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/4 v3, 0x4

    iget-wide v4, v6, Landroid/content/SyncStats;->numEntries:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 334
    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/4 v3, 0x5

    iget-wide v4, v6, Landroid/content/SyncStats;->numSkippedEntries:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 336
    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/4 v3, 0x6

    iget-wide v4, v6, Landroid/content/SyncStats;->numAuthExceptions:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 338
    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/4 v3, 0x7

    iget-wide v4, v6, Landroid/content/SyncStats;->numIoExceptions:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 340
    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/16 v3, 0x8

    iget-wide v4, v6, Landroid/content/SyncStats;->numParseExceptions:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 342
    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/16 v3, 0x9

    iget-wide v4, v6, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method private addSyncSpecificCustomDimensions()V
    .locals 4

    .prologue
    .line 289
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncLog;->getLastStartedSyncType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 290
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->TAG:Ljava/lang/String;

    const-string v1, "No sync custom dimensions found"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/16 v2, 0xa

    .line 294
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncLog;->getLastStartedSyncType()Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/4 v2, 0x6

    .line 296
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncLog;->getLastStartedSyncAccountType()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/4 v2, 0x7

    .line 298
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncLog;->getLastStartedSyncCalendarType()Ljava/lang/String;

    move-result-object v3

    .line 297
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/16 v2, 0x8

    .line 300
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncLog;->getLastStartedSyncCalendarAccess()Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/16 v2, 0x9

    .line 302
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncLog;->getLastStartedSyncCalendarVisibility()Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncLog;->getLastTooManyDeletionsResolution()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/16 v2, 0xb

    .line 307
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncLog;->getLastTooManyDeletionsResolution()Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private clearCustomFieldsStringBuilders()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sCustomDimensionsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 373
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sCustomMetricsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 374
    return-void
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sAppVersion:Ljava/lang/String;

    const-string v1, "AnalyticsLoggerExtension#initialize() must be called first"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;
    .locals 2

    .prologue
    .line 183
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    const-string v1, "AnalyticsLoggerExtension#initialize() must be called first"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 100
    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->ANALYTICS_LOGGER_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    if-eqz v0, :cond_0

    .line 102
    monitor-exit v2

    .line 134
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->initializePackageNameAndAppVersion(Landroid/content/Context;)V

    .line 105
    sput-object p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    .line 111
    const-string v0, "com.google.android.calendar"

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->TAG:Ljava/lang/String;

    const-string v1, "Initializing Timely Syncadapter Logging"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    const-string v0, "UA-39295668-6"

    sput-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    .line 114
    const-string v0, "1.0"

    .line 115
    const-string v1, "calendar_sync_analytics_sampling_rate"

    .line 126
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 130
    sget-object v3, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    sget-object v4, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v5, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->initialize(Landroid/content/Context;Ljava/lang/String;D)Z

    .line 132
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sAnalyticsLogger:Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->addSessionScopeCustomDimensions()V

    .line 133
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 118
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->TAG:Ljava/lang/String;

    const-string v1, "Initializing Standalone Syncadapter Logging"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    const-string v0, "UA-39295668-9"

    sput-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    .line 120
    const-string v0, "0.1"

    .line 122
    const-string v1, "calendar_ssa_analytics_sampling_rate"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static initializePackageNameAndAppVersion(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sAppVersion:Ljava/lang/String;

    .line 138
    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sPackageName:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    .line 143
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 144
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sAppVersion:Ljava/lang/String;

    .line 147
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->TAG:Ljava/lang/String;

    const-string v2, "Package name not found"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private logAnalyticsToSyncLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 270
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sSyncLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 271
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sSyncLogBuilder:Ljava/lang/StringBuilder;

    const-string v1, "Analytics Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sCustomDimensionsBuilder:Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sCustomMetricsBuilder:Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sSyncLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/SyncLog;->log([Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->clearCustomFieldsStringBuilders()V

    .line 277
    return-void
.end method

.method private trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    if-eqz p6, :cond_1

    .line 257
    invoke-interface {p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    sget-object v3, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v4, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    .line 260
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_1
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->TAG:Ljava/lang/String;

    const-string v1, "track event: %s %s %s %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 265
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->mAnalytics:Lcom/google/android/syncadapters/calendar/Analytics;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/Analytics;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 266
    invoke-direct/range {p0 .. p5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->logAnalyticsToSyncLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 267
    return-void
.end method


# virtual methods
.method public logConsistencyCheckerEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    const-string v1, "Consistency"

    if-nez p2, :cond_0

    const-string v3, ""

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 252
    return-void

    :cond_0
    move-object v3, p2

    .line 251
    goto :goto_0
.end method

.method public logSyncError(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 241
    sget-object v0, Lcom/google/android/syncadapters/calendar/Constants;->ERROR_MAP:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    if-nez v0, :cond_0

    .line 243
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 245
    :goto_0
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->addSyncSpecificCustomDimensions()V

    .line 246
    const-string v1, "Sync"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 247
    return-void

    :cond_0
    move-object v3, v0

    goto :goto_0
.end method

.method public logSyncError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->addSyncSpecificCustomDimensions()V

    .line 190
    const-string v1, "Sync"

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 191
    return-void
.end method

.method public logSyncLogEvent(Ljava/lang/String;Ljava/lang/String;JLandroid/content/SyncResult;Landroid/util/SparseArray;Landroid/util/SparseLongArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Landroid/content/SyncResult;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseLongArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->addSyncSpecificCustomDimensions()V

    .line 196
    invoke-direct {p0, p6}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->addDimensions(Landroid/util/SparseArray;)V

    .line 197
    invoke-direct {p0, p7}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->addMetrics(Landroid/util/SparseLongArray;)V

    .line 198
    invoke-direct {p0, p5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->addSyncResultCustomFields(Landroid/content/SyncResult;)V

    .line 199
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->TAG:Ljava/lang/String;

    const-string v1, "track event: %s %s %s %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "SyncLog"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 200
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->mAnalytics:Lcom/google/android/syncadapters/calendar/Analytics;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const-string v3, "SyncLog"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/Analytics;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->clearCustomFieldsStringBuilders()V

    .line 203
    return-void
.end method

.method public logSyncLogTiming(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->addSyncSpecificCustomDimensions()V

    .line 233
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->TAG:Ljava/lang/String;

    const-string v1, "track timing: %s %d %s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "SyncLog"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 234
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->mAnalytics:Lcom/google/android/syncadapters/calendar/Analytics;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const-string v3, "SyncLog"

    move-wide v4, p3

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/syncadapters/calendar/Analytics;->trackTiming(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->clearCustomFieldsStringBuilders()V

    .line 238
    return-void
.end method

.method public setCustomDimension(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    return-void
.end method

.method public setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 349
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sCustomDimensionsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 351
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sCustomDimensionsBuilder:Ljava/lang/StringBuilder;

    const-string v1, " Custom Dimensions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sCustomDimensionsBuilder:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_1
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->TAG:Ljava/lang/String;

    const-string v1, "set custom dimension: %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 356
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 357
    return-void
.end method

.method public setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 6

    .prologue
    .line 361
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sCustomMetricsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 363
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sCustomMetricsBuilder:Ljava/lang/StringBuilder;

    const-string v1, " Custom Metrics:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sCustomMetricsBuilder:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 367
    :cond_1
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->TAG:Ljava/lang/String;

    const-string v1, "set custom metric: %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 368
    invoke-super/range {p0 .. p5}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 369
    return-void
.end method

.method public setLoggedGservicesFlags(ZIJJ)V
    .locals 5

    .prologue
    .line 166
    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/16 v3, 0x11

    if-eqz p1, :cond_0

    .line 167
    const-string v0, "NEW"

    .line 166
    :goto_0
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 168
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/16 v2, 0x12

    .line 169
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/16 v2, 0x13

    .line 171
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 172
    sget-object v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->sTrackingId:Ljava/lang/String;

    const/16 v2, 0x14

    .line 173
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerExtension;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    return-void

    .line 167
    :cond_0
    const-string v0, "OLD"

    goto :goto_0
.end method
