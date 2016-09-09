.class Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2$1;
.super Ljava/lang/Object;
.source "MemoryMetricMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;->onAppToForeground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2$1;->this$1:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2$1;->this$1:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;

    iget-object v0, v0, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$2;->this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->callback:Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;->access$000(Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor;)Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;->onEvent(I)V

    .line 88
    return-void
.end method
