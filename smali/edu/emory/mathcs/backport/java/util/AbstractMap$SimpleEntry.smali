.class public Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/AbstractMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleEntry"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    .line 73
    iput-object p2, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 74
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 119
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 121
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    # invokes: Ledu/emory/mathcs/backport/java/util/AbstractMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v2}, Ledu/emory/mathcs/backport/java/util/AbstractMap;->access$100(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    # invokes: Ledu/emory/mathcs/backport/java/util/AbstractMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v1, v2}, Ledu/emory/mathcs/backport/java/util/AbstractMap;->access$100(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 114
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    .line 115
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/AbstractMap$SimpleEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
