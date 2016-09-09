.class public Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;
.super Ljava/lang/Object;
.source "GaiaCalendarKey.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/common/CalendarKey;


# instance fields
.field private final accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

.field private final principalKey:Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;


# direct methods
.method protected constructor <init>(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    .line 23
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 24
    invoke-static {p2}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    .line 25
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEmailOrThrow(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    instance-of v0, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 77
    check-cast p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    .line 41
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    .line 42
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    invoke-static {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Account"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Principal"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    return-object v0
.end method
