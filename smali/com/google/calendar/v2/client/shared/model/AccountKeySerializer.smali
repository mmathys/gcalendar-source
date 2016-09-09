.class public Lcom/google/calendar/v2/client/shared/model/AccountKeySerializer;
.super Ljava/lang/Object;
.source "AccountKeySerializer.java"


# direct methods
.method public static deserialize(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/AccountKey;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 36
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/AccountKeys;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_1

    .line 38
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/AccountKeys;->fromPlatformId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid serialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static serialize(Lcom/google/calendar/v2/client/service/api/common/AccountKey;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 21
    instance-of v0, p0, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    if-eqz v0, :cond_0

    .line 22
    check-cast p0, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    .line 23
    const/16 v0, 0x65

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    .line 24
    :cond_0
    instance-of v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;

    if-eqz v0, :cond_1

    .line 25
    check-cast p0, Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;

    .line 26
    const/16 v0, 0x70

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/common/PlatformAccountKey;->getPlatformId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown account key type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
