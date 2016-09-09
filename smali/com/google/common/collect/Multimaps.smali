.class public final Lcom/google/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$Entries;,
        Lcom/google/common/collect/Multimaps$CustomSetMultimap;
    }
.end annotation


# direct methods
.method static equalsImpl(Lcom/google/common/collect/Multimap;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2120
    if-ne p1, p0, :cond_0

    .line 2121
    const/4 v0, 0x1

    .line 2127
    :goto_0
    return v0

    .line 2123
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_1

    .line 2124
    check-cast p1, Lcom/google/common/collect/Multimap;

    .line 2125
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2127
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newSetMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/Set",
            "<TV;>;>;)",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Lcom/google/common/collect/Multimaps$CustomSetMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$CustomSetMultimap;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method
