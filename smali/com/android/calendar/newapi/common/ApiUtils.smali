.class public Lcom/android/calendar/newapi/common/ApiUtils;
.super Ljava/lang/Object;
.source "ApiUtils.java"


# direct methods
.method private static getCalendarFromEvent(Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 2

    .prologue
    .line 45
    invoke-interface {p0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/android/calendar/newapi/model/CalendarStore;->getImmutableCalendar(Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    return-object v0
.end method

.method public static isEditable(Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Z
    .locals 1

    .prologue
    .line 36
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/android/calendar/newapi/common/ApiUtils;->getCalendarFromEvent(Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOnPrimaryCalendar(Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Z
    .locals 1

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/android/calendar/newapi/common/ApiUtils;->getCalendarFromEvent(Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->isPrimary()Z

    move-result v0

    return v0
.end method

.method public static setDefaultCalendar(Lcom/android/calendar/newapi/model/CalendarHolder;Lcom/android/calendar/newapi/model/CalendarStore;)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p1, p0}, Lcom/android/calendar/newapi/model/CalendarStore;->getCalendarLocalId(Lcom/android/calendar/newapi/model/CalendarHolder;)Ljava/lang/Long;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->setDefaultCalendarId(J)V

    .line 56
    :cond_0
    return-void
.end method

.method public static showSimplifiedEventScreen(Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Z
    .locals 1

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/android/calendar/newapi/common/ApiUtils;->isOnPrimaryCalendar(Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showSimplifiedGrooveScreen(Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Z
    .locals 1

    .prologue
    .line 20
    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    invoke-static {p1, p2}, Lcom/android/calendar/newapi/common/ApiUtils;->isOnPrimaryCalendar(Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
