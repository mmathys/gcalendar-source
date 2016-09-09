.class final Lcom/google/android/calendar/PerformanceMetricCollector$2;
.super Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;
.source "PerformanceMetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/PerformanceMetricCollector;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/PrimesMemoryConfigurations;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method
