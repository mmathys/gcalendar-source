.class public Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;
.super Ljava/lang/Object;
.source "CollectionDeltaImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/CollectionDelta;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private changes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOf(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;

    sget-object v1, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->ADD:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    invoke-direct {v0, v1, p0}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;-><init>(Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newInstance()Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;-><init>()V

    return-object v0
.end method

.method public static removalOf(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;

    sget-object v1, Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;->REMOVE:Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;

    invoke-direct {v0, v1, p0}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaChangeImpl;-><init>(Lcom/google/calendar/v2/client/service/common/CollectionDelta$ChangeType;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addToAdded(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->getChanges()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->addOf(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public addToRemoved(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 60
    invoke-virtual {p0, v1}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->addToRemoved(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public addToRemoved(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->getChanges()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->removalOf(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 75
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    if-nez v0, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    .line 78
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    .line 79
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->changes:Ljava/util/Collection;

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->changes:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getChanges()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->changes:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/google/calendar/v2/common/CollectionUtil;->newArrayList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->changes:Ljava/util/Collection;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->changes:Ljava/util/Collection;

    return-object v0
.end method

.method public hasChanges()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->changes:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->changes:Ljava/util/Collection;

    .line 70
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->changes:Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->changes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta$Change",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->changes:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->changes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    invoke-static {p0}, Lcom/google/calendar/v2/common/ObjectUtil;->toStringHelper(Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const-string v1, "Changes"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->changes:Ljava/util/Collection;

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    return-object v0
.end method
