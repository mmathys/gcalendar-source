.class Lcom/google/android/libraries/performance/primes/MetricRecorder$1;
.super Ljava/lang/Object;
.source "MetricRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/MetricRecorder;->recordInBackground(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/MetricRecorder;

.field final synthetic val$customEventName:Ljava/lang/String;

.field final synthetic val$message:Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

.field final synthetic val$metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/MetricRecorder;Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder$1;->this$0:Lcom/google/android/libraries/performance/primes/MetricRecorder;

    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder$1;->val$customEventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder$1;->val$message:Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    iput-object p4, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder$1;->val$metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder$1;->this$0:Lcom/google/android/libraries/performance/primes/MetricRecorder;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder$1;->val$customEventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder$1;->val$message:Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/MetricRecorder$1;->val$metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    # invokes: Lcom/google/android/libraries/performance/primes/MetricRecorder;->recordInternal(Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/performance/primes/MetricRecorder;->access$000(Lcom/google/android/libraries/performance/primes/MetricRecorder;Ljava/lang/String;Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;Llogs/proto/wireless/performance/mobile/nano/MetricExtension;)V

    .line 64
    return-void
.end method
