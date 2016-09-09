.class abstract Lcom/google/android/libraries/performance/primes/AbstractMetricService;
.super Ljava/lang/Object;
.source "AbstractMetricService.java"


# instance fields
.field private final application:Landroid/app/Application;

.field private final metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;

.field private volatile shutdown:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;)V
    .locals 1

    .prologue
    .line 21
    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/libraries/performance/primes/AbstractMetricService;-><init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;I)V

    .line 22
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;I)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p2}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/AbstractMetricService;->application:Landroid/app/Application;

    .line 30
    new-instance v0, Lcom/google/android/libraries/performance/primes/MetricRecorder;

    invoke-static {p2}, Lcom/google/android/libraries/performance/primes/MetricStamper;->getSupplier(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/Supplier;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, p4}, Lcom/google/android/libraries/performance/primes/MetricRecorder;-><init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/Supplier;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;I)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/AbstractMetricService;->metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;

    .line 33
    invoke-static {}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->getInstance()Lcom/google/android/libraries/performance/primes/ServiceFlags;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/performance/primes/AbstractMetricService$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/performance/primes/AbstractMetricService$1;-><init>(Lcom/google/android/libraries/performance/primes/AbstractMetricService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->registerChangeListener(Lcom/google/android/libraries/performance/primes/ServiceFlagsChangeListener;)V

    .line 42
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/libraries/performance/primes/AbstractMetricService;Z)Z
    .locals 0

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/google/android/libraries/performance/primes/AbstractMetricService;->shutdown:Z

    return p1
.end method


# virtual methods
.method protected final getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AbstractMetricService;->application:Landroid/app/Application;

    return-object v0
.end method

.method protected isShutdown()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/AbstractMetricService;->shutdown:Z

    return v0
.end method

.method protected final recordSystemHealthMetric(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->getInstance()Lcom/google/android/libraries/performance/primes/ServiceFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AbstractMetricService;->metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/performance/primes/MetricRecorder;->record(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    goto :goto_0
.end method

.method protected final recordSystemHealthMetric(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/android/libraries/performance/primes/AbstractMetricService;->recordSystemHealthMetric(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    .line 66
    return-void
.end method

.method protected final shouldRecord()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AbstractMetricService;->metricRecorder:Lcom/google/android/libraries/performance/primes/MetricRecorder;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/MetricRecorder;->shouldRecord()Z

    move-result v0

    return v0
.end method

.method abstract shutdownService()V
.end method
