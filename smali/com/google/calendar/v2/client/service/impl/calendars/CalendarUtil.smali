.class public Lcom/google/calendar/v2/client/service/impl/calendars/CalendarUtil;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# direct methods
.method public static calculateType(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;
    .locals 2

    .prologue
    .line 20
    instance-of v0, p0, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;

    if-nez v0, :cond_0

    .line 21
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->UNKNOWN:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    .line 43
    :goto_0
    return-object v0

    .line 23
    :cond_0
    invoke-static {p0}, Lcom/google/calendar/v2/client/service/api/common/GaiaCalendarKey;->getEmailOrThrow(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "resource.calendar.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->ROOM:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    goto :goto_0

    .line 27
    :cond_1
    const-string v1, "#contacts@group.v.calendar.google.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->BIRTHDAY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    goto :goto_0

    .line 30
    :cond_2
    const-string v1, "#holiday@group.v.calendar.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->HOLIDAY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    goto :goto_0

    .line 34
    :cond_3
    invoke-static {v0}, Lcom/google/calendar/common/transpiled/TimelyBlacklistedCalendars;->isBlacklisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 35
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->BLACKLISTED_LEGACY:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    goto :goto_0

    .line 37
    :cond_4
    const-string v1, "group.calendar.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 38
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->GROUP:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    goto :goto_0

    .line 40
    :cond_5
    const-string v1, ".calendar.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->UNKNOWN:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    goto :goto_0

    .line 43
    :cond_6
    sget-object v0, Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;->INDIVIDUAL:Lcom/google/calendar/v2/client/service/api/calendars/CalendarType;

    goto :goto_0
.end method

.method public static isIndividual(Lcom/google/calendar/v2/client/service/api/events/Attendee;)Z
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    instance-of v0, v0, Lcom/google/calendar/v2/client/service/api/common/PlatformPrincipalKey;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->INDIVIDUAL:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    .line 57
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getType()Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
