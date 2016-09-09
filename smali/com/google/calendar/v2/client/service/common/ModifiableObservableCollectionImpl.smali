.class public Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;
.super Ljava/lang/Object;
.source "ModifiableObservableCollectionImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier",
            "<TT;>;"
        }
    .end annotation
.end field

.field private impl:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    .line 49
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    .line 50
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->startBatchUpdate()Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    move-result-object v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->addToAdded(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    .line 118
    return v1

    .line 120
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->startBatchUpdate()Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    .line 82
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 83
    invoke-virtual {p0, v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    .line 85
    return v0

    .line 87
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    throw v0
.end method

.method public addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 55
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->startBatchUpdate()Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    move-result-object v0

    .line 145
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->addToRemoved(Ljava/lang/Iterable;)V

    .line 146
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->dispose()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    .line 209
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 154
    if-ne p0, p1, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    .line 158
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;

    if-nez v0, :cond_2

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    check-cast p1, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public finishBatchUpdate()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    .line 70
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->startBatchUpdate()Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    move-result-object v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 130
    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->addToRemoved(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    .line 135
    return v1

    .line 137
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->startBatchUpdate()Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    .line 96
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 97
    invoke-virtual {p0, v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    .line 99
    return v0

    .line 101
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->finishBatchUpdate()V

    throw v0
.end method

.method public removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 60
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public startBatchUpdate()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->deltaNotifier:Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->startBatchUpdate()Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    .line 65
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->impl:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
