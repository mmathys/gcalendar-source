.class public Lcom/google/calendar/v2/common/BiMap;
.super Ljava/lang/Object;
.source "BiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mapKFromV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field final mapVFromK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/v2/common/BiMap;->mapVFromK:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/v2/common/BiMap;->mapKFromV:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public static create()Lcom/google/calendar/v2/common/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/calendar/v2/common/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Lcom/google/calendar/v2/common/BiMap;

    invoke-direct {v0}, Lcom/google/calendar/v2/common/BiMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/calendar/v2/common/BiMap;->mapKFromV:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/calendar/v2/common/BiMap;->mapVFromK:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/common/BiMap;->removeKey(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/google/calendar/v2/common/BiMap;->removeValue(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/google/calendar/v2/common/BiMap;->mapVFromK:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/google/calendar/v2/common/BiMap;->mapKFromV:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public removeKey(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/calendar/v2/common/BiMap;->mapVFromK:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/calendar/v2/common/BiMap;->mapVFromK:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/google/calendar/v2/common/BiMap;->mapKFromV:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    return-void
.end method

.method public removeValue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/calendar/v2/common/BiMap;->mapKFromV:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/google/calendar/v2/common/BiMap;->mapKFromV:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/google/calendar/v2/common/BiMap;->mapVFromK:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    return-void
.end method
