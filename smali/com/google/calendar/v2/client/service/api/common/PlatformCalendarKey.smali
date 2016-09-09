.class public Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;
.super Ljava/lang/Object;
.source "PlatformCalendarKey.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/common/CalendarKey;


# instance fields
.field private accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

.field private principalKey:Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    .line 22
    invoke-static {p2}, Lcom/google/calendar/v2/client/service/api/common/Principals;->fromPlatformId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    instance-of v1, p1, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;

    .line 41
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

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
    .line 27
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    return-object v0
.end method

.method public getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/PlatformCalendarKey;->principalKey:Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

    invoke-static {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
