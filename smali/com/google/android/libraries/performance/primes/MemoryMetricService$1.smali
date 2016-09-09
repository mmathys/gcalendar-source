.class Lcom/google/android/libraries/performance/primes/MemoryMetricService$1;
.super Ljava/lang/Object;
.source "MemoryMetricService.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/MemoryMetricMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/MemoryMetricService;->startMonitoring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricService;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/MemoryMetricService;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$1;->this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MemoryMetricService$1;->this$0:Lcom/google/android/libraries/performance/primes/MemoryMetricService;

    invoke-virtual {v0, v1, p1, v1}, Lcom/google/android/libraries/performance/primes/MemoryMetricService;->recordEvent(Ljava/lang/String;ILlogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    .line 64
    return-void
.end method
