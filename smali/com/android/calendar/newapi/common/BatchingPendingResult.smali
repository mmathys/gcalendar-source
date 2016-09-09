.class public Lcom/android/calendar/newapi/common/BatchingPendingResult;
.super Lcom/google/android/gms/common/api/PendingResult;
.source "BatchingPendingResult.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/PendingResult",
        "<",
        "Lcom/google/android/gms/common/api/BooleanResult;",
        ">;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUCCESS_RESULT:Lcom/google/android/gms/common/api/BooleanResult;


# instance fields
.field private mLastResult:Lcom/google/android/gms/common/api/Result;

.field private mPendingResults:I

.field private mResultCallback:Lcom/google/android/gms/common/api/ResultCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/gms/common/api/BooleanResult;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    sput-object v0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->SUCCESS_RESULT:Lcom/google/android/gms/common/api/BooleanResult;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/common/api/PendingResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    .line 42
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 43
    if-eqz v2, :cond_0

    .line 44
    iget v3, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mPendingResults:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mPendingResults:I

    .line 45
    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method private delegateResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mResultCallback:Lcom/google/android/gms/common/api/ResultCallback;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mResultCallback:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public await()Lcom/google/android/gms/common/api/BooleanResult;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/BooleanResult;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic await()Lcom/google/android/gms/common/api/Result;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/BatchingPendingResult;->await()Lcom/google/android/gms/common/api/BooleanResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/newapi/common/BatchingPendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/BooleanResult;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mLastResult:Lcom/google/android/gms/common/api/Result;

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget v0, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mPendingResults:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mPendingResults:I

    .line 78
    iget v0, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mPendingResults:I

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :cond_2
    new-instance v0, Lcom/google/android/gms/common/api/BooleanResult;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/BooleanResult;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    iput-object v0, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mLastResult:Lcom/google/android/gms/common/api/Result;

    .line 80
    iget-object v0, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mLastResult:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/common/BatchingPendingResult;->delegateResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 1

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mResultCallback:Lcom/google/android/gms/common/api/ResultCallback;

    .line 64
    iget-object v0, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mLastResult:Lcom/google/android/gms/common/api/Result;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mLastResult:Lcom/google/android/gms/common/api/Result;

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/common/BatchingPendingResult;->delegateResult(Lcom/google/android/gms/common/api/Result;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget v0, p0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->mPendingResults:I

    if-nez v0, :cond_0

    .line 67
    sget-object v0, Lcom/android/calendar/newapi/common/BatchingPendingResult;->SUCCESS_RESULT:Lcom/google/android/gms/common/api/BooleanResult;

    invoke-direct {p0, v0}, Lcom/android/calendar/newapi/common/BatchingPendingResult;->delegateResult(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method
