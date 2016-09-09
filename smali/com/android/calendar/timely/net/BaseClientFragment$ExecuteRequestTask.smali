.class public Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;
.super Landroid/os/AsyncTask;
.source "BaseClientFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/net/BaseClientFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExecuteRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResT;>;"
    }
.end annotation


# instance fields
.field private final mPreviousResult:Lcom/android/calendar/timely/net/BaseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResT;"
        }
    .end annotation
.end field

.field final mRequest:Lcom/android/calendar/timely/net/BaseRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TReqT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/calendar/timely/net/BaseClientFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/net/BaseClientFragment;Lcom/android/calendar/timely/net/BaseRequest;Lcom/android/calendar/timely/net/BaseResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;TResT;)V"
        }
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->this$0:Lcom/android/calendar/timely/net/BaseClientFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->mRequest:Lcom/android/calendar/timely/net/BaseRequest;

    .line 155
    iput-object p3, p0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->mPreviousResult:Lcom/android/calendar/timely/net/BaseResult;

    .line 156
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/calendar/timely/net/BaseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TResT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 160
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->this$0:Lcom/android/calendar/timely/net/BaseClientFragment;

    iget-object v2, p0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->mRequest:Lcom/android/calendar/timely/net/BaseRequest;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/net/BaseClientFragment;->retrieveData(Lcom/android/calendar/timely/net/BaseRequest;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 169
    :goto_0
    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->this$0:Lcom/android/calendar/timely/net/BaseClientFragment;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/net/BaseClientFragment;->convertResult(Ljava/lang/Object;)Lcom/android/calendar/timely/net/BaseResult;

    move-result-object v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->this$0:Lcom/android/calendar/timely/net/BaseClientFragment;

    const-string v1, "Cancelled"

    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/net/BaseClientFragment;->getErrorResult(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/android/calendar/timely/net/BaseResult;

    move-result-object v0

    .line 180
    :cond_1
    :goto_1
    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    # getter for: Lcom/android/calendar/timely/net/BaseClientFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/net/BaseClientFragment;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Backend request error."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 166
    iget-object v2, p0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->this$0:Lcom/android/calendar/timely/net/BaseClientFragment;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/calendar/timely/net/BaseClientFragment;->getErrorResult(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/android/calendar/timely/net/BaseResult;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->mPreviousResult:Lcom/android/calendar/timely/net/BaseResult;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->mPreviousResult:Lcom/android/calendar/timely/net/BaseResult;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/net/BaseResult;->merge(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/net/BaseResult;

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->doInBackground([Ljava/lang/Void;)Lcom/android/calendar/timely/net/BaseResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/calendar/timely/net/BaseResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResT;)V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->this$0:Lcom/android/calendar/timely/net/BaseClientFragment;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/net/BaseClientFragment;->notifyListener(Lcom/android/calendar/timely/net/BaseResult;)V

    .line 191
    iget-object v0, p0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->this$0:Lcom/android/calendar/timely/net/BaseClientFragment;

    iget-object v1, p0, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->mRequest:Lcom/android/calendar/timely/net/BaseRequest;

    # invokes: Lcom/android/calendar/timely/net/BaseClientFragment;->storeResult(Lcom/android/calendar/timely/net/BaseRequest;Lcom/android/calendar/timely/net/BaseResult;)V
    invoke-static {v0, v1, p1}, Lcom/android/calendar/timely/net/BaseClientFragment;->access$100(Lcom/android/calendar/timely/net/BaseClientFragment;Lcom/android/calendar/timely/net/BaseRequest;Lcom/android/calendar/timely/net/BaseResult;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, Lcom/android/calendar/timely/net/BaseResult;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/net/BaseClientFragment$ExecuteRequestTask;->onPostExecute(Lcom/android/calendar/timely/net/BaseResult;)V

    return-void
.end method
