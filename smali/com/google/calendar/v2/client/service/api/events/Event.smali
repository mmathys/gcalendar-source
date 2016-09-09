.class public interface abstract Lcom/google/calendar/v2/client/service/api/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getAttachments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAttendees()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;
.end method

.method public abstract getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
.end method

.method public abstract getBackgroundImageUrl()Ljava/lang/String;
.end method

.method public abstract getBackgroundVideoUrl()Ljava/lang/String;
.end method

.method public abstract getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
.end method

.method public abstract getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
.end method

.method public abstract getCreator()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;
.end method

.method public abstract getEndTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;
.end method

.method public abstract getEventId()Ljava/lang/String;
.end method

.method public abstract getEventKey()Lcom/google/calendar/v2/client/service/api/common/EventKey;
.end method

.method public abstract getEventSource()Lcom/google/calendar/v2/client/service/api/events/EventSource;
.end method

.method public abstract getFlair()Lcom/google/calendar/v2/client/service/api/events/FlairKey;
.end method

.method public abstract getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
.end method

.method public abstract getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;
.end method

.method public abstract getLabelColor()Lcom/google/calendar/v2/client/service/api/common/Color;
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getOrganizer()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
.end method

.method public abstract getOwnResponse()Lcom/google/calendar/v2/client/service/api/events/Attendee;
.end method

.method public abstract getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;
.end method

.method public abstract getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;
.end method

.method public abstract getRelatedContacts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/contacts/Contact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReminders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;
.end method

.method public abstract getStartTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;
.end method

.method public abstract getStructuredLocation()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTitleAnnotations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Lcom/google/calendar/v2/client/service/api/events/EventType;
.end method

.method public abstract getVisibility()Lcom/google/calendar/v2/client/service/api/events/Visibility;
.end method

.method public abstract guestsCanInviteOthers()Z
.end method

.method public abstract guestsCanModify()Z
.end method

.method public abstract guestsCanSeeGuests()Z
.end method

.method public abstract hasHiddenPrivateDetails()Z
.end method

.method public abstract hasOmittedAttendees()Z
.end method

.method public abstract hasSmartMail()Z
.end method

.method public abstract hasTitleAnnotations()Z
.end method

.method public abstract isAllDay()Z
.end method

.method public abstract isOrganizerCopy()Z
.end method

.method public abstract isRecurring()Z
.end method
