.class public Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
.super Ljava/lang/Object;
.source "ImmutableEventImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private attendees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

.field private backgroundImageUrl:Ljava/lang/String;

.field private backgroundVideoUrl:Ljava/lang/String;

.field private calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

.field private creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

.field private description:Ljava/lang/String;

.field private endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

.field private eventId:Ljava/lang/String;

.field private eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

.field private firstStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private guestsCanInviteOthers:Z

.field private guestsCanModify:Z

.field private guestsCanSeeGuests:Z

.field private hangout:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

.field private hasOmittedAttendees:Z

.field private hasSmartMail:Z

.field private instanceType:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

.field private isAllDay:Z

.field private labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

.field private location:Ljava/lang/String;

.field private organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

.field private originalAllDay:Z

.field private originalStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

.field private recurringEventId:Ljava/lang/String;

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

.field private reminders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

.field private structuredLocation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;"
        }
    .end annotation
.end field

.field private temporaryCalendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

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

.field private useDefaultReminders:Z

.field private visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->relatedContacts:Ljava/util/List;

    .line 510
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->attendees:Ljava/util/List;

    .line 519
    iput-boolean v1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanInviteOthers:Z

    .line 521
    iput-boolean v1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanSeeGuests:Z

    .line 522
    sget-object v0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;->NO_HANGOUT:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hangout:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    .line 533
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->reminders:Ljava/util/List;

    .line 536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->structuredLocation:Ljava/util/List;

    .line 537
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->attachments:Ljava/util/List;

    .line 542
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Availability;->BUSY:Lcom/google/calendar/v2/client/service/api/events/Availability;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

    .line 543
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;->DEFAULT:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    .line 546
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->titleAnnotations:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->relatedContacts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->attendees:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanSeeGuests:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hangout:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/InstanceType;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->instanceType:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->isAllDay:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->location:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->originalStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->originalAllDay:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hasOmittedAttendees:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->recurringEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->reminders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->structuredLocation:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->attachments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/EventSource;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/Availability;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/Visibility;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->backgroundImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->backgroundVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->titleAnnotations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hasSmartMail:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->description:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->firstStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanInviteOthers:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanModify:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/calendar/v2/client/service/api/events/ImmutableEvent;
    .locals 1

    .prologue
    .line 550
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;

    invoke-direct {v0, p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl;-><init>(Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;)V

    return-object v0
.end method

.method public calculateCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    .locals 4

    .prologue
    .line 624
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->temporaryCalendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    if-nez v0, :cond_0

    .line 625
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No temporary key. Calendar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->temporaryCalendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 880
    instance-of v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    if-nez v1, :cond_1

    .line 922
    :cond_0
    :goto_0
    return v0

    .line 883
    :cond_1
    check-cast p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;

    .line 884
    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->relatedContacts:Ljava/util/List;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->relatedContacts:Ljava/util/List;

    .line 885
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->attendees:Ljava/util/List;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->attendees:Ljava/util/List;

    .line 886
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 887
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 888
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->description:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->description:Ljava/lang/String;

    .line 889
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 890
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    .line 891
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->eventId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->eventId:Ljava/lang/String;

    .line 892
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->firstStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->firstStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 893
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanInviteOthers:Z

    .line 894
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanInviteOthers:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanModify:Z

    .line 895
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanModify:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanSeeGuests:Z

    .line 896
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanSeeGuests:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hangout:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hangout:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    .line 897
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->instanceType:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->instanceType:Lcom/google/calendar/v2/client/service/api/events/InstanceType;

    .line 898
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->isAllDay:Z

    .line 899
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->isAllDay:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 900
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->location:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->location:Ljava/lang/String;

    .line 901
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 902
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->originalStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->originalStart:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 903
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hasOmittedAttendees:Z

    .line 904
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hasOmittedAttendees:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    .line 905
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->recurringEventId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->recurringEventId:Ljava/lang/String;

    .line 906
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->reminders:Ljava/util/List;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->reminders:Ljava/util/List;

    .line 907
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 908
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    .line 909
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->structuredLocation:Ljava/util/List;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->structuredLocation:Ljava/util/List;

    .line 910
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->attachments:Ljava/util/List;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->attachments:Ljava/util/List;

    .line 911
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->temporaryCalendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->temporaryCalendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    .line 912
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->title:Ljava/lang/String;

    .line 913
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->useDefaultReminders:Z

    .line 914
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->useDefaultReminders:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    .line 915
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

    .line 916
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    .line 917
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->backgroundImageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->backgroundImageUrl:Ljava/lang/String;

    .line 918
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->backgroundVideoUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->backgroundVideoUrl:Ljava/lang/String;

    .line 919
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->titleAnnotations:Ljava/util/List;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->titleAnnotations:Ljava/util/List;

    .line 920
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hasSmartMail:Z

    .line 921
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hasSmartMail:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public getKey()Lcom/google/calendar/v2/client/service/api/common/EventKey;
    .locals 3

    .prologue
    .line 601
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/EventKey;

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->calculateCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v1

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->eventId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/EventKey;-><init>(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;Ljava/lang/String;)V

    return-object v0
.end method

.method public getStartTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    const-string v1, "Start tz not set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->calculateCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->eventId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/calendar/v2/common/ObjectUtil;->hashCode(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAvailability(Lcom/google/calendar/v2/client/service/api/events/Availability;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->availability:Lcom/google/calendar/v2/client/service/api/events/Availability;

    .line 843
    return-object p0
.end method

.method public setCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 1

    .prologue
    .line 632
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->temporaryCalendarKey:Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    .line 634
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->description:Ljava/lang/String;

    .line 644
    return-object p0
.end method

.method public setEndTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 652
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 653
    return-object p0
.end method

.method public setEndTimeZone(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    .line 662
    return-object p0
.end method

.method public setEventId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->eventId:Ljava/lang/String;

    .line 675
    return-object p0
.end method

.method public setGuestsCanInviteOthers(Z)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 688
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanInviteOthers:Z

    .line 689
    return-object p0
.end method

.method public setGuestsCanModify(Z)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 693
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->guestsCanModify:Z

    .line 694
    return-object p0
.end method

.method public setHangout(Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hangout:Lcom/google/calendar/v2/client/service/impl/events/ImmutableHangoutImpl;

    .line 704
    return-object p0
.end method

.method public setHasSmartMail(Z)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 867
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hasSmartMail:Z

    .line 868
    return-object p0
.end method

.method public setImmutableAttachments(Ljava/util/List;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;)",
            "Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->attachments:Ljava/util/List;

    .line 743
    return-object p0
.end method

.method public setImmutableAttendees(Ljava/util/List;Z)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;Z)",
            "Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 720
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->attendees:Ljava/util/List;

    .line 721
    iput-boolean p2, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->hasOmittedAttendees:Z

    .line 722
    return-object p0
.end method

.method public setImmutableReminders(Ljava/util/List;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;)",
            "Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 731
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->reminders:Ljava/util/List;

    .line 732
    return-object p0
.end method

.method public setImmutableStructuredLocation(Ljava/util/List;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;)",
            "Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 737
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->structuredLocation:Ljava/util/List;

    .line 738
    return-object p0
.end method

.method public setIsAllDay(Z)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 752
    iput-boolean p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->isAllDay:Z

    .line 753
    return-object p0
.end method

.method public setLabelColor(Lcom/google/calendar/v2/client/service/api/common/Color;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 762
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->location:Ljava/lang/String;

    .line 767
    return-object p0
.end method

.method public setOrganizer(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 772
    return-object p0
.end method

.method public setRecurrenceData(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    .line 792
    return-object p0
.end method

.method public setStartTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 806
    return-object p0
.end method

.method public setStartTimeZone(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    .line 815
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->title:Ljava/lang/String;

    .line 820
    return-object p0
.end method

.method public setTitleAnnotations(Ljava/util/List;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
            ">;)",
            "Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;"
        }
    .end annotation

    .prologue
    .line 862
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->titleAnnotations:Ljava/util/List;

    .line 863
    return-object p0
.end method

.method public setVisibility(Lcom/google/calendar/v2/client/service/api/events/Visibility;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/ImmutableEventImpl$Builder;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;

    .line 848
    return-object p0
.end method
