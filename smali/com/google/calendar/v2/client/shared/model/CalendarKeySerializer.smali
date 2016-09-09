.class public Lcom/google/calendar/v2/client/shared/model/CalendarKeySerializer;
.super Ljava/lang/Object;
.source "CalendarKeySerializer.java"


# direct methods
.method public static deserialize(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    const-string v0, "`"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 50
    array-length v1, v0

    if-eq v1, v2, :cond_0

    .line 51
    const-string v1, "The key is %s is not a valid serialized CalendarKey."

    invoke-static {v4, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 56
    :cond_0
    aget-object v1, v0, v5

    invoke-static {v1}, Lcom/google/calendar/v2/client/shared/model/AccountKeySerializer;->deserialize(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    move-result-object v1

    .line 57
    aget-object v2, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x67

    if-ne v2, v3, :cond_1

    .line 58
    aget-object v0, v0, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/calendar/v2/client/service/api/common/CalendarKeys;->fromEmail(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 60
    :cond_1
    aget-object v2, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x70

    if-ne v2, v3, :cond_2

    .line 61
    aget-object v0, v0, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/calendar/v2/client/service/api/common/CalendarKeys;->fromPlatformId(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_2
    const-string v0, "Serialization does not match any known calendar key type."

    invoke-static {v4, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 65
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static serialize(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 29
    instance-of v0, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 30
    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    .line 31
    const/16 v1, 0x67

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "`"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    move-result-object v3

    invoke-static {v3}, Lcom/google/calendar/v2/client/shared/model/AccountKeySerializer;->serialize(Lcom/google/calendar/v2/client/service/api/common/AccountKey;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 33
    :cond_0
    instance-of v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;

    if-eqz v0, :cond_1

    .line 35
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

    .line 36
    const/16 v1, 0x70

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;->getPlatformId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "`"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    move-result-object v3

    invoke-static {v3}, Lcom/google/calendar/v2/client/shared/model/AccountKeySerializer;->serialize(Lcom/google/calendar/v2/client/service/api/common/AccountKey;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    const-string v1, "Unknown type of calendar key."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method
