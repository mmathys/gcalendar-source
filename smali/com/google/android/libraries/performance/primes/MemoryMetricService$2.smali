.class Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;
.super Ljava/lang/Object;
.source "MemoryMetricService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/MemoryMetricService;->recordEvent(Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricService;

.field final synthetic val$customEventName:Ljava/lang/String;

.field final synthetic val$eventCode:I

.field final synthetic val$metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/MemoryMetricService;Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;->this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricService;

    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;->val$customEventName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;->val$eventCode:I

    iput-object p4, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;->val$metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;->this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricService;

    # getter for: Lcom/google/android/libraries/performance/primes/MemoryMetricService;->recordMemoryPerProcess:Z
    invoke-static {v0}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->access$000(Lcom/google/android/libraries/performance/primes/MemoryMetricService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;->this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricService;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;->val$customEventName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;->val$eventCode:I

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;->val$metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    # invokes: Lcom/google/android/libraries/performance/primes/MemoryMetricService;->recordMemoryPerProcess(Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->access$100(Lcom/google/android/libraries/performance/primes/MemoryMetricService;Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;->this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricService;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;->val$customEventName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;->val$eventCode:I

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$2;->val$metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    # invokes: Lcom/google/android/libraries/performance/primes/MemoryMetricService;->recordMemory(Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->access$200(Lcom/google/android/libraries/performance/primes/MemoryMetricService;Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    goto :goto_0
.end method
