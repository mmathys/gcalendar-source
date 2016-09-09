.class Lcom/google/android/calendar/api/FuturePendingResult$3;
.super Ljava/lang/Object;
.source "FuturePendingResult.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/api/FuturePendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/api/FuturePendingResult;

.field final synthetic val$resultCallback:Lcom/google/android/gms/common/api/ResultCallback;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/api/FuturePendingResult;Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/calendar/api/FuturePendingResult$3;->this$0:Lcom/google/android/calendar/api/FuturePendingResult;

    iput-object p2, p0, Lcom/google/android/calendar/api/FuturePendingResult$3;->val$resultCallback:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/calendar/api/FuturePendingResult$3;->val$resultCallback:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object v1, p0, Lcom/google/android/calendar/api/FuturePendingResult$3;->this$0:Lcom/google/android/calendar/api/FuturePendingResult;

    invoke-virtual {v1, p1}, Lcom/google/android/calendar/api/FuturePendingResult;->createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    .line 95
    return-void
.end method

.method public onSuccess(Lcom/google/android/gms/common/api/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/calendar/api/FuturePendingResult$3;->val$resultCallback:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    .line 90
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/FuturePendingResult$3;->onSuccess(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
