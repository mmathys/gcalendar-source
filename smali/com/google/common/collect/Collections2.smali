.class public final Lcom/google/common/collect/Collections2;
.super Ljava/lang/Object;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Collections2$FilteredCollection;
    }
.end annotation


# static fields
.field static final STANDARD_JOINER:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 324
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Collections2;->STANDARD_JOINER:Lcom/google/common/base/Joiner;

    return-void
.end method

.method static cast(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 321
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method static containsAllImpl(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {p0}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Iterables;->all(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 90
    instance-of v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection;

    if-eqz v0, :cond_0

    .line 93
    check-cast p0, Lcom/google/common/collect/Collections2$FilteredCollection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Collections2$FilteredCollection;->createCombined(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Collections2$FilteredCollection;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/google/common/collect/Collections2$FilteredCollection;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Predicate;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/Collections2$FilteredCollection;-><init>(Ljava/util/Collection;Lcom/google/common/base/Predicate;)V

    move-object v0, v2

    goto :goto_0
.end method

.method static newStringBuilderForCollection(I)Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    .line 313
    const-string v0, "size"

    invoke-static {p0, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v2, p0

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x40000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0
.end method

.method static safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v1

    goto :goto_0

    .line 110
    :catch_1
    move-exception v1

    goto :goto_0
.end method
