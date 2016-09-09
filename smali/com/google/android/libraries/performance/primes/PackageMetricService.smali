.class final Lcom/google/android/libraries/performance/primes/PackageMetricService;
.super Ljava/lang/Object;
.source "PackageMetricService.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToBackground;
.implements Lcom/google/android/libraries/performance/primes/PrimesStartupListener;


# instance fields
.field private final appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

.field private final application:Landroid/app/Application;

.field private final metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;)V
    .locals 4

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/PackageMetricService;->application:Landroid/app/Application;

    .line 86
    invoke-static {p1}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->getInstance(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PackageMetricService;->appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    .line 87
    new-instance v0, Lcom/google/android/libraries/performance/primes/MetricRecorder;

    .line 90
    invoke-static {p1}, Lcom/google/android/libraries/performance/primes/MetricStamper;->getSupplier(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/Supplier;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;->SAME_THREAD:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    const v3, 0x7fffffff

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/google/android/libraries/performance/primes/MetricRecorder;-><init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/Supplier;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;I)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PackageMetricService;->metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/performance/primes/PackageMetricService;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PackageMetricService;->application:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/performance/primes/PackageMetricService;)Lcom/google/android/libraries/performance/primes/MetricRecorder;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PackageMetricService;->metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/Application;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/google/android/libraries/performance/primes/PackageMetricService;->getSharedPreferences(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getSharedPreferences(Landroid/app/Application;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 75
    const-string v0, "PackageMetricService"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static readSendTime(Landroid/app/Application;)J
    .locals 4

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/android/libraries/performance/primes/PackageMetricService;->getSharedPreferences(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastSendTime"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static skipPackageMetric(Landroid/app/Application;)Z
    .locals 14

    .prologue
    const-wide/32 v12, 0x2932e00

    const-wide/16 v6, -0x1

    const/4 v10, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-static {}, Lcom/google/android/libraries/stitch/util/ThreadUtil;->ensureBackgroundThread()V

    .line 47
    invoke-static {p0}, Lcom/google/android/libraries/performance/primes/PackageMetricService;->readSendTime(Landroid/app/Application;)J

    move-result-wide v4

    .line 48
    invoke-static {}, Lcom/google/android/libraries/performance/primes/metriccapture/TimeCapture;->getTime()J

    move-result-wide v8

    .line 49
    cmp-long v0, v8, v4

    if-gez v0, :cond_1

    .line 51
    invoke-static {p0}, Lcom/google/android/libraries/performance/primes/PackageMetricService;->getSharedPreferences(Landroid/app/Application;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "lastSendTime"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 52
    :goto_0
    const-string v3, "PackageMetricService"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "PackageMetricService"

    const-string v3, "Failure storing timestamp persistently"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-wide v4, v6

    .line 58
    :cond_1
    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    add-long v6, v4, v12

    cmp-long v0, v8, v6

    if-lez v0, :cond_5

    :cond_2
    move v1, v2

    .line 66
    :cond_3
    :goto_1
    return v1

    :cond_4
    move v0, v2

    .line 51
    goto :goto_0

    .line 62
    :cond_5
    const-string v0, "PackageMetricService"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    add-long v2, v4, v12

    sub-long/2addr v2, v8

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 64
    const-string v4, "PackageMetricService"

    const-string v5, "SentRecently countdown: "

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static statsToProto(Landroid/content/pm/PackageStats;)Llogs/proto/wireless/performance/mobile/nano/PackageMetric;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;-><init>()V

    .line 98
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->cacheSize:Ljava/lang/Long;

    .line 99
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->codeSize:Ljava/lang/Long;

    .line 100
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->dataSize:Ljava/lang/Long;

    .line 101
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCacheSize:Ljava/lang/Long;

    .line 102
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCodeSize:Ljava/lang/Long;

    .line 103
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalDataSize:Ljava/lang/Long;

    .line 104
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalMediaSize:Ljava/lang/Long;

    .line 105
    iget-wide v2, p0, Landroid/content/pm/PackageStats;->externalObbSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalObbSize:Ljava/lang/Long;

    .line 106
    return-object v0
.end method


# virtual methods
.method public onAppToBackground()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PackageMetricService;->appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->unregister(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/PackageMetricService;->sendInBackground()Ljava/util/concurrent/Future;

    .line 121
    return-void
.end method

.method public onFirstActivityCreated()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onPrimesInitialize()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PackageMetricService;->appLifecycleMonitor:Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->register(Lcom/google/android/libraries/performance/primes/AppLifecycleListener;)V

    .line 112
    return-void
.end method

.method sendInBackground()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->getInstance()Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->get()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/performance/primes/PackageMetricService$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/performance/primes/PackageMetricService$1;-><init>(Lcom/google/android/libraries/performance/primes/PackageMetricService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
