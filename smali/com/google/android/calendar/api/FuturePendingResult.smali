.class public abstract Lcom/google/android/calendar/api/FuturePendingResult;
.super Lcom/google/android/gms/common/api/PendingResult;
.source "FuturePendingResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;"
    }
.end annotation


# static fields
.field private static final BACKGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final FOREGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final FOREGROUND_HANDLER:Landroid/os/Handler;


# instance fields
.field private final mFuture:Lcom/google/common/util/concurrent/ListenableFutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFutureTask",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/api/FuturePendingResult;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/calendar/api/FuturePendingResult;->FOREGROUND_HANDLER:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/google/android/calendar/api/FuturePendingResult$1;

    invoke-direct {v0}, Lcom/google/android/calendar/api/FuturePendingResult$1;-><init>()V

    sput-object v0, Lcom/google/android/calendar/api/FuturePendingResult;->FOREGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/calendar/api/FuturePendingResult$2;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/api/FuturePendingResult$2;-><init>(Lcom/google/android/calendar/api/FuturePendingResult;)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/api/FuturePendingResult;->mFuture:Lcom/google/common/util/concurrent/ListenableFutureTask;

    .line 42
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/calendar/api/FuturePendingResult;->FOREGROUND_HANDLER:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public await()Lcom/google/android/gms/common/api/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/api/FuturePendingResult;->mFuture:Lcom/google/common/util/concurrent/ListenableFutureTask;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ListenableFutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/FuturePendingResult;->createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    goto :goto_0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/api/FuturePendingResult;->mFuture:Lcom/google/common/util/concurrent/ListenableFutureTask;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/FuturePendingResult;->createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract calculateResult()Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/calendar/api/FuturePendingResult;->mFuture:Lcom/google/common/util/concurrent/ListenableFutureTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ListenableFutureTask;->cancel(Z)Z

    .line 77
    return-void
.end method

.method protected abstract createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TR;"
        }
    .end annotation
.end method

.method protected execute()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/calendar/api/FuturePendingResult;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/api/FuturePendingResult;->execute(Ljava/util/concurrent/Executor;)V

    .line 50
    return-void
.end method

.method protected execute(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/calendar/api/FuturePendingResult;->mFuture:Lcom/google/common/util/concurrent/ListenableFutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/calendar/api/FuturePendingResult;->mFuture:Lcom/google/common/util/concurrent/ListenableFutureTask;

    new-instance v1, Lcom/google/android/calendar/api/FuturePendingResult$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/calendar/api/FuturePendingResult$3;-><init>(Lcom/google/android/calendar/api/FuturePendingResult;Lcom/google/android/gms/common/api/ResultCallback;)V

    sget-object v2, Lcom/google/android/calendar/api/FuturePendingResult;->FOREGROUND_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 97
    return-void
.end method
