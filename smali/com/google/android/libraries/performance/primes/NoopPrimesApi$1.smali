.class Lcom/google/android/libraries/performance/primes/NoopPrimesApi$1;
.super Ljava/lang/Object;
.source "NoopPrimesApi.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/transmitter/MetricTransmitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/NoopPrimesApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/NoopPrimesApi;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/NoopPrimesApi;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/NoopPrimesApi$1;->this$0:Lcom/google/android/libraries/performance/primes/NoopPrimesApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V
    .locals 0

    .prologue
    .line 17
    return-void
.end method
