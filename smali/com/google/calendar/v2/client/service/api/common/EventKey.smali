.class public final Lcom/google/calendar/v2/client/service/api/common/EventKey;
.super Ljava/lang/Object;
.source "EventKey.java"


# instance fields
.field private final calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

.field private final eventId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EventKey;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    .line 19
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EventKey;->eventId:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    instance-of v1, p1, Lcom/google/calendar/v2/client/service/api/common/EventKey;

    if-nez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/api/common/EventKey;

    .line 49
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/EventKey;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/api/common/EventKey;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/EventKey;->eventId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/api/common/EventKey;->eventId:Ljava/lang/String;

    .line 50
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EventKey;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EventKey;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/api/common/EventKey;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/api/common/EventKey;->eventId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    const-class v0, Lcom/google/calendar/v2/client/service/api/common/EventKey;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "CalendarKey"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/EventKey;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "EventId"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/api/common/EventKey;->eventId:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    return-object v0
.end method
