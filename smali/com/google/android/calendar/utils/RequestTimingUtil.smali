.class public Lcom/google/android/calendar/utils/RequestTimingUtil;
.super Ljava/lang/Object;
.source "RequestTimingUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mRequestDurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestTimings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/calendar/utils/RequestTimingUtil;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/utils/RequestTimingUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestDurations:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestTimings:Ljava/util/Map;

    return-void
.end method

.method private getDurationAverage()J
    .locals 5

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    .line 78
    iget-object v2, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestDurations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 79
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestDurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    div-long v0, v2, v0

    return-wide v0
.end method

.method private getDurationMedian()J
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestDurations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestDurations:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestDurations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getDurationStandardDeviation()J
    .locals 10

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/android/calendar/utils/RequestTimingUtil;->getDurationAverage()J

    move-result-wide v0

    long-to-double v4, v0

    .line 86
    const-wide/16 v0, 0x0

    .line 87
    iget-object v2, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestDurations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 88
    long-to-double v8, v0

    sub-double v8, v4, v8

    long-to-double v0, v0

    sub-double v0, v4, v0

    mul-double/2addr v0, v8

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 89
    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestDurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public logStatistics(Landroid/content/Context;II)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 53
    iget-object v0, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestDurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/google/android/calendar/utils/RequestTimingUtil;->getDurationMedian()J

    move-result-wide v4

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    .line 60
    const/4 v7, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/google/android/calendar/utils/RequestTimingUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/google/android/calendar/utils/RequestTimingUtil;->TAG:Ljava/lang/String;

    const-string v1, "Request statistics (%s - %s): %d requests, median: %dms, avg: %dms, std dev: %dms"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const/4 v3, 0x1

    aput-object v6, v2, v3

    const/4 v3, 0x2

    iget-object v6, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestDurations:Ljava/util/List;

    .line 65
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 66
    invoke-direct {p0}, Lcom/google/android/calendar/utils/RequestTimingUtil;->getDurationAverage()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/google/android/calendar/utils/RequestTimingUtil;->getDurationStandardDeviation()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 63
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestDurations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestTimings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 72
    return-void
.end method

.method public startTiming(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestTimings:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public stopTiming(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestTimings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 40
    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 42
    iget-object v2, p0, Lcom/google/android/calendar/utils/RequestTimingUtil;->mRequestDurations:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    return-void
.end method
