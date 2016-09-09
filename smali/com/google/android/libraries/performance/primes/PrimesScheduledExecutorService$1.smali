.class Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$1;
.super Ljava/lang/Object;
.source "PrimesScheduledExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$1;->this$0:Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;

    # getter for: Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;->failureCallback:Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;
    invoke-static {v1}, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;->access$000(Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;)Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 43
    throw v0
.end method
