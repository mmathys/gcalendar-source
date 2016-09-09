.class Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;
.super Lcom/google/calendar/v2/client/service/common/UnmodifiableCollection;
.source "ObservableCollections.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/ObservableCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/common/ObservableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableObservableCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/calendar/v2/client/service/common/UnmodifiableCollection",
        "<TT;>;",
        "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final ownListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/common/CollectionDelta",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private final source:Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/common/ObservableCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/common/UnmodifiableCollection;-><init>()V

    .line 183
    invoke-static {}, Lcom/google/calendar/v2/common/CollectionUtil;->newArrayList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->ownListeners:Ljava/util/List;

    .line 186
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->source:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    .line 187
    return-void
.end method


# virtual methods
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
    .line 231
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->ownListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->source:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 233
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->source:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->contains(Ljava/lang/Object;)Z

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
    .line 196
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->source:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->ownListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/common/Listener;

    .line 244
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->source:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v2, v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->ownListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->source:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->isEmpty()Z

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
    .line 206
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->source:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
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
    .line 237
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->ownListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->source:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 239
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->source:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->source:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->toArray()[Ljava/lang/Object;

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
    .line 221
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->source:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;->source:Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
