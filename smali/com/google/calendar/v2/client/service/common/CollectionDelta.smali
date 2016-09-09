.class public interface abstract Lcom/google/calendar/v2/client/service/common/CollectionDelta;
.super Ljava/lang/Object;
.source "CollectionDelta.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;,
        Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change",
        "<TT;>;>;"
    }
.end annotation


# virtual methods
.method public abstract getChanges()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change",
            "<TT;>;>;"
        }
    .end annotation
.end method
