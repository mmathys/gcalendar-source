.class public abstract Lcom/android/calendar/timely/net/BaseClientFragment;
.super Landroid/app/Fragment;
.source "BaseClientFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/net/BaseClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Lcom/android/calendar/timely/net/BaseRequest",
        "<TReqT;TResT;>;ResT:",
        "Lcom/android/calendar/timely/net/BaseResult",
        "<TResT;>;NetResT:",
        "Ljava/lang/Object;",
        "ExceptionT:",
        "Ljava/lang/Exception;",
        ">",
        "Landroid/app/Fragment;",
        "Lcom/android/calendar/timely/net/BaseClient",
        "<TReqT;TResT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLastResult:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<TReqT;TResT;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener",
            "<TResT;>;"
        }
    .end annotation
.end field

.field private mTask:Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/timely/net/BaseClientFragment",
            "<TReqT;TResT;TNetResT;TExceptionT;>.ExecuteRequestTask;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/calendar/timely/net/BaseClientFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/net/BaseClientFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 29
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mLastResult:Landroid/util/Pair;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/calendar/timely/net/BaseClientFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/net/BaseClientFragment;Lcom/android/calendar/timely/net/BaseRequest;Lcom/android/calendar/timely/net/BaseResult;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/net/BaseClientFragment;->storeResult(Lcom/android/calendar/timely/net/BaseRequest;Lcom/android/calendar/timely/net/BaseResult;)V

    return-void
.end method

.method private sendRequest(Lcom/android/calendar/timely/net/BaseRequest;Lcom/android/calendar/timely/net/BaseResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;TResT;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/calendar/timely/net/BaseClientFragment;->cancelRequest()V

    .line 85
    new-instance v0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;-><init>(Lcom/android/calendar/timely/net/BaseClientFragment;Lcom/android/calendar/timely/net/BaseRequest;Lcom/android/calendar/timely/net/BaseResult;)V

    iput-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mTask:Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;

    .line 87
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mTask:Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method

.method private storeResult(Lcom/android/calendar/timely/net/BaseRequest;Lcom/android/calendar/timely/net/BaseResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;TResT;)V"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mLastResult:Landroid/util/Pair;

    .line 139
    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mTask:Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mTask:Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->cancel(Z)Z

    .line 105
    :cond_0
    return-void
.end method

.method protected abstract convertResult(Ljava/lang/Object;)Lcom/android/calendar/timely/net/BaseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TNetResT;)TResT;"
        }
    .end annotation
.end method

.method protected abstract getErrorResult(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/android/calendar/timely/net/BaseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")TResT;"
        }
    .end annotation
.end method

.method public getLastResult(Lcom/android/calendar/timely/net/BaseRequest;)Lcom/android/calendar/timely/net/BaseResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)TResT;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mLastResult:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mLastResult:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/timely/net/BaseResult;

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final notifyListener(Lcom/android/calendar/timely/net/BaseResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResT;)V"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mListener:Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mListener:Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;

    invoke-interface {v0, p1}, Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;->onRequestFinishedWithResult(Ljava/lang/Object;)V

    .line 135
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/net/BaseClientFragment;->setRetainInstance(Z)V

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mListener:Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/android/calendar/timely/net/BaseClientFragment;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mListener:Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Listener did not unregister before destroying client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/net/BaseClientFragment;->cancelRequest()V

    .line 54
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 55
    return-void
.end method

.method public registerListener(Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener",
            "<TResT;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mListener:Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/calendar/timely/net/BaseClientFragment;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mListener:Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Overriding previous listener before unregistering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mListener:Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;

    .line 113
    return-void
.end method

.method protected abstract retrieveData(Lcom/android/calendar/timely/net/BaseRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)TNetResT;^TExceptionT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public sendRequest(Lcom/android/calendar/timely/net/BaseRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/net/BaseClientFragment;->getLastResult(Lcom/android/calendar/timely/net/BaseRequest;)Lcom/android/calendar/timely/net/BaseResult;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/calendar/timely/net/BaseResult;->hasNextPage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/timely/net/BaseClientFragment;->sendRequest(Lcom/android/calendar/timely/net/BaseRequest;Lcom/android/calendar/timely/net/BaseResult;)V

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/calendar/timely/net/BaseRequest;->withTokenFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/net/BaseRequest;

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/timely/net/BaseClientFragment;->sendRequest(Lcom/android/calendar/timely/net/BaseRequest;Lcom/android/calendar/timely/net/BaseResult;)V

    goto :goto_0
.end method

.method public unregisterListener()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mListener:Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/android/calendar/timely/net/BaseClientFragment;->TAG:Ljava/lang/String;

    const-string v1, "Duplicate unregister of listener!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment;->mListener:Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;

    .line 121
    return-void
.end method
