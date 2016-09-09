.class final Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$ExecutorHolder;
.super Ljava/lang/Object;
.source "PrimesExecutorSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExecutorHolder"
.end annotation


# static fields
.field private static final primesExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 59
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x2

    new-instance v3, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$PrimesThreadFactory;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$PrimesThreadFactory;-><init>(Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$1;)V

    .line 61
    # getter for: Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->rejectedExecutionHandler:Ljava/util/concurrent/RejectedExecutionHandler;
    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->access$200()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    # getter for: Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->failureCallback:Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;
    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->access$300()Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;)V

    sput-object v0, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$ExecutorHolder;->primesExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 59
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$ExecutorHolder;->primesExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
