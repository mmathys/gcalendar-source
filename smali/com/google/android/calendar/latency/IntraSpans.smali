.class public Lcom/google/android/calendar/latency/IntraSpans;
.super Lcom/google/android/calendar/latency/PerformanceSpan;
.source "IntraSpans.java"


# instance fields
.field private mOneShots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/calendar/latency/PerformanceSpan;-><init>(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/calendar/latency/IntraSpans;->mMarks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/latency/IntraSpans;->mOneShots:Ljava/util/Map;

    .line 22
    :cond_0
    return-void
.end method

.method private putOneShot(II)Z
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    iget-object v1, p0, Lcom/google/android/calendar/latency/IntraSpans;->mMarks:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/google/android/calendar/latency/IntraSpans;->mOneShots:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/google/android/calendar/latency/IntraSpans;->mOneShots:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const/4 v0, 0x1

    .line 32
    :cond_0
    return v0
.end method


# virtual methods
.method public declared-synchronized clearAt(II)V
    .locals 2

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/android/calendar/latency/PerformanceSpan;->clearAt(II)V

    .line 50
    iget-object v0, p0, Lcom/google/android/calendar/latency/IntraSpans;->mMarks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/calendar/latency/IntraSpans;->mOneShots:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasOneShot(I)Z
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/calendar/latency/IntraSpans;->mOneShots:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/latency/IntraSpans;->mOneShots:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized startSubSpanAt(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/google/android/calendar/latency/IntraSpans;->putOneShot(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/calendar/latency/IntraSpans;->startSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;)Lcom/google/android/calendar/latency/PerformanceMark;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p3

    .line 64
    :cond_0
    monitor-exit p0

    return-object p3

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSubSpanAt(IILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;I)Lcom/google/android/calendar/latency/PerformanceMark;
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/google/android/calendar/latency/IntraSpans;->putOneShot(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/google/android/calendar/latency/IntraSpans;->stopSubSpanAt(ILcom/google/android/calendar/latency/PerformanceMark;Ljava/lang/String;I)Lcom/google/android/calendar/latency/PerformanceMark;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p3

    .line 72
    :cond_0
    monitor-exit p0

    return-object p3

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
