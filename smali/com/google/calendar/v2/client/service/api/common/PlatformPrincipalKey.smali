.class public Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;
.super Ljava/lang/Object;
.source "PlatformPrincipalKey.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;


# instance fields
.field private final platformId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;->platformId:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 33
    instance-of v0, p1, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    .line 36
    :cond_0
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

    .line 37
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;->platformId:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;->platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;->platformId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;->platformId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/calendar/v2/common/ObjectUtil;->toStringHelper(Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    const-string v1, "PlatformId"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;->platformId:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/calendar/v2/common/ObjectUtil$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    return-object v0
.end method
