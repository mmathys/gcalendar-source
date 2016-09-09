.class Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;
.super Ljava/lang/Object;
.source "MemoryMetricMonitor.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/AppLifecycleListener$OnAppToForeground;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;->this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppToForeground()V
    .locals 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;->this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->callback:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->access$000(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;)Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;->onEvent(I)V

    .line 81
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;->this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;

    # invokes: Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->cancelFutureTasksIfAny()V
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->access$100(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;->this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;->this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;

    .line 83
    # getter for: Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v1}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->access$300(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2$1;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2$1;-><init>(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;)V

    const-wide/16 v4, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 82
    # setter for: Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->futureMemoryForegroundTask:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v0, v1}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->access$402(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 92
    return-void
.end method
