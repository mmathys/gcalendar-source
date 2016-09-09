.class public final Lcom/google/android/libraries/performance/primes/metriccapture/TimeCapture;
.super Ljava/lang/Object;
.source "TimeCapture.java"


# direct methods
.method public static getTime()J
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
