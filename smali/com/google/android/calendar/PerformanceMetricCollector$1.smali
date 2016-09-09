.class final Lcom/google/android/calendar/PerformanceMetricCollector$1;
.super Lcom/google/android/libraries/performance/primes/transmitter/impl/HashedNamesTransmitter;
.source "PerformanceMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/PerformanceMetricCollector;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/calendar/PerformanceMetricCollector$1;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/transmitter/impl/HashedNamesTransmitter;-><init>()V

    return-void
.end method


# virtual methods
.method protected sendHashedEvent(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V
    .locals 4

    .prologue
    .line 85
    # getter for: Lcom/google/android/calendar/PerformanceMetricCollector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/PerformanceMetricCollector;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Memory metrics "

    invoke-virtual {p1}, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    iget-object v0, p0, Lcom/google/android/calendar/PerformanceMetricCollector$1;->val$appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/calendar/loggers/PrimesManager;->getInstance(Landroid/content/Context;)Lcom/google/android/calendar/loggers/PrimesManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/loggers/PrimesManager;->logSystemHealthMetric(Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;)V

    .line 87
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
