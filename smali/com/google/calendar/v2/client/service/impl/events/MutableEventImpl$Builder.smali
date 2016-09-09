.class public Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
.super Ljava/lang/Object;
.source "MutableEventImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private attachments:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private attendees:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

.field private backgroundImageUrl:Ljava/lang/String;

.field private backgroundVideoUrl:Ljava/lang/String;

.field private final calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

.field private creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

.field private description:Ljava/lang/String;

.field private endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

.field private eventId:Ljava/lang/String;

.field private eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

.field private guestsCanInviteOthers:Z

.field private guestsCanModify:Z

.field private guestsCanSeeGuests:Z

.field private hangout:Lcom/google/calendar/v2/client/service/api/events/Hangout;

.field private hasOmittedAttendees:Z

.field private hasSmartMail:Z

.field private isAllDay:Z

.field private labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

.field private location:Ljava/lang/String;

.field private organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

.field private recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

.field private relatedContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/contacts/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private reminders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

.field private structuredLocation:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

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

.field private visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->guestsCanInviteOthers:Z

    .line 1025
    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->guestsCanSeeGuests:Z

    .line 1034
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    .line 1040
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->eventId:Ljava/lang/String;

    .line 1041
    iput-object p2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 1042
    return-void
.end method

.method static synthetic access$1000(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Z
    .locals 1

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->isAllDay:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->description:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->location:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->reminders:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Z
    .locals 1

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->guestsCanModify:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Z
    .locals 1

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->guestsCanInviteOthers:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->relatedContacts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->attendees:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Z
    .locals 1

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->guestsCanSeeGuests:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Z
    .locals 1

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->hasOmittedAttendees:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->structuredLocation:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->attachments:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/Hangout;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->hangout:Lcom/google/calendar/v2/client/service/api/events/Hangout;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Z
    .locals 1

    .prologue
    .line 1004
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->hasSmartMail:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/EventSource;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/Visibility;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/Availability;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->backgroundImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->backgroundVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->titleAnnotations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;
    .locals 2

    .prologue
    .line 1045
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;-><init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$1;)V

    return-object v0
.end method

.method public setAttachments(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;)",
            "Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->attachments:Ljava/util/Collection;

    .line 1150
    return-object p0
.end method

.method public setAttendees(Ljava/util/Collection;Z)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;Z)",
            "Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->attendees:Ljava/util/Collection;

    .line 1138
    iput-boolean p2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->hasOmittedAttendees:Z

    .line 1139
    return-object p0
.end method

.method public setAvailability(Lcom/google/calendar/v2/client/service/api/events/Availability;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

    .line 1176
    return-object p0
.end method

.method public setBackgroundImageUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->backgroundImageUrl:Ljava/lang/String;

    .line 1188
    return-object p0
.end method

.method public setBackgroundVideoUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->backgroundVideoUrl:Ljava/lang/String;

    .line 1195
    return-object p0
.end method

.method public setCreator(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 1121
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->description:Ljava/lang/String;

    .line 1085
    return-object p0
.end method

.method public setEndTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 1065
    return-object p0
.end method

.method public setEndTimeZone(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    .line 1075
    return-object p0
.end method

.method public setEventSource(Lcom/google/calendar/v2/client/service/api/events/EventSource;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    .line 1171
    return-object p0
.end method

.method public setGuestsCanInviteOthers(Z)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1104
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->guestsCanInviteOthers:Z

    .line 1105
    return-object p0
.end method

.method public setGuestsCanModify(Z)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1099
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->guestsCanModify:Z

    .line 1100
    return-object p0
.end method

.method public setGuestsCanSeeGuests(Z)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1131
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->guestsCanSeeGuests:Z

    .line 1132
    return-object p0
.end method

.method public setHangout(Lcom/google/calendar/v2/client/service/api/events/Hangout;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->hangout:Lcom/google/calendar/v2/client/service/api/events/Hangout;

    .line 1155
    return-object p0
.end method

.method public setHasSmartMail(Z)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1165
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->hasSmartMail:Z

    .line 1166
    return-object p0
.end method

.method public setIsAllDay(Z)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1079
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->isAllDay:Z

    .line 1080
    return-object p0
.end method

.method public setLabelColor(Lcom/google/calendar/v2/client/service/api/common/Color;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 1110
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->location:Ljava/lang/String;

    .line 1090
    return-object p0
.end method

.method public setOrganizer(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 1115
    return-object p0
.end method

.method public setRecurrenceData(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    .line 1161
    return-object p0
.end method

.method public setRelatedContacts(Ljava/util/List;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/contacts/Contact;",
            ">;)",
            "Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 1125
    .line 1126
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/common/GwtExportableCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->relatedContacts:Ljava/util/List;

    .line 1127
    return-object p0
.end method

.method public setReminders(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;)",
            "Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->reminders:Ljava/util/Collection;

    .line 1095
    return-object p0
.end method

.method public setStartTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 1060
    return-object p0
.end method

.method public setStartTimeZone(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    .line 1070
    return-object p0
.end method

.method public setStructuredLocation(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;)",
            "Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->structuredLocation:Ljava/util/Collection;

    .line 1145
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->title:Ljava/lang/String;

    .line 1055
    return-object p0
.end method

.method public setTitleAnnotations(Ljava/util/List;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
            ">;)",
            "Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->titleAnnotations:Ljava/util/List;

    .line 1200
    return-object p0
.end method

.method public setVisibility(Lcom/google/calendar/v2/client/service/api/events/Visibility;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    .line 1181
    return-object p0
.end method
