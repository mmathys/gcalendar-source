.class public Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;
.super Landroid/os/AsyncTask;
.source "UnknownUrlVolleyRequestKey.java"

# interfaces
.implements Lcom/android/bitmap/RequestKey$Cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GetEventImageForVolleyRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/bitmap/RequestKey;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/android/bitmap/RequestKey$Cancelable;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/bitmap/RequestKey$Callback;

.field final synthetic this$0:Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;


# direct methods
.method public constructor <init>(Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;Lcom/android/bitmap/RequestKey$Callback;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->this$0:Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->mCallback:Lcom/android/bitmap/RequestKey$Callback;

    .line 33
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->cancel(Z)Z

    .line 62
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, [Lcom/android/bitmap/RequestKey;

    invoke-virtual {p0, p1}, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->doInBackground([Lcom/android/bitmap/RequestKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/bitmap/RequestKey;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->this$0:Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;

    invoke-virtual {v0}, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->this$0:Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;

    iput-object v0, v1, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;->mUrlString:Ljava/lang/String;

    .line 39
    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->mCallback:Lcom/android/bitmap/RequestKey$Callback;

    iget-object v1, p0, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->this$0:Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/bitmap/RequestKey$Callback;->byteArrayCreated(Lcom/android/bitmap/RequestKey;[B)V

    .line 54
    sget-object v0, Lcom/android/bitmap/RequestKey$Callback;->NONE:Lcom/android/bitmap/RequestKey$Callback;

    iput-object v0, p0, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->mCallback:Lcom/android/bitmap/RequestKey$Callback;

    .line 55
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 56
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->this$0:Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;

    iget-object v1, p0, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->mCallback:Lcom/android/bitmap/RequestKey$Callback;

    invoke-virtual {v0, p1, v1}, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;->createVolleyRequest(Ljava/lang/String;Lcom/android/bitmap/RequestKey$Callback;)Lcom/android/bitmap/RequestKey$Cancelable;

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->mCallback:Lcom/android/bitmap/RequestKey$Callback;

    iget-object v1, p0, Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey$GetEventImageForVolleyRequestTask;->this$0:Lcom/android/calendar/cache/UnknownUrlVolleyRequestKey;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/bitmap/RequestKey$Callback;->byteArrayCreated(Lcom/android/bitmap/RequestKey;[B)V

    goto :goto_0
.end method
