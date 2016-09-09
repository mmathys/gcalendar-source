.class public Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;
.super Ljava/lang/Object;
.source "CalendarInfoImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;
.implements Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/api/calendars/CalendarInfo;",
        "Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

.field private final calendarKey:Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

.field private final name:Ljava/lang/String;

.field private final type:Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;


# direct methods
.method public constructor <init>(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 25
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    .line 26
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 27
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->name:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->type:Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 34
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->name:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->type:Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    instance-of v1, p1, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;

    .line 74
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    iget-object v2, p1, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 75
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    return-object v0
.end method

.method public bridge synthetic getKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->getKey()Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->getKey()Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->type:Lcom/google/calendar/v2/client/service/api/calendars/HolidayType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->calendarKey:Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSubscribed()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/calendars/CalendarInfoImpl;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
