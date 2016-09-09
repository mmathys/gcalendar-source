.class public Lcom/google/calendar/v2/client/service/api/common/TemporaryCalendarKey;
.super Ljava/lang/Object;
.source "TemporaryCalendarKey.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/common/CalendarKey;


# instance fields
.field private final accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/api/common/AccountKey;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/TemporaryCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 29
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/google/calendar/v2/client/service/api/common/TemporaryCalendarKey;

    if-nez v0, :cond_1

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 32
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/TemporaryCalendarKey;

    .line 33
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/TemporaryCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/api/common/TemporaryCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/TemporaryCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    return-object v0
.end method

.method public getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/TemporaryCalendarKey;->accountKey:Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
