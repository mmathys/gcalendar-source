.class public interface abstract Lcom/android/calendar/timely/net/BaseClient;
.super Ljava/lang/Object;
.source "BaseClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Lcom/android/calendar/timely/net/BaseRequest",
        "<TRequestT;TResultT;>;ResultT:",
        "Lcom/android/calendar/timely/net/BaseResult",
        "<TResultT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancelRequest()V
.end method

.method public abstract getLastResult(Lcom/android/calendar/timely/net/BaseRequest;)Lcom/android/calendar/timely/net/BaseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestT;)TResultT;"
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener",
            "<TResultT;>;)V"
        }
    .end annotation
.end method

.method public abstract sendRequest(Lcom/android/calendar/timely/net/BaseRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestT;)V"
        }
    .end annotation
.end method

.method public abstract unregisterListener()V
.end method
