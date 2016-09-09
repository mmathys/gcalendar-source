.class Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$2;
.super Ljava/lang/Object;
.source "PrimesScheduledExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;->wrap(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$2;->this$0:Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$2;->this$0:Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;

    # getter for: Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;->failureCallback:Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;
    invoke-static {v1}, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;->access$000(Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;)Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 57
    throw v0
.end method
