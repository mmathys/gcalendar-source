.class Lcom/google/android/libraries/performance/primes/MetricRecorder;
.super Ljava/lang/Object;
.source "MetricRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;
    }
.end annotation


# instance fields
.field private final instrumentationSampling:Lcom/google/android/libraries/performance/primes/sampling/PrimesSampling;

.field private final metricStamperSupplier:Lcom/google/android/libraries/performance/primes/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/performance/primes/Supplier",
            "<",
            "Lcom/google/android/libraries/performance/primes/MetricStamper;",
            ">;"
        }
    .end annotation
.end field

.field private final metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

.field private final whereToRun:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/Supplier;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;",
            "Lcom/google/android/libraries/performance/primes/Supplier",
            "<",
            "Lcom/google/android/libraries/performance/primes/MetricStamper;",
            ">;",
            "Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder;->metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    .line 26
    invoke-static {p2}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/Supplier;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder;->metricStamperSupplier:Lcom/google/android/libraries/performance/primes/Supplier;

    .line 27
    iput-object p3, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder;->whereToRun:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    .line 28
    new-instance v0, Lcom/google/android/libraries/performance/primes/sampling/PrimesSampling;

    invoke-direct {v0, p4}, Lcom/google/android/libraries/performance/primes/sampling/PrimesSampling;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder;->instrumentationSampling:Lcom/google/android/libraries/performance/primes/sampling/PrimesSampling;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/performance/primes/MetricRecorder;Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/performance/primes/MetricRecorder;->recordInternal(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    return-void
.end method

.method private record(Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;->SAME_THREAD:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    if-ne p1, v0, :cond_0

    .line 52
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/libraries/performance/primes/MetricRecorder;->recordInternal(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/libraries/performance/primes/MetricRecorder;->recordInBackground(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    goto :goto_0
.end method

.method private recordInBackground(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->getInstance()Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->get()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/performance/primes/MetricRecorder$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/libraries/performance/primes/MetricRecorder$1;-><init>(Lcom/google/android/libraries/performance/primes/MetricRecorder;Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 66
    return-void
.end method

.method private recordInternal(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 4

    .prologue
    .line 70
    if-nez p2, :cond_1

    .line 72
    const-string v1, "MetricRecorder"

    const-string v2, "metric is null, skipping recorded metric for event: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_1
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder;->metricStamperSupplier:Lcom/google/android/libraries/performance/primes/Supplier;

    invoke-interface {v0}, Lcom/google/android/libraries/performance/primes/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/MetricStamper;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/performance/primes/MetricStamper;->stamp(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    move-result-object v0

    .line 78
    if-eqz p1, :cond_2

    .line 79
    iput-object p1, v0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->customEventName:Ljava/lang/String;

    .line 81
    :cond_2
    if-eqz p3, :cond_3

    .line 82
    iput-object p3, v0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder;->metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;->send(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder;->instrumentationSampling:Lcom/google/android/libraries/performance/primes/sampling/PrimesSampling;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/sampling/PrimesSampling;->incrementSampleCount()V

    goto :goto_1
.end method


# virtual methods
.method record(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder;->whereToRun:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/libraries/performance/primes/MetricRecorder;->record(Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    .line 47
    return-void
.end method

.method record(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/android/libraries/performance/primes/MetricRecorder;->record(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    .line 37
    return-void
.end method

.method shouldRecord()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder;->instrumentationSampling:Lcom/google/android/libraries/performance/primes/sampling/PrimesSampling;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/sampling/PrimesSampling;->isSampleRateExceeded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
