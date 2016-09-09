.class final Lcom/google/android/libraries/performance/primes/PrimesApiImpl;
.super Ljava/lang/Object;
.source "PrimesApiImpl.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/PrimesApi;


# instance fields
.field private final applicationToInstrument:Landroid/app/Application;

.field final crashConfigs:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

.field volatile jankConfigs:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;

.field final jankConfigurationsSupplier:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;

.field final memoryConfigs:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

.field private final metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

.field final networkConfigs:Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;

.field final packageConfigs:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

.field private final serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;

.field final timerConfigs:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/google/android/libraries/performance/primes/R$string;->primes_marker:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/PrimesConfigurations;Lcom/google/android/libraries/performance/primes/ServiceFlags;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p3}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p3, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->memoryConfigurations:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;->getSampleRatePerSecond()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkArgument(Z)V

    .line 57
    iget-object v0, p3, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->timerConfigurations:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;->getSampleRatePerSecond()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkArgument(Z)V

    .line 58
    iget-object v0, p3, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->crashConfigurations:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;->getSampleRatePerSecond()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkArgument(Z)V

    .line 59
    iget-object v0, p3, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->networkConfigurations:Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;->getSampleRatePerSecond()I

    move-result v0

    if-lez v0, :cond_4

    :goto_3
    invoke-static {v1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkArgument(Z)V

    .line 61
    invoke-static {p2}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    .line 62
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;

    .line 63
    iget-object v0, p3, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->memoryConfigurations:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->memoryConfigs:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

    .line 64
    iget-object v0, p3, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->timerConfigurations:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->timerConfigs:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    .line 65
    iget-object v0, p3, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->crashConfigurations:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->crashConfigs:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

    .line 66
    iget-object v0, p3, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->networkConfigurations:Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->networkConfigs:Lcom/google/android/libraries/performance/primes/PrimesNetworkConfigurations;

    .line 67
    iget-object v0, p3, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->packageConfigurations:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->packageConfigs:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

    .line 68
    iget-object v0, p3, Lcom/google/android/libraries/performance/primes/PrimesConfigurations;->jankConfigurationsSupplier:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->jankConfigurationsSupplier:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;

    .line 70
    invoke-static {p4}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/ServiceFlags;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;

    .line 72
    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->isPrimesSupported()Z

    move-result v0

    if-nez v0, :cond_5

    .line 96
    :cond_0
    :goto_4
    return-void

    :cond_1
    move v0, v2

    .line 56
    goto :goto_0

    :cond_2
    move v0, v2

    .line 57
    goto :goto_1

    :cond_3
    move v0, v2

    .line 58
    goto :goto_2

    :cond_4
    move v1, v2

    .line 59
    goto :goto_3

    .line 75
    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;

    invoke-virtual {p4, v0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->onPrimesInitialized(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p4}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->getInstance()Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->get()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;-><init>(Lcom/google/android/libraries/performance/primes/PrimesApiImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/google/android/libraries/performance/primes/PrimesApiImpl;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/performance/primes/PrimesApiImpl;)Lcom/google/android/libraries/performance/primes/ServiceFlags;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/performance/primes/PrimesApiImpl;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->sendStartupMetrics()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/libraries/performance/primes/PrimesApiImpl;)Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    return-object v0
.end method

.method private static isPrimesSupported()Z
    .locals 2

    .prologue
    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 414
    const-string v0, "Primes"

    const-string v1, "Primes calls will be ignored. API\'s < 16 are not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x0

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static newInstance(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/PrimesConfigurations;)Lcom/google/android/libraries/performance/primes/PrimesApiImpl;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    invoke-static {}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->getInstance()Lcom/google/android/libraries/performance/primes/ServiceFlags;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;-><init>(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/PrimesConfigurations;Lcom/google/android/libraries/performance/primes/ServiceFlags;)V

    return-object v0
.end method

.method static newInstance(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;Lcom/google/android/libraries/performance/primes/PrimesConfigurations;)Lcom/google/android/libraries/performance/primes/PrimesApiImpl;
    .locals 6

    .prologue
    .line 105
    new-instance v1, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$2;

    invoke-direct {v1}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$2;-><init>()V

    .line 113
    new-instance v2, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$3;

    invoke-direct {v2}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$3;-><init>()V

    .line 121
    const/16 v3, 0x3e8

    const-wide/16 v4, 0x64

    move-object v0, p1

    .line 122
    invoke-static/range {v0 .. v5}, Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory;->scheduleBackgroundInitialization(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterProvider;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$ProviderFailureCallback;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitterFactory$QueueOverflowCallback;IJ)Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    invoke-static {}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->getInstance()Lcom/google/android/libraries/performance/primes/ServiceFlags;

    move-result-object v2

    invoke-direct {v1, p0, v0, p2, v2}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;-><init>(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/PrimesConfigurations;Lcom/google/android/libraries/performance/primes/ServiceFlags;)V

    return-object v1
.end method

.method private sendStartupMetrics()V
    .locals 6

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->checkPreconditions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->crashConfigs:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

    invoke-virtual {v1}, Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->crashConfigs:Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;

    .line 139
    invoke-static {v1, v2, v3}, Lcom/google/android/libraries/performance/primes/CrashMetricService;->getService(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;)Lcom/google/android/libraries/performance/primes/CrashMetricService;

    move-result-object v1

    .line 138
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->packageConfigs:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

    invoke-virtual {v1}, Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;

    invoke-static {v1}, Lcom/google/android/libraries/performance/primes/PackageMetricService;->skipPackageMetric(Landroid/app/Application;)Z

    move-result v1

    .line 145
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->packageConfigs:Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;

    invoke-virtual {v2}, Lcom/google/android/libraries/performance/primes/PrimesPackageConfigurations;->isManualCapture()Z

    move-result v2

    .line 146
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 147
    new-instance v1, Lcom/google/android/libraries/performance/primes/PackageMetricService;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    invoke-direct {v1, v2, v3}, Lcom/google/android/libraries/performance/primes/PackageMetricService;-><init>(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const-string v1, "Primes"

    const-string v2, "Package metric: registered for startup notifications"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;-><init>(Ljava/util/List;)V

    .line 160
    invoke-virtual {v1}, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;->primesInitialized()V

    .line 161
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/performance/primes/PrimesStartupNotification;->initAppMonitoring(Landroid/app/Application;)V

    goto :goto_0

    .line 141
    :cond_2
    const-string v1, "Primes"

    const-string v2, "Crash metric disabled - not registering for startup notifications."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 150
    :cond_3
    const-string v3, "Primes"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x4d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Package metric: not registering on startup - manual / recently: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " / "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 154
    :cond_4
    const-string v1, "Primes"

    const-string v2, "Package metric disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public checkPreconditions()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->isPrimesSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startMemoryMonitor()V
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->checkPreconditions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->memoryConfigs:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->memoryConfigs:Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->getService(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricConfigurations;)Lcom/google/android/libraries/performance/primes/MemoryMetricService;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->startMonitoring()V

    goto :goto_0
.end method

.method public startTimer()Lcom/google/android/libraries/performance/primes/TimerEvent;
    .locals 3

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->checkPreconditions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->timerConfigs:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    :cond_0
    sget-object v0, Lcom/google/android/libraries/performance/primes/TimerEvent;->EMPTY_TIMER:Lcom/google/android/libraries/performance/primes/TimerEvent;

    .line 307
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->timerConfigs:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/performance/primes/TimerMetricService;->getService(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricConfigurations;)Lcom/google/android/libraries/performance/primes/TimerMetricService;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/TimerMetricService;->start()Lcom/google/android/libraries/performance/primes/TimerEvent;

    move-result-object v0

    goto :goto_0
.end method

.method public stopTimer(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->stopTimer(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    .line 321
    return-void
.end method

.method public stopTimer(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 3

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->checkPreconditions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->timerConfigs:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    .line 326
    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/libraries/performance/primes/TimerEvent;->EMPTY_TIMER:Lcom/google/android/libraries/performance/primes/TimerEvent;

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->timerConfigs:Lcom/google/android/libraries/performance/primes/PrimesTimerConfigurations;

    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/performance/primes/TimerMetricService;->getService(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricConfigurations;)Lcom/google/android/libraries/performance/primes/TimerMetricService;

    move-result-object v0

    .line 333
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/performance/primes/TimerMetricService;->stop(Lcom/google/android/libraries/performance/primes/TimerEvent;Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    goto :goto_0
.end method
