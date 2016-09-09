.class Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;
.super Ljava/lang/Object;
.source "PrimesApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/PrimesApiImpl;-><init>(Landroid/app/Application;Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Lcom/google/android/libraries/performance/primes/PrimesConfigurations;Lcom/google/android/libraries/performance/primes/ServiceFlags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/PrimesApiImpl;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/PrimesApiImpl;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    # getter for: Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->serviceFlags:Lcom/google/android/libraries/performance/primes/ServiceFlags;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->access$100(Lcom/google/android/libraries/performance/primes/PrimesApiImpl;)Lcom/google/android/libraries/performance/primes/ServiceFlags;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    # getter for: Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;
    invoke-static {v1}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->access$000(Lcom/google/android/libraries/performance/primes/PrimesApiImpl;)Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->updateFlagsAndRegisterReceiver(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    iget-object v1, v1, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->jankConfigurationsSupplier:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;

    invoke-virtual {v1}, Lcom/google/android/libraries/performance/primes/PrimesJankConfigurationsSupplier;->get()Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->jankConfigs:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;

    .line 86
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    iget-object v0, v0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->jankConfigs:Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/PrimesJankConfigurations;->getSampleRatePerSecond()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkArgument(Z)V

    .line 88
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    # invokes: Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->sendStartupMetrics()V
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->access$200(Lcom/google/android/libraries/performance/primes/PrimesApiImpl;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    # getter for: Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->metricTransmitter:Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->access$300(Lcom/google/android/libraries/performance/primes/PrimesApiImpl;)Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    # getter for: Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;
    invoke-static {v1}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->access$000(Lcom/google/android/libraries/performance/primes/PrimesApiImpl;)Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    .line 90
    # getter for: Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;
    invoke-static {v2}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->access$000(Lcom/google/android/libraries/performance/primes/PrimesApiImpl;)Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;->getInstance(Landroid/app/Application;)Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;

    move-result-object v2

    .line 89
    invoke-static {v0, v1, v2}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->getService(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/AppLifecycleMonitor;)Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->startMonitoring()V

    .line 92
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesApiImpl$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesApiImpl;

    # getter for: Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->applicationToInstrument:Landroid/app/Application;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/PrimesApiImpl;->access$000(Lcom/google/android/libraries/performance/primes/PrimesApiImpl;)Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/PrimesHprofFile;->deleteHeapDumpIfExists(Landroid/content/Context;)V

    .line 93
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
