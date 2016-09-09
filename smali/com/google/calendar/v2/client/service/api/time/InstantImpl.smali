.class public Lcom/google/calendar/v2/client/service/api/time/InstantImpl;
.super Lcom/google/calendar/v2/client/service/api/time/BaseInstant;
.source "InstantImpl.java"


# instance fields
.field private final millis:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/api/time/BaseInstant;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/google/calendar/v2/client/service/api/time/InstantImpl;->millis:J

    .line 17
    return-void
.end method


# virtual methods
.method public getMillis()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/google/calendar/v2/client/service/api/time/InstantImpl;->millis:J

    return-wide v0
.end method

.method public getTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/calendar/v2/client/service/api/time/UtcTimeZoneImpl;->INSTANCE:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    return-object v0
.end method

.method public minusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/Instant;
    .locals 6

    .prologue
    .line 31
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/InstantImpl;

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/InstantImpl;->getMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Duration;->getMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/InstantImpl;-><init>(J)V

    return-object v0
.end method

.method public plusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/Instant;
    .locals 6

    .prologue
    .line 26
    new-instance v0, Lcom/google/calendar/v2/client/service/api/time/InstantImpl;

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/time/InstantImpl;->getMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/api/time/Duration;->getMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/google/calendar/v2/client/service/api/time/InstantImpl;-><init>(J)V

    return-object v0
.end method
