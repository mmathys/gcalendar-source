.class public abstract Lcom/google/calendar/v2/client/service/api/time/BaseInstant;
.super Ljava/lang/Object;
.source "BaseInstant.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/time/Instant;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/calendar/v2/client/service/api/time/Instant;)I
    .locals 4

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/BaseInstant;->getMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/Instant;->getMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/Instant;

    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/api/time/BaseInstant;->compareTo(Lcom/google/calendar/v2/client/service/api/time/Instant;)I

    move-result v0

    return v0
.end method

.method public durationSince(Lcom/google/calendar/v2/client/service/api/time/Instant;)Lcom/google/calendar/v2/client/service/api/time/Duration;
    .locals 1

    .prologue
    .line 23
    invoke-static {p1, p0}, Lcom/google/calendar/v2/client/service/api/time/Duration;->between(Lcom/google/calendar/v2/client/service/api/time/Instant;Lcom/google/calendar/v2/client/service/api/time/Instant;)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 41
    instance-of v1, p1, Lcom/google/calendar/v2/client/service/api/time/Instant;

    if-nez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/time/Instant;

    .line 45
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/BaseInstant;->getMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/Instant;->getMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/BaseInstant;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/Instant;->getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/BaseInstant;->getMillis()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public isAfter(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z
    .locals 4

    .prologue
    .line 18
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/BaseInstant;->getMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/Instant;->getMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBefore(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z
    .locals 4

    .prologue
    .line 13
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/BaseInstant;->getMillis()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/time/Instant;->getMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
