.class public interface abstract Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;
.super Ljava/lang/Object;
.source "AutoCompleteRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/net/AutoCompleteRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestManagerDelegate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onAutoCompleteResponse(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;",
            "TResponseType;)V"
        }
    .end annotation
.end method

.method public abstract onQueriesInProgressChange(Z)V
.end method

.method public abstract onResponseStatus(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Lcom/google/android/calendar/net/ResponseStatus;)V
.end method
