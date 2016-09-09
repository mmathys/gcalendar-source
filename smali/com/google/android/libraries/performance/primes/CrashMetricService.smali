.class final Lcom/google/android/libraries/performance/primes/CrashMetricService;
.super Lcom/google/android/libraries/performance/primes/AbstractMetricService;
.source "CrashMetricService.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/PrimesStartupListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;
    }
.end annotation


# static fields
.field private static volatile service:Lcom/google/android/libraries/performance/primes/CrashMetricService;


# instance fields
.field private final estimatedCount:I

.field private final isPrimesExceptionHandlerDefaultHandler:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final shouldSendStartupMetric:Z


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;F)V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 50
    sget-object v0, Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;->SAME_THREAD:Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/performance/primes/AbstractMetricService;-><init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;)V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService;->isPrimesExceptionHandlerDefaultHandler:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    cmpg-float v0, p3, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "StartupSamplePercentage should be a floating number > 0 and <= 100."

    invoke-static {v0, v1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 57
    new-instance v0, Lcom/google/android/libraries/performance/primes/sampling/ProbabilitySampler;

    div-float v1, p3, v2

    invoke-direct {v0, v1}, Lcom/google/android/libraries/performance/primes/sampling/ProbabilitySampler;-><init>(F)V

    .line 58
    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/sampling/ProbabilitySampler;->isSampleAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService;->shouldSendStartupMetric:Z

    .line 65
    div-float v0, v2, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService;->estimatedCount:I

    .line 66
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getService(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;)Lcom/google/android/libraries/performance/primes/CrashMetricService;
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/libraries/performance/primes/CrashMetricService;->service:Lcom/google/android/libraries/performance/primes/CrashMetricService;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lcom/google/android/libraries/performance/primes/CrashMetricService;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/performance/primes/CrashMetricService;->service:Lcom/google/android/libraries/performance/primes/CrashMetricService;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/google/android/libraries/performance/primes/CrashMetricService;

    .line 32
    invoke-virtual {p2}, Lcom/google/android/libraries/performance/primes/PrimesCrashConfigurations;->getStartupSamplePercentage()F

    move-result v2

    invoke-direct {v0, p0, p1, v2}, Lcom/google/android/libraries/performance/primes/CrashMetricService;-><init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;F)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/CrashMetricService;->service:Lcom/google/android/libraries/performance/primes/CrashMetricService;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lcom/google/android/libraries/performance/primes/CrashMetricService;->service:Lcom/google/android/libraries/performance/primes/CrashMetricService;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleEvent(I)V
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/CrashMetricService;->shouldRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService;->shouldSendStartupMetric:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->getInstance()Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->get()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/performance/primes/CrashMetricService$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/performance/primes/CrashMetricService$1;-><init>(Lcom/google/android/libraries/performance/primes/CrashMetricService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "CrashMetricService"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x37

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Crash startup metric for event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is dropped."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onFirstActivityCreated()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/libraries/performance/primes/CrashMetricService;->handleEvent(I)V

    .line 139
    return-void
.end method

.method public onPrimesInitialize()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/libraries/performance/primes/CrashMetricService;->handleEvent(I)V

    .line 134
    return-void
.end method

.method recordStartupEvent(I)V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;-><init>()V

    .line 157
    new-instance v1, Llogs/proto/wireless/performance/mobile/nano/PrimesStats;

    invoke-direct {v1}, Llogs/proto/wireless/performance/mobile/nano/PrimesStats;-><init>()V

    iput-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->primesStats:Llogs/proto/wireless/performance/mobile/nano/PrimesStats;

    .line 158
    iget-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->primesStats:Llogs/proto/wireless/performance/mobile/nano/PrimesStats;

    iget v2, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService;->estimatedCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Llogs/proto/wireless/performance/mobile/nano/PrimesStats;->estimatedCount:Ljava/lang/Integer;

    .line 159
    iget-object v1, v0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->primesStats:Llogs/proto/wireless/performance/mobile/nano/PrimesStats;

    iput p1, v1, Llogs/proto/wireless/performance/mobile/nano/PrimesStats;->primesEvent:I

    .line 160
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/performance/primes/CrashMetricService;->recordSystemHealthMetric(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V

    .line 161
    return-void
.end method

.method protected shutdownService()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/CrashMetricService;->isPrimesExceptionHandlerDefaultHandler:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;

    .line 169
    # getter for: Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;->handlerToWrap:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;->access$000(Lcom/google/android/libraries/performance/primes/CrashMetricService$PrimesUncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 171
    :cond_0
    return-void
.end method
