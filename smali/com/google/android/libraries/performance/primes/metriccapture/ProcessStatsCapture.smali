.class public final Lcom/google/android/libraries/performance/primes/metriccapture/ProcessStatsCapture;
.super Ljava/lang/Object;
.source "ProcessStatsCapture.java"


# direct methods
.method public static getAndroidProcessStats(Landroid/content/Context;)Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/libraries/performance/primes/metriccapture/ProcessStatsCapture;->getAndroidProcessStats(Ljava/lang/String;Landroid/content/Context;)Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

    move-result-object v0

    return-object v0
.end method

.method static getAndroidProcessStats(Ljava/lang/String;Landroid/content/Context;)Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;-><init>()V

    .line 27
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;->processElapsedTimeMs:Ljava/lang/Long;

    .line 28
    invoke-static {p1}, Lcom/google/android/libraries/performance/primes/metriccapture/ProcessStats;->isAppInForeground(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;->isInForeground:Ljava/lang/Boolean;

    .line 29
    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;->threadCount:Ljava/lang/Integer;

    .line 30
    if-eqz p0, :cond_0

    .line 31
    iput-object p0, v0, Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;->processName:Ljava/lang/String;

    .line 33
    :cond_0
    return-object v0
.end method
