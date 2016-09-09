.class public Lcom/google/calendar/v2/client/service/api/events/FlairKey;
.super Ljava/lang/Object;
.source "FlairKey.java"


# instance fields
.field final identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/api/events/FlairKey;->identifier:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 33
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/calendar/v2/client/service/api/events/FlairKey;

    if-nez v0, :cond_1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    .line 36
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/FlairKey;

    .line 37
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/FlairKey;->identifier:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/events/FlairKey;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/FlairKey;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/FlairKey;->identifier:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/events/FlairKey;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/events/FlairKey;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
