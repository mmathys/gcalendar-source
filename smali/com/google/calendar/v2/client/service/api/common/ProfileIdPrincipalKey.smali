.class public Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;
.super Ljava/lang/Object;
.source "ProfileIdPrincipalKey.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;


# instance fields
.field private final profileId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;->profileId:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 29
    instance-of v0, p1, Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 32
    :cond_0
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;

    .line 33
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;->profileId:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;->profileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;->profileId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "ProfileId"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;->profileId:Ljava/lang/String;

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    return-object v0
.end method
