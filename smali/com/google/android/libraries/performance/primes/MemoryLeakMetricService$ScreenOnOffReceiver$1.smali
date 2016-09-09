.class Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver$1;
.super Ljava/lang/Object;
.source "MemoryLeakMetricService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver$1;->this$1:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;

    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver$1;->this$1:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;

    iget-object v0, v0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->dumpScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$700(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver$1;->this$1:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 332
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver$1;->this$1:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;

    iget-object v0, v0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->lastSent:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$600(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Lcom/google/android/libraries/performance/primes/metriccapture/TimeCapture;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 333
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver$1;->this$1:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;

    iget-object v0, v0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver;->this$0:Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->leakWatcher:Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;->access$1100(Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService;)Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryLeakMetricService$ScreenOnOffReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/libraries/performance/primes/PrimesHprofFile;->getHprofFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->scheduleHeapDumpAndAnalysis(Ljava/io/File;)Z

    .line 335
    :cond_0
    return-void
.end method
