.class abstract Lcom/google/calendar/v2/client/service/impl/events/EventBase;
.super Ljava/lang/Object;
.source "EventBase.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/events/Event;


# instance fields
.field private cachedPermissions:Lcom/google/calendar/v2/client/service/api/events/EventPermissions;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    return-object v0
.end method

.method public getFlair()Lcom/google/calendar/v2/client/service/api/events/FlairKey;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->hasSmartMail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :cond_0
    return-object v1
.end method

.method public getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->cachedPermissions:Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    if-nez v0, :cond_1

    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->cachedPermissions:Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/google/calendar/v2/client/service/impl/events/EventBase$1;->$SwitchMap$com$google$calendar$v2$client$service$api$events$EventType:[I

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getType()Lcom/google/calendar/v2/client/service/api/events/EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/impl/events/EventPermissionsImpl;-><init>(Lcom/google/calendar/v2/client/service/impl/events/EventBase;)V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->cachedPermissions:Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    .line 57
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->cachedPermissions:Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    return-object v0

    .line 50
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/google/calendar/v2/client/service/impl/events/ProhibitiveEventPermissionsImpl;->INSTANCE:Lcom/google/calendar/v2/client/service/impl/events/ProhibitiveEventPermissionsImpl;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->cachedPermissions:Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getType()Lcom/google/calendar/v2/client/service/api/events/EventType;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/google/calendar/v2/client/service/impl/events/EventBase$1;->$SwitchMap$com$google$calendar$v2$client$service$api$calendars$CalendarType:[I

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getType()Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/EventType;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/EventType;

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/EventType;->BIRTHDAY:Lcom/google/calendar/v2/client/service/api/events/EventType;

    goto :goto_0

    .line 33
    :pswitch_1
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/EventType;->HOLIDAY:Lcom/google/calendar/v2/client/service/api/events/EventType;

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public abstract hasAttendeesBesidesSelf()Z
.end method

.method public isOrganizerCopy()Z
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getOrganizer()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnsupportedRecurring()Z
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData;->getFreq()Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    move-result-object v0

    sget-object v1, Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;->UNSUPPORTED:Lcom/google/calendar/v2/client/service/api/events/RecurrenceData$Freq;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
