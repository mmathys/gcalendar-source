.class public Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;
.super Lcom/google/calendar/v2/client/service/impl/events/EventBase;
.source "ImmutableEventImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    }
.end annotation


# instance fields
.field private final attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private final attendees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private final availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

.field private final backgroundImageUrl:Ljava/lang/String;

.field private final backgroundVideoUrl:Ljava/lang/String;

.field private final calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

.field private final creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

.field private final description:Ljava/lang/String;

.field private final endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private final endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

.field private final eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

.field private final firstStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private final guestsCanInviteOthers:Z

.field private final guestsCanModify:Z

.field private final guestsCanSeeGuests:Z

.field private final hangout:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

.field private final hasOmittedAttendees:Z

.field private hasSmartMail:Z

.field private final instanceType:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

.field private final isAllDay:Z

.field private final key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

.field private final labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

.field private final location:Ljava/lang/String;

.field private final organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

.field private final originalAllDay:Z

.field private final originalStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private ownResponse:Lcom/google/calendar/v2/client/service/api/events/Attendee;

.field private ownResponseExtracted:Z

.field private final recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

.field private final recurringEventId:Ljava/lang/String;

.field private final relatedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/contacts/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final reminders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private final startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private final startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

.field private final structuredLocation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;

.field private titleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;


# direct methods
.method public constructor <init>(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;-><init>()V

    .line 87
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->relatedContacts:Ljava/util/List;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$000(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->relatedContacts:Ljava/util/List;

    .line 88
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->attendees:Ljava/util/List;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$100(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->attendees:Ljava/util/List;

    .line 89
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$200(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 90
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$300(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 91
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->description:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$400(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->description:Ljava/lang/String;

    .line 92
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$500(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 93
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$600(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    .line 94
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->firstStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$700(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->firstStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 95
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanInviteOthers:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$800(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanInviteOthers:Z

    .line 96
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanModify:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$900(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanModify:Z

    .line 97
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanSeeGuests:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$1000(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanSeeGuests:Z

    .line 98
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hangout:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$1100(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->hangout:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    .line 99
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->instanceType:Lcom/google/calendar/v2/client/service/api/events/InstanceType;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$1200(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->instanceType:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    .line 100
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->isAllDay:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$1300(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->isAllDay:Z

    .line 101
    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->getKey()Lcom/google/calendar/v2/client/service/api/common/EventKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EventKey;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    .line 102
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$1400(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 103
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->location:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$1500(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->location:Ljava/lang/String;

    .line 104
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$1600(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 105
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->originalStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$1700(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->originalStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 106
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->originalAllDay:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$1800(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->originalAllDay:Z

    .line 107
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hasOmittedAttendees:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$1900(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->hasOmittedAttendees:Z

    .line 108
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$2000(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    .line 109
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->recurringEventId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$2100(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->recurringEventId:Ljava/lang/String;

    .line 110
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->reminders:Ljava/util/List;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$2200(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->reminders:Ljava/util/List;

    .line 111
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$2300(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 112
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$2400(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    .line 113
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->structuredLocation:Ljava/util/List;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$2500(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->structuredLocation:Ljava/util/List;

    .line 114
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->attachments:Ljava/util/List;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$2600(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->attachments:Ljava/util/List;

    .line 115
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->title:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$2700(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->title:Ljava/lang/String;

    .line 116
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$2800(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/EventSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    .line 117
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->availability:Lcom/google/calendar/v2/client/service/api/events/Availability;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$2900(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

    .line 118
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$3000(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    .line 119
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->backgroundImageUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$3100(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->backgroundImageUrl:Ljava/lang/String;

    .line 120
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->backgroundVideoUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$3200(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->backgroundVideoUrl:Ljava/lang/String;

    .line 121
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->titleAnnotations:Ljava/util/List;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$3300(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->titleAnnotations:Ljava/util/List;

    .line 122
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hasSmartMail:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->access$3400(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->hasSmartMail:Z

    .line 123
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 424
    if-ne p0, p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 428
    goto :goto_0

    .line 430
    :cond_3
    check-cast p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;

    .line 433
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 434
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 435
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->title:Ljava/lang/String;

    .line 436
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 437
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 438
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    .line 439
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    .line 440
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->isAllDay:Z

    iget-boolean v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->isAllDay:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 442
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->description:Ljava/lang/String;

    .line 443
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->location:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->location:Ljava/lang/String;

    .line 444
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanModify:Z

    iget-boolean v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanModify:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanInviteOthers:Z

    iget-boolean v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanInviteOthers:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanSeeGuests:Z

    iget-boolean v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanSeeGuests:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 448
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->reminders:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->reminders:Ljava/util/List;

    .line 449
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    .line 450
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->structuredLocation:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->structuredLocation:Ljava/util/List;

    .line 451
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->attachments:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->attachments:Ljava/util/List;

    .line 452
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->attendees:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->attendees:Ljava/util/List;

    .line 453
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->relatedContacts:Ljava/util/List;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->relatedContacts:Ljava/util/List;

    .line 454
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 455
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 456
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getEventSource()Lcom/google/calendar/v2/client/service/api/events/EventSource;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getEventSource()Lcom/google/calendar/v2/client/service/api/events/EventSource;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

    .line 457
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    .line 458
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 459
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 460
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getBackgroundVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getBackgroundVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 461
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getTitleAnnotations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getTitleAnnotations()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->attachments:Ljava/util/List;

    return-object v0
.end method

.method public getAttendees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->attendees:Ljava/util/List;

    return-object v0
.end method

.method public getAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

    return-object v0
.end method

.method public bridge synthetic getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->backgroundImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->backgroundVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    return-object v0
.end method

.method public bridge synthetic getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method public getEndTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EventKey;->getEventId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventKey()Lcom/google/calendar/v2/client/service/api/common/EventKey;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    return-object v0
.end method

.method public getEventSource()Lcom/google/calendar/v2/client/service/api/events/EventSource;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    return-object v0
.end method

.method public getFirstStart()Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->firstStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method public bridge synthetic getFlair()Lcom/google/calendar/v2/client/service/api/events/FlairKey;
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getFlair()Lcom/google/calendar/v2/client/service/api/events/FlairKey;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    return-object v0
.end method

.method public getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->hangout:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    return-object v0
.end method

.method public getInstanceType()Lcom/google/calendar/v2/client/service/api/events/InstanceType;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->instanceType:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    return-object v0
.end method

.method public getKey()Lcom/google/calendar/v2/client/service/api/common/EventKey;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getKey()Lcom/google/calendar/v2/client/service/api/common/EventKey;

    move-result-object v0

    return-object v0
.end method

.method public getLabelColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizer()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    return-object v0
.end method

.method public getOriginalAllDay()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->originalAllDay:Z

    return v0
.end method

.method public getOriginalStart()Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->originalStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method public declared-synchronized getOwnResponse()Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 1

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->ownResponseExtracted:Z

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->ownResponseExtracted:Z

    .line 234
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->attendees:Ljava/util/List;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->extractSelfResponse(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->ownResponse:Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->ownResponse:Lcom/google/calendar/v2/client/service/api/events/Attendee;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    return-object v0
.end method

.method public getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    return-object v0
.end method

.method public getRecurringEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->recurringEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/contacts/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->relatedContacts:Ljava/util/List;

    return-object v0
.end method

.method public getReminders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->reminders:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method public getStartTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    return-object v0
.end method

.method public getStructuredLocation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->structuredLocation:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->titleAnnotations:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getType()Lcom/google/calendar/v2/client/service/api/events/EventType;
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getType()Lcom/google/calendar/v2/client/service/api/events/EventType;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lcom/google/calendar/v2/client/service/api/events/Visibility;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    return-object v0
.end method

.method public guestsCanInviteOthers()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanInviteOthers:Z

    return v0
.end method

.method public guestsCanModify()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanModify:Z

    return v0
.end method

.method public guestsCanSeeGuests()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanSeeGuests:Z

    return v0
.end method

.method public hasAttendeesBesidesSelf()Z
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->attendees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 310
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isSelf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasHiddenPrivateDetails()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 354
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    sget-object v3, Lcom/google/calendar/v2/client/service/api/events/Visibility;->PUBLIC:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    if-ne v2, v3, :cond_0

    .line 364
    :goto_0
    return v1

    .line 358
    :cond_0
    sget-object v2, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$1;->$SwitchMap$com$google$calendar$v2$client$service$api$calendars$AccessRole:[I

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getAccessRole()Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/calendar/v2/client/service/api/calendars/AccessRole;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v0

    .line 360
    goto :goto_0

    .line 362
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v2

    sget-object v3, Lcom/google/calendar/v2/client/service/api/events/Availability;->BUSY:Lcom/google/calendar/v2/client/service/api/events/Availability;

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasOmittedAttendees()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->hasOmittedAttendees:Z

    return v0
.end method

.method public hasSmartMail()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->hasSmartMail:Z

    return v0
.end method

.method public hasTitleAnnotations()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->titleAnnotations:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->titleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EventKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->isAllDay:Z

    return v0
.end method

.method public isEquivalentTo(Lcom/google/calendar/v2/client/service/api/events/MutableEvent;)Z
    .locals 1

    .prologue
    .line 466
    invoke-static {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->builderFrom(Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->build()Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOrganizerCopy()Z
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isOrganizerCopy()Z

    move-result v0

    return v0
.end method

.method public isRecurring()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isUnsupportedRecurring()Z
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isUnsupportedRecurring()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 471
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "EventKey"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    .line 472
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Title"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->title:Ljava/lang/String;

    .line 473
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Start"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 474
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "End"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 475
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Recurrence"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    .line 476
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "FirstStart"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->firstStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 477
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "OriginalStart"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->originalStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 478
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "RecurringEventId"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->recurringEventId:Ljava/lang/String;

    .line 479
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "InstanceType"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->instanceType:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    .line 480
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Description"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->description:Ljava/lang/String;

    .line 481
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Organizer"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 482
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Creator"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 483
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Label color"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 484
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Reminders"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->reminders:Ljava/util/List;

    .line 485
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Permissions"

    .line 486
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Location"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->location:Ljava/lang/String;

    .line 487
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Structured location"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->structuredLocation:Ljava/util/List;

    .line 488
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Attachments"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->attachments:Ljava/util/List;

    .line 489
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Hangout"

    .line 490
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "EventSource"

    .line 491
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getEventSource()Lcom/google/calendar/v2/client/service/api/events/EventSource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Availability"

    .line 492
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Visibility"

    .line 493
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getVisibility()Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Guests can invite others"

    .line 494
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanInviteOthers()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Guests can see guests"

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->guestsCanSeeGuests:Z

    .line 495
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Background Image"

    .line 496
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Background Video"

    .line 497
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getBackgroundVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Title annotations"

    .line 498
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->getTitleAnnotations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "HasSmartMail"

    .line 499
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;->hasSmartMail()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    return-object v0
.end method
