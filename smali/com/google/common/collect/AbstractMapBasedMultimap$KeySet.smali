.class Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;
.super Lcom/google/common/collect/Maps$KeySet;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$KeySet",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 937
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    .line 938
    invoke-direct {p0, p2}, Lcom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 939
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->clear(Ljava/util/Iterator;)V

    .line 986
    return-void
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
    .line 990
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 995
    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 944
    new-instance v1, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet$1;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 973
    .line 974
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 975
    if-eqz v0, :cond_1

    .line 976
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 977
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 978
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    # getter for: Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v3}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$200(Lcom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v3

    sub-int/2addr v3, v2

    # setter for: Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v0, v3}, Lcom/google/common/collect/AbstractMapBasedMultimap;->access$202(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I

    move v0, v2

    .line 980
    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
