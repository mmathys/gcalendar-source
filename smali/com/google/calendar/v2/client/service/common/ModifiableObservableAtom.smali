.class public interface abstract Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
.super Ljava/lang/Object;
.source "ModifiableObservableAtom.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/ObservableAtom;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
        "<TT;>;"
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

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
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

.method public abstract set(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
