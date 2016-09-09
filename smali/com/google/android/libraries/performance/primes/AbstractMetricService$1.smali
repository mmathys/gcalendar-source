.class Lcom/google/android/libraries/performance/primes/AbstractMetricService$1;
.super Ljava/lang/Object;
.source "AbstractMetricService.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/ServiceFlagsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/AbstractMetricService;-><init>(Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;Landroid/app/Application;Lcom/google/android/libraries/performance/primes/MetricRecorder$RunIn;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/AbstractMetricService;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/AbstractMetricService;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/AbstractMetricService$1;->this$0:Lcom/google/android/libraries/performance/primes/AbstractMetricService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/android/libraries/performance/primes/ServiceFlags;)V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/ServiceFlags;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AbstractMetricService$1;->this$0:Lcom/google/android/libraries/performance/primes/AbstractMetricService;

    const/4 v1, 0x1

    # setter for: Lcom/google/android/libraries/performance/primes/AbstractMetricService;->shutdown:Z
    invoke-static {v0, v1}, Lcom/google/android/libraries/performance/primes/AbstractMetricService;->access$002(Lcom/google/android/libraries/performance/primes/AbstractMetricService;Z)Z

    .line 38
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/AbstractMetricService$1;->this$0:Lcom/google/android/libraries/performance/primes/AbstractMetricService;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/AbstractMetricService;->shutdownService()V

    .line 40
    :cond_0
    return-void
.end method
