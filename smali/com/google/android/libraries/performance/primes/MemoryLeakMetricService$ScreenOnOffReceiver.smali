.class final Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MemoryLeakMetricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScreenOnOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 320
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->dumpScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$700(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    # invokes: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->cancelDumpTaskIfAny()V
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$900(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    # invokes: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->cancelDumpTaskIfAny()V
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$900(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)V

    .line 326
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->executorServiceSupplier:Lcom/google/android/libraries/performance/primes/Supplier;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$1200(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Lcom/google/android/libraries/performance/primes/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/performance/primes/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver$1;-><init>(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;Landroid/content/Context;)V

    const-wide/16 v4, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 327
    invoke-interface {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 326
    # setter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->dumpFutureTask:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1, v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$1002(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
