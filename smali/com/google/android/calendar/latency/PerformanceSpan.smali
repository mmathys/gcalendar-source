.class public Lcom/google/android/calendar/latency/PerformanceSpan;
.super Ljava/lang/Object;
.source "PerformanceSpan.java"


# static fields
.field private static mAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

.field private static mCategory:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static sPerformanceMetricCollector:Lcom/google/android/calendar/PerformanceMetricCollector;


# instance fields
.field private mAlsoLogAsEvent:Z

.field private mLogIntraMarksToAnalytics:Z

.field protected mMarks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/calendar/latency/PerformanceMark;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanName:Ljava/lang/String;

.field private mStart:Lcom/google/android/calendar/latency/PerformanceMark;

.field private spanTimer:Lcom/google/android/libraries/performance/primes/TimerEvent;

.field private timerEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/libraries/performance/primes/TimerEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v5, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mAlsoLogAsEvent:Z

    .line 30
    iput-boolean v5, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mLogIntraMarksToAnalytics:Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 85
    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/latency/PerformanceSpan;->initialize(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public constructor <init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mAlsoLogAsEvent:Z

    .line 30
    iput-boolean v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mLogIntraMarksToAnalytics:Z

    .line 90
    invoke-direct/range {p0 .. p5}, Lcom/google/android/calendar/latency/PerformanceSpan;->initialize(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;Z)V

    .line 91
    return-void
.end method

.method private declared-synchronized initialize(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    .line 96
    iput-boolean p5, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mLogIntraMarksToAnalytics:Z

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->timerEvents:Landroid/util/SparseArray;

    .line 99
    sget-object v0, Lcom/google/android/calendar/latency/PerformanceSpan;->sPerformanceMetricCollector:Lcom/google/android/calendar/PerformanceMetricCollector;

    invoke-virtual {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->initializeTimer()Lcom/google/android/libraries/performance/primes/TimerEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->spanTimer:Lcom/google/android/libraries/performance/primes/TimerEvent;

    .line 101
    if-eqz p3, :cond_3

    .line 102
    iput-object p3, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mStart:Lcom/google/android/calendar/latency/PerformanceMark;

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/calendar/latency/PerformanceSpan;->isVerbose()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_1

    .line 107
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mMarks:Ljava/util/ArrayList;

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/latency/PerformanceSpan;->isDevelopment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mStart:Lcom/google/android/calendar/latency/PerformanceMark;

    iget-object v0, v0, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 111
    const-string v0, "PerformanceSpan"

    const-string v1, "[dev] span %s started by mark %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 112
    invoke-static {p2}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 111
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 104
    :cond_3
    :try_start_1
    new-instance v0, Lcom/google/android/calendar/latency/PerformanceMark;

    invoke-direct {v0, p4}, Lcom/google/android/calendar/latency/PerformanceMark;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mStart:Lcom/google/android/calendar/latency/PerformanceMark;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :cond_4
    :try_start_2
    const-string v0, "PerformanceSpan"

    const-string v1, "[dev] span %s started by mark %s from %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 115
    invoke-static {p2}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mStart:Lcom/google/android/calendar/latency/PerformanceMark;

    iget-object v4, v4, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 114
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static loggerInitializer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    .line 51
    sput-object p1, Lcom/google/android/calendar/latency/PerformanceSpan;->mCategory:Ljava/lang/String;

    .line 52
    sput-object p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {p0}, Lcom/google/android/calendar/PerformanceMetricCollector;->get(Landroid/content/Context;)Lcom/google/android/calendar/PerformanceMetricCollector;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/latency/PerformanceSpan;->sPerformanceMetricCollector:Lcom/google/android/calendar/PerformanceMetricCollector;

    .line 54
    return-void
.end method

.method private report(Lcom/google/android/calendar/latency/PerformanceMark;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 284
    .line 286
    const-string v0, "PerformanceSpan"

    const-string v2, "Start report for span %s"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 288
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mMarks:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mMarks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-direct {p0}, Lcom/google/android/calendar/latency/PerformanceSpan;->reportIntraMarks()Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    iget-wide v2, p1, Lcom/google/android/calendar/latency/PerformanceMark;->mCpuTimeNanos:J

    iget-object v4, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mStart:Lcom/google/android/calendar/latency/PerformanceMark;

    iget-wide v4, v4, Lcom/google/android/calendar/latency/PerformanceMark;->mCpuTimeNanos:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 294
    iget-wide v4, p1, Lcom/google/android/calendar/latency/PerformanceMark;->mWallTimeMillis:J

    iget-object v6, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mStart:Lcom/google/android/calendar/latency/PerformanceMark;

    iget-wide v6, v6, Lcom/google/android/calendar/latency/PerformanceMark;->mWallTimeMillis:J

    sub-long/2addr v4, v6

    .line 296
    const-string v6, "PerformanceSpan"

    const-string v7, "finish report for span %s: %d elapsed, %d cpu"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    aput-object v9, v8, v10

    .line 297
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    .line 296
    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 299
    iget-boolean v2, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mLogIntraMarksToAnalytics:Z

    if-eqz v2, :cond_1

    move-object v7, v0

    .line 300
    :goto_1
    sget-object v1, Lcom/google/android/calendar/latency/PerformanceSpan;->mAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    sget-object v2, Lcom/google/android/calendar/latency/PerformanceSpan;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/google/android/calendar/latency/PerformanceSpan;->mCategory:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-boolean v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mAlsoLogAsEvent:Z

    if-eqz v0, :cond_0

    .line 302
    sget-object v3, Lcom/google/android/calendar/latency/PerformanceSpan;->mAnalyticsLogger:Lcom/android/calendar/AnalyticsLogger;

    sget-object v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/calendar/latency/PerformanceSpan;->mCategory:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    .line 303
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v4, v0

    move-object v5, v1

    invoke-interface/range {v3 .. v8}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    :cond_0
    return-void

    :cond_1
    move-object v7, v1

    .line 299
    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private reportIntraMarks()Ljava/lang/String;
    .locals 18

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mMarks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 232
    const/4 v2, 0x0

    .line 277
    :goto_0
    return-object v2

    .line 234
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mStart:Lcom/google/android/calendar/latency/PerformanceMark;

    .line 236
    const/4 v2, 0x0

    move-object v4, v3

    move v3, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mMarks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mMarks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/calendar/latency/PerformanceMark;

    .line 238
    iget-wide v6, v2, Lcom/google/android/calendar/latency/PerformanceMark;->mCpuTimeNanos:J

    iget-wide v8, v4, Lcom/google/android/calendar/latency/PerformanceMark;->mCpuTimeNanos:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    .line 240
    iget-wide v8, v2, Lcom/google/android/calendar/latency/PerformanceMark;->mWallTimeMillis:J

    iget-wide v10, v4, Lcom/google/android/calendar/latency/PerformanceMark;->mWallTimeMillis:J

    sub-long/2addr v8, v10

    .line 241
    iget-wide v10, v2, Lcom/google/android/calendar/latency/PerformanceMark;->mWallTimeMillis:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mStart:Lcom/google/android/calendar/latency/PerformanceMark;

    iget-wide v12, v12, Lcom/google/android/calendar/latency/PerformanceMark;->mWallTimeMillis:J

    sub-long/2addr v10, v12

    .line 243
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mStart:Lcom/google/android/calendar/latency/PerformanceMark;

    if-ne v4, v12, :cond_4

    .line 244
    iget-object v4, v2, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 245
    const-string v4, "PerformanceSpan"

    const-string v12, "report mark %s[%s]: %d elapsed, %d cpu"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    iget-object v15, v2, Lcom/google/android/calendar/latency/PerformanceMark;->mMark:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 246
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v13, v14

    const/4 v8, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v13, v8

    .line 245
    invoke-static {v4, v12, v13}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 269
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mMarks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 270
    if-lez v3, :cond_1

    .line 271
    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_1
    iget-object v4, v2, Lcom/google/android/calendar/latency/PerformanceMark;->mMark:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move-object v4, v2

    goto :goto_1

    .line 248
    :cond_3
    const-string v4, "PerformanceSpan"

    const-string v12, "report mark %s[%s]: %d elapsed, %d cpu from %s"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    iget-object v15, v2, Lcom/google/android/calendar/latency/PerformanceMark;->mMark:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    .line 249
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v13, v14

    const/4 v8, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v13, v8

    const/4 v6, 0x4

    iget-object v7, v2, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    aput-object v7, v13, v6

    .line 248
    invoke-static {v4, v12, v13}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 253
    :cond_4
    iget-wide v12, v2, Lcom/google/android/calendar/latency/PerformanceMark;->mCpuTimeNanos:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mStart:Lcom/google/android/calendar/latency/PerformanceMark;

    iget-wide v14, v4, Lcom/google/android/calendar/latency/PerformanceMark;->mCpuTimeNanos:J

    sub-long/2addr v12, v14

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    .line 255
    iget-object v4, v2, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 256
    const-string v4, "PerformanceSpan"

    const-string v14, "report mark %s[%s]: %d elapsed, %d cpu;  %d total, %d cpu"

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget-object v0, v2, Lcom/google/android/calendar/latency/PerformanceMark;->mMark:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x2

    .line 258
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v15, v16

    const/4 v8, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v15, v8

    const/4 v6, 0x4

    .line 259
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v15, v6

    const/4 v6, 0x5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v15, v6

    .line 256
    invoke-static {v4, v14, v15}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 261
    :cond_5
    const-string v4, "PerformanceSpan"

    const-string v14, "report mark %s[%s]: %d elapsed, %d cpu;  %d total, %d cpu from %s"

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget-object v0, v2, Lcom/google/android/calendar/latency/PerformanceMark;->mMark:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x2

    .line 263
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v15, v16

    const/4 v8, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v15, v8

    const/4 v6, 0x4

    .line 264
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v15, v6

    const/4 v6, 0x5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v15, v6

    const/4 v6, 0x6

    iget-object v7, v2, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    aput-object v7, v15, v6

    .line 261
    invoke-static {v4, v14, v15}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 277
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized clearAt(II)V
    .locals 7

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->timerEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/TimerEvent;

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-static {p2}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    sget-object v2, Lcom/google/android/calendar/latency/PerformanceSpan;->sPerformanceMetricCollector:Lcom/google/android/calendar/PerformanceMetricCollector;

    iget-object v3, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/calendar/PerformanceMetricCollector;->logTime(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mMarks:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mMarks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 170
    const/4 v0, 0x0

    .line 171
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/latency/PerformanceMark;

    .line 173
    iget v2, v0, Lcom/google/android/calendar/latency/PerformanceMark;->mMarkId:I

    if-ne v2, p1, :cond_1

    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/latency/PerformanceSpan;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    if-nez v0, :cond_4

    .line 180
    const-string v0, "PerformanceSpan"

    const-string v1, "[dev] mark %d dropped from %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 181
    :cond_4
    :try_start_1
    iget-object v1, v0, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 182
    const-string v1, "PerformanceSpan"

    const-string v2, "[dev] mark %s dropped from %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/google/android/calendar/latency/PerformanceMark;->mMark:Ljava/lang/String;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 184
    :cond_5
    :try_start_2
    const-string v1, "PerformanceSpan"

    const-string v2, "[dev] mark %s dropped from %s by %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/google/android/calendar/latency/PerformanceMark;->mMark:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v0, v0, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized endAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 200
    monitor-enter p0

    if-nez p2, :cond_0

    .line 201
    :try_start_0
    new-instance p2, Lcom/google/android/calendar/latency/PerformanceMark;

    invoke-direct {p2, p1, p3}, Lcom/google/android/calendar/latency/PerformanceMark;-><init>(ILjava/lang/String;)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/latency/PerformanceSpan;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p2, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 205
    const-string v1, "PerformanceSpan"

    const-string v2, "[dev] mark end %s <- %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/google/android/calendar/latency/PerformanceMark;->mMark:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->report(Lcom/google/android/calendar/latency/PerformanceMark;)V

    .line 213
    sget-object v1, Lcom/google/android/calendar/latency/PerformanceSpan;->sPerformanceMetricCollector:Lcom/google/android/calendar/PerformanceMetricCollector;

    iget-object v2, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->spanTimer:Lcom/google/android/libraries/performance/primes/TimerEvent;

    iget-object v3, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/calendar/PerformanceMetricCollector;->logTime(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;)V

    move v1, v0

    .line 214
    :goto_1
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->timerEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->timerEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/TimerEvent;

    .line 216
    iget-object v2, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->timerEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 217
    sget-object v3, Lcom/google/android/calendar/latency/PerformanceSpan;->sPerformanceMetricCollector:Lcom/google/android/calendar/PerformanceMetricCollector;

    iget-object v4, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    .line 219
    invoke-static {v2}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {v3, v0, v2}, Lcom/google/android/calendar/PerformanceMetricCollector;->logTime(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->timerEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 214
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 207
    :cond_2
    const-string v1, "PerformanceSpan"

    const-string v2, "[dev] mark end %s <- %s from %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/google/android/calendar/latency/PerformanceMark;->mMark:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p2, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 223
    :cond_3
    monitor-exit p0

    return-object p2
.end method

.method public getStart()Lcom/google/android/calendar/latency/PerformanceMark;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mStart:Lcom/google/android/calendar/latency/PerformanceMark;

    return-object v0
.end method

.method protected isDevelopment()Z
    .locals 2

    .prologue
    .line 41
    const-string v0, "PerformanceSpan"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected isVerbose()Z
    .locals 2

    .prologue
    .line 36
    const-string v0, "PerformanceSpan"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized markAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;
    .locals 7

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/calendar/latency/PerformanceSpan;->sPerformanceMetricCollector:Lcom/google/android/calendar/PerformanceMetricCollector;

    iget-object v1, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->spanTimer:Lcom/google/android/libraries/performance/primes/TimerEvent;

    iget-object v2, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    .line 134
    invoke-static {p1}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/PerformanceMetricCollector;->logTime(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/calendar/latency/PerformanceSpan;->markAtNoTimer(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markAtNoTimer(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 139
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mMarks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 140
    if-nez p2, :cond_0

    .line 141
    new-instance p2, Lcom/google/android/calendar/latency/PerformanceMark;

    invoke-direct {p2, p1, p3}, Lcom/google/android/calendar/latency/PerformanceMark;-><init>(ILjava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mMarks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p0}, Lcom/google/android/calendar/latency/PerformanceSpan;->isDevelopment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p2, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 146
    const-string v0, "PerformanceSpan"

    const-string v1, "[dev] mark %s in %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/calendar/latency/PerformanceMark;->mMark:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 153
    :cond_1
    :goto_0
    return-object p2

    .line 148
    :cond_2
    const-string v0, "PerformanceSpan"

    const-string v1, "[dev] mark %s in %s from %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/calendar/latency/PerformanceMark;->mMark:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p2, Lcom/google/android/calendar/latency/PerformanceMark;->mTag:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public setAlsoLogAsEvent(Z)Lcom/google/android/calendar/latency/PerformanceSpan;
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mAlsoLogAsEvent:Z

    .line 71
    return-object p0
.end method

.method public declared-synchronized startSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;
    .locals 2

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->timerEvents:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/calendar/latency/PerformanceSpan;->sPerformanceMetricCollector:Lcom/google/android/calendar/PerformanceMetricCollector;

    invoke-virtual {v1}, Lcom/google/android/calendar/PerformanceMetricCollector;->initializeTimer()Lcom/google/android/libraries/performance/primes/TimerEvent;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/calendar/latency/PerformanceSpan;->markAtNoTimer(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;I)Lcom/google/android/calendar/latency/PerformanceMark;
    .locals 7

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->timerEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/TimerEvent;

    .line 332
    if-eqz v0, :cond_0

    .line 333
    sget-object v1, Lcom/google/android/calendar/latency/PerformanceSpan;->sPerformanceMetricCollector:Lcom/google/android/calendar/PerformanceMetricCollector;

    iget-object v2, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->mSpanName:Ljava/lang/String;

    .line 335
    invoke-static {p1}, Lcom/google/android/calendar/latency/PerformanceMark;->getMarkName(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-virtual {v1, v0, v2}, Lcom/google/android/calendar/PerformanceMetricCollector;->logTime(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/google/android/calendar/latency/PerformanceSpan;->timerEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->remove(I)V

    .line 338
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/calendar/latency/PerformanceSpan;->markAtNoTimer(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
