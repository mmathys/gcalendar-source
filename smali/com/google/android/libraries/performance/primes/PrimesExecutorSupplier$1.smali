.class final Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$1;
.super Ljava/lang/Object;
.source "PrimesExecutorSupplier.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 25
    const-string v0, "PrimesExecutor"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "PrimesExecutor"

    const-string v1, "Background task failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :cond_0
    return-void
.end method
