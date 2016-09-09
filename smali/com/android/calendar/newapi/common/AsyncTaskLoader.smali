.class public abstract Lcom/android/calendar/newapi/common/AsyncTaskLoader;
.super Lcom/android/calendar/newapi/common/SnappyAsyncTask;
.source "AsyncTaskLoader.java"

# interfaces
.implements Lcom/android/calendar/newapi/common/Loader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/calendar/newapi/common/SnappyAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResultT;>;",
        "Lcom/android/calendar/newapi/common/Loader",
        "<TResultT;>;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/calendar/newapi/common/Loader$Callback;

.field private mFinished:Ljava/lang/Boolean;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field private mSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/calendar/newapi/common/SnappyAsyncTask;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->mSuccess:Z

    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->mFinished:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->cancel(Z)Z

    .line 46
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->mFinished:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->mSuccess:Z

    return v0
.end method

.method public load()V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected loadingFailure()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->mSuccess:Z

    .line 74
    return-void
.end method

.method protected onCompleted(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->mFinished:Ljava/lang/Boolean;

    .line 23
    iput-object p1, p0, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->mResult:Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->mCallback:Lcom/android/calendar/newapi/common/Loader$Callback;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->mCallback:Lcom/android/calendar/newapi/common/Loader$Callback;

    invoke-interface {v0, p0}, Lcom/android/calendar/newapi/common/Loader$Callback;->onLoadingSuccess(Lcom/android/calendar/newapi/common/Loader;)V

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->mCallback:Lcom/android/calendar/newapi/common/Loader$Callback;

    invoke-interface {v0, p0}, Lcom/android/calendar/newapi/common/Loader$Callback;->onLoadingFailure(Lcom/android/calendar/newapi/common/Loader;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/calendar/newapi/common/Loader$Callback;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/calendar/newapi/common/AsyncTaskLoader;->mCallback:Lcom/android/calendar/newapi/common/Loader$Callback;

    .line 79
    return-void
.end method
