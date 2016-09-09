.class public final Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;
.super Ljava/lang/Object;
.source "PrimesExecutorSupplier.java"

# interfaces
.implements Lcom/google/android/libraries/performance/primes/Supplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$PrimesThreadFactory;,
        Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$ExecutorHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/performance/primes/Supplier",
        "<",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        ">;"
    }
.end annotation


# static fields
.field private static final failureCallback:Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;

.field private static final instance:Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;

.field private static final rejectedExecutionHandler:Ljava/util/concurrent/RejectedExecutionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$1;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$1;-><init>()V

    sput-object v0, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->failureCallback:Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;

    .line 31
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$2;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$2;-><init>()V

    sput-object v0, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->rejectedExecutionHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 39
    new-instance v0, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;-><init>()V

    sput-object v0, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->instance:Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/RejectedExecutionHandler;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->rejectedExecutionHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->failureCallback:Lcom/google/android/libraries/performance/primes/PrimesScheduledExecutorService$FailureCallback;

    return-object v0
.end method

.method public static getInstance()Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->instance:Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier;->get()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 49
    # getter for: Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$ExecutorHolder;->primesExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {}, Lcom/google/android/libraries/performance/primes/PrimesExecutorSupplier$ExecutorHolder;->access$000()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
