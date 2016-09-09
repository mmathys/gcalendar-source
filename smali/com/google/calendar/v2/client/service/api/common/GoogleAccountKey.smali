.class public Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;
.super Ljava/lang/Object;
.source "GoogleAccountKey.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/common/AccountKey;


# instance fields
.field private final email:Ljava/lang/String;

.field private final principalKey:Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;->email:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 38
    instance-of v0, p1, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    .line 41
    :cond_0
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    .line 42
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;->email:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    return-object v0
.end method

.method public bridge synthetic getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Email"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;->email:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    return-object v0
.end method
