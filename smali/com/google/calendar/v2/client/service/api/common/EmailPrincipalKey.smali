.class public Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;
.super Ljava/lang/Object;
.source "EmailPrincipalKey.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;


# instance fields
.field private final canonicalEmail:Ljava/lang/String;

.field private final email:Ljava/lang/String;


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

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->email:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->canonicalEmail:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 34
    if-ne p0, p1, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    .line 36
    :cond_0
    instance-of v0, p1, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-nez v0, :cond_1

    .line 37
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    .line 40
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->canonicalEmail:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->canonicalEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->email:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->canonicalEmail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Email"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->email:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    return-object v0
.end method
