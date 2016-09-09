.class public interface abstract Lcom/google/calendar/v2/client/service/common/ObservableCollection;
.super Ljava/lang/Object;
.source "ObservableCollection.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Observable;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Observable",
        "<",
        "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
        "<TT;>;>;",
        "Ljava/util/Collection",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract add(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<TT;>;>;)V"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public abstract removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<TT;>;>;)V"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public abstract toArray()[Ljava/lang/Object;
.end method
