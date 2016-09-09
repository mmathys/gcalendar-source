.class public Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;
.super Ljava/lang/Object;
.source "PlatformAccountKey.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/common/AccountKey;


# instance fields
.field private final platformId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;->platformId:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 40
    instance-of v0, p1, Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 44
    :goto_0
    return v0

    .line 43
    :cond_0
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;

    .line 44
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;->platformId:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;->platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;->platformId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;->platformId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "PlatformId"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;->platformId:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    return-object v0
.end method
