.class public interface abstract Lcom/google/calendar/v2/client/service/common/Observable;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Disposable;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-TT;>;)V"
        }
    .end annotation
.end method
