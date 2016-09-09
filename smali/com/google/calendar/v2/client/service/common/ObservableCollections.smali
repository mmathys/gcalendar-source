.class public Lcom/google/calendar/v2/client/service/common/ObservableCollections;
.super Ljava/lang/Object;
.source "ObservableCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;
    }
.end annotation


# direct methods
.method public static equalContentLists(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 160
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 165
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 166
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    invoke-interface {p1, p0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equalContents(Lcom/google/calendar/v2/client/service/common/ObservableCollection;Lcom/google/calendar/v2/client/service/common/ObservableCollection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<TT;>;",
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newObservableArrayList()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static newObservableArrayList(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 79
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    invoke-static {}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->newObservableArrayList()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static newObservableHashSet()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static newObservableHashSet(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 101
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    invoke-static {}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->newObservableHashSet()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static unmodifiableCollection(Lcom/google/calendar/v2/client/service/common/ObservableCollection;)Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<TT;>;)",
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    instance-of v0, p0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/common/ObservableCollections$UnmodifiableObservableCollection;-><init>(Lcom/google/calendar/v2/client/service/common/ObservableCollection;)V

    move-object p0, v0

    goto :goto_0
.end method
