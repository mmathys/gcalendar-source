.class public Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;
.super Lcom/google/calendar/v2/client/service/impl/events/EventBase;
.source "MutableEventImpl.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/events/MutableEvent;
.implements Lcom/google/calendar/v2/client/service/common/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;,
        Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;,
        Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;,
        Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$VisibilityAtom;,
        Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$AvailabilityAtom;,
        Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$GuestsCanModifyAtom;
    }
.end annotation


# instance fields
.field private final attachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private final attendeeUtil:Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;

.field private final attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private final availability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Availability;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundImageUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundVideoUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final calendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation
.end field

.field private final creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

.field private final description:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final endTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private final endTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

.field private final eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

.field private final foregroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final guestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private final guestsCanModify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private final guestsCanSeeGuests:Z

.field private final hangout:Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;

.field private final hasOmittedAttendees:Z

.field private hasSmartMail:Z

.field private final isAllDay:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;

.field private key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

.field private final labelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ProxyListener",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/MutableEvent;",
            ">;"
        }
    .end annotation
.end field

.field private listenersRegistered:Z

.field private final location:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ChangeNotifier",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/MutableEvent;",
            ">;"
        }
    .end annotation
.end field

.field private organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

.field private final ownResponse:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private final recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

.field private final relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/contacts/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final reminders:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private final startTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field private final startTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

.field private final structuredLocation:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

.field private final visibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Visibility;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)V
    .locals 4

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;-><init>()V

    .line 203
    invoke-static {}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->newInstance()Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    .line 204
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-static {v0, p0}, Lcom/google/calendar/v2/client/service/common/ProxyListener;->newInstance(Lcom/google/calendar/v2/client/service/common/ChangeNotifier;Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ProxyListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    .line 206
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$300(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->calendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 207
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->eventId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$400(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    new-instance v1, Lcom/google/calendar/v2/client/service/api/common/EventKey;

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/calendar/v2/client/service/api/common/EventKey;-><init>(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    .line 209
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$500(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 210
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$600(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 212
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->title:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$700(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->titleAnnotations:Ljava/util/List;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$800(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->title:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    .line 213
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->startTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$900(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 214
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->endTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$1000(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 215
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->startTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$1100(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;-><init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;Lcom/google/calendar/v2/client/service/api/time/TimeZone;Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;)V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    .line 216
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->endTimeZone:Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$1200(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;-><init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;Lcom/google/calendar/v2/client/service/api/time/TimeZone;Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;)V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    .line 217
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;

    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->isAllDay:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$1300(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;-><init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;Z)V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->isAllDay:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;

    .line 218
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->description:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$1400(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->description:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 219
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->location:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$1500(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->location:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 220
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->reminders:Ljava/util/Collection;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$1600(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->newObservableHashSet(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->reminders:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 221
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$GuestsCanModifyAtom;

    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->guestsCanModify:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$1700(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Z

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$GuestsCanModifyAtom;-><init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;Z)V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanModify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 222
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->guestsCanInviteOthers:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$1800(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 223
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->labelColor:Lcom/google/calendar/v2/client/service/api/common/Color;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$1900(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->labelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 224
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$300(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 225
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->calendar:Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$300(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 227
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->relatedContacts:Ljava/util/List;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$2000(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->newObservableHashSet(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 229
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->attendees:Ljava/util/Collection;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$2100(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->newObservableArrayList(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 231
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->guestsCanSeeGuests:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$2200(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanSeeGuests:Z

    .line 232
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->hasOmittedAttendees:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$2300(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->hasOmittedAttendees:Z

    .line 234
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 235
    new-instance v1, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    iget-object v3, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;-><init>(Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V

    iput-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendeeUtil:Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;

    .line 236
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendeeUtil:Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->extractSelfResponse()Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->ownResponse:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 238
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->structuredLocation:Ljava/util/Collection;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$2400(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->newObservableHashSet(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->structuredLocation:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 240
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->attachments:Ljava/util/Collection;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$2500(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->newObservableHashSet(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 241
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->hangout:Lcom/google/calendar/v2/client/service/api/events/Hangout;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$2600(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->hangout:Lcom/google/calendar/v2/client/service/api/events/Hangout;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$2600(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->from(Lcom/google/calendar/v2/client/service/api/events/Hangout;)Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;

    move-result-object v0

    .line 243
    :goto_0
    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->hangout:Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;

    .line 244
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;

    .line 245
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$2700(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/ModifiableObservableRecurrenceImpl;-><init>(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    .line 246
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->hasSmartMail:Z
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$2800(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->hasSmartMail:Z

    .line 247
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$2900(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/EventSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    .line 248
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$VisibilityAtom;

    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->visibility:Lcom/google/calendar/v2/client/service/api/events/Visibility;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$3000(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$VisibilityAtom;-><init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;Lcom/google/calendar/v2/client/service/api/events/Visibility;)V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 249
    new-instance v1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$AvailabilityAtom;

    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->availability:Lcom/google/calendar/v2/client/service/api/events/Availability;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$3100(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v0

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->isAllDay:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;

    .line 250
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;->matchingAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v2

    .line 249
    invoke-static {v0, v2}, Lcom/google/common/base/Objects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Availability;

    invoke-direct {v1, p0, v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$AvailabilityAtom;-><init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;Lcom/google/calendar/v2/client/service/api/events/Availability;)V

    iput-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->availability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 251
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->backgroundImageUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$3200(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundImageUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 252
    # getter for: Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->backgroundVideoUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->access$3300(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundVideoUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 253
    return-void

    .line 243
    :cond_0
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;-><init>()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$1;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;-><init>(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanModify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->availability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public static builderFrom(Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;
    .locals 3

    .prologue
    .line 297
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;-><init>(Ljava/lang/String;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    .line 298
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getOrganizer()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setOrganizer(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 299
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getCreator()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setCreator(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 300
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setTitle(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 301
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getTitleAnnotations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setTitleAnnotations(Ljava/util/List;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 302
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setStartTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 303
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setEndTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 304
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStartTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setStartTimeZone(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 305
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getEndTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setEndTimeZone(Lcom/google/calendar/v2/client/service/api/time/TimeZone;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 306
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->isAllDay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setIsAllDay(Z)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 307
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setDescription(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 308
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setLocation(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 309
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getReminders()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setReminders(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 310
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setRecurrenceData(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 311
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->guestsCanModify()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setGuestsCanModify(Z)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 312
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->guestsCanInviteOthers()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setGuestsCanInviteOthers(Z)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 313
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getLabelColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setLabelColor(Lcom/google/calendar/v2/client/service/api/common/Color;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 314
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->guestsCanSeeGuests()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setGuestsCanSeeGuests(Z)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 315
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getAttendees()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->hasOmittedAttendees()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setAttendees(Ljava/util/Collection;Z)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 316
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getAttachments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setAttachments(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 317
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getRelatedContacts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setRelatedContacts(Ljava/util/List;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 319
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getStructuredLocation()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setStructuredLocation(Ljava/util/Collection;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 320
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setHangout(Lcom/google/calendar/v2/client/service/api/events/Hangout;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 321
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->hasSmartMail()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setHasSmartMail(Z)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 322
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getEventSource()Lcom/google/calendar/v2/client/service/api/events/EventSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setEventSource(Lcom/google/calendar/v2/client/service/api/events/EventSource;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 323
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setAvailability(Lcom/google/calendar/v2/client/service/api/events/Availability;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 324
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getVisibility()Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setVisibility(Lcom/google/calendar/v2/client/service/api/events/Visibility;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 325
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setBackgroundImageUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 326
    invoke-interface {p0}, Lcom/google/calendar/v2/client/service/api/events/Event;->getBackgroundVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;->setBackgroundVideoUrl(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$Builder;

    move-result-object v0

    .line 297
    return-object v0
.end method

.method private declared-synchronized ensureListenersRegistered()V
    .locals 2

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listenersRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 290
    :goto_0
    monitor-exit p0

    return-void

    .line 264
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listenersRegistered:Z

    .line 265
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->calendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 266
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->title:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 267
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 268
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 269
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 270
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 271
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->isAllDay:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 272
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->description:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 273
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->location:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 274
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->reminders:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 275
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanModify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 276
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 277
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->labelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 278
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 279
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 280
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->ownResponse:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 281
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 282
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 283
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->structuredLocation:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 284
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->hangout:Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 285
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 286
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->availability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 287
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 288
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundImageUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 289
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundVideoUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private extractAndUpdateOwnResponse()V
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->ownResponse:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendeeUtil:Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->extractSelfResponse()Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 886
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/api/events/MutableEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->ensureListenersRegistered()V

    .line 332
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 333
    return-void
.end method

.method public addRelatedContact(Lcom/google/calendar/v2/client/service/api/contacts/Contact;)V
    .locals 2

    .prologue
    .line 771
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canAddRelatedContact()Z

    move-result v0

    const-string v1, "no permissions"

    .line 772
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 774
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->add(Ljava/lang/Object;)Z

    .line 775
    return-void
.end method

.method public changeAttendeesToRelatedContacts()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 670
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v1

    .line 671
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canAddRelatedContact()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canUninvite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 673
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 675
    :cond_1
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 707
    :goto_0
    return-void

    .line 679
    :cond_2
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->startBatchUpdate()V

    .line 680
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->startBatchUpdate()V

    .line 682
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 683
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 684
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isOrganizer()Z

    move-result v2

    if-nez v2, :cond_3

    .line 688
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v3

    .line 689
    instance-of v2, v3, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    if-eqz v2, :cond_4

    .line 690
    move-object v0, v3

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/common/EmailPrincipalKey;->getEmail()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 691
    :goto_2
    instance-of v2, v3, Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;

    if-eqz v2, :cond_5

    .line 692
    move-object v0, v3

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/api/common/ProfileIdPrincipalKey;->getProfileId()Ljava/lang/String;

    move-result-object v2

    .line 693
    :goto_3
    iget-object v7, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    new-instance v8, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;

    invoke-direct {v8}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;-><init>()V

    .line 694
    invoke-virtual {v8, v3}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->setKey(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;

    move-result-object v3

    .line 695
    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getFallbackNameInternal()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->setFullName(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;

    move-result-object v3

    .line 696
    invoke-virtual {v3, v5}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->setPrimaryEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;

    move-result-object v3

    .line 697
    invoke-virtual {v3, v2}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->setPlusProfileId(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;

    move-result-object v2

    .line 698
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl$Builder;->build()Lcom/google/calendar/v2/client/service/impl/contacts/ContactImpl;

    move-result-object v2

    .line 693
    invoke-interface {v7, v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->add(Ljava/lang/Object;)Z

    .line 699
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendeeUtil:Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getPrincipal()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->uninvite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 703
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    .line 705
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    throw v1

    :cond_4
    move-object v5, v4

    .line 690
    goto :goto_2

    :cond_5
    move-object v2, v4

    .line 692
    goto :goto_3

    .line 703
    :cond_6
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    .line 705
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    goto/16 :goto_0
.end method

.method public changeOrganizer(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V
    .locals 2

    .prologue
    .line 879
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 880
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendeeUtil:Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    invoke-virtual {v0, v1}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->updateOrganizer(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V

    .line 881
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->extractAndUpdateOwnResponse()V

    .line 882
    return-void
.end method

.method public changeRelatedContactsToAttendees()V
    .locals 4

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    .line 712
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canRemoveRelatedContact()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canInvite()Z

    move-result v0

    if-nez v0, :cond_1

    .line 714
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 733
    :goto_0
    return-void

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->startBatchUpdate()V

    .line 721
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->startBatchUpdate()V

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/contacts/Contact;

    .line 724
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendeeUtil:Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/contacts/Contact;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->invite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 729
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    .line 731
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    throw v0

    .line 726
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 729
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    .line 731
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->finishBatchUpdate()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->calendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 970
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->title:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->dispose()V

    .line 971
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 972
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 973
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;->dispose()V

    .line 974
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;->dispose()V

    .line 975
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->isAllDay:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;->dispose()V

    .line 976
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->description:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 977
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->location:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 978
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->reminders:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->dispose()V

    .line 979
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanModify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->dispose()V

    .line 980
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->dispose()V

    .line 981
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->labelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 982
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 983
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 984
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->ownResponse:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 985
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->dispose()V

    .line 986
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->dispose()V

    .line 987
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->structuredLocation:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->dispose()V

    .line 988
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->dispose()V

    .line 989
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->hangout:Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;->dispose()V

    .line 990
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->dispose()V

    .line 991
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 992
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->availability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 993
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundImageUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 994
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundVideoUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 995
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->dispose()V

    .line 996
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/ProxyListener;->dispose()V

    .line 997
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 895
    if-ne p0, p1, :cond_1

    .line 903
    :cond_0
    :goto_0
    return v0

    .line 898
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 899
    goto :goto_0

    .line 901
    :cond_3
    check-cast p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;

    .line 903
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 904
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 905
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->title:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->title:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    .line 906
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->equalValue(Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 907
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 908
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    .line 909
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    .line 910
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->isAllDay:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;

    .line 911
    invoke-virtual {v2}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;->get()Z

    move-result v2

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->isAllDay:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;

    invoke-virtual {v3}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;->get()Z

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->calendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->calendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 913
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->description:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->description:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 914
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->location:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->location:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 915
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->reminders:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->reminders:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 916
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->equalContents(Lcom/google/calendar/v2/client/service/common/ObservableCollection;Lcom/google/calendar/v2/client/service/common/ObservableCollection;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    .line 917
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanModify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 918
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanModify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 919
    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v2

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->labelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->labelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 920
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->structuredLocation:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->structuredLocation:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 921
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->equalContents(Lcom/google/calendar/v2/client/service/common/ObservableCollection;Lcom/google/calendar/v2/client/service/common/ObservableCollection;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 923
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->equalContents(Lcom/google/calendar/v2/client/service/common/ObservableCollection;Lcom/google/calendar/v2/client/service/common/ObservableCollection;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanSeeGuests:Z

    .line 924
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanSeeGuests:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 925
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->equalContents(Lcom/google/calendar/v2/client/service/common/ObservableCollection;Lcom/google/calendar/v2/client/service/common/ObservableCollection;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 927
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->equalContents(Lcom/google/calendar/v2/client/service/common/ObservableCollection;Lcom/google/calendar/v2/client/service/common/ObservableCollection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 929
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    .line 930
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->availability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->availability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 931
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 932
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundImageUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundImageUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 933
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundVideoUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v3, p1, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundVideoUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 935
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public finishBatchUpdate()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/ProxyListener;->finishBatchUpdate()V

    .line 348
    return-void
.end method

.method public getAttachments()Ljava/util/List;
    .locals 2
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
    .line 754
    new-instance v0, Ljava/util/ArrayList;

    .line 755
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableAttachments()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 754
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/GwtExportableCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttendees()Ljava/util/List;
    .locals 2
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
    .line 792
    new-instance v0, Ljava/util/ArrayList;

    .line 793
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->observableAttendees()Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 792
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/GwtExportableCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableAvailability()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Availability;

    return-object v0
.end method

.method public getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->observableBackgroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public getBackgroundImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableBackgroundImageUrl()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableBackgroundVideoUrl()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCalendar()Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->calendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    return-object v0
.end method

.method public bridge synthetic getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableDescription()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method public getEndTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableEndTimeZone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EventKey;->getEventId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventKey()Lcom/google/calendar/v2/client/service/api/common/EventKey;
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    return-object v0
.end method

.method public getEventSource()Lcom/google/calendar/v2/client/service/api/events/EventSource;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->eventSource:Lcom/google/calendar/v2/client/service/api/events/EventSource;

    return-object v0
.end method

.method public bridge synthetic getFlair()Lcom/google/calendar/v2/client/service/api/events/FlairKey;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getFlair()Lcom/google/calendar/v2/client/service/api/events/FlairKey;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->observableForegroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;
    .locals 1

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableHangout()Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;

    move-result-object v0

    return-object v0
.end method

.method public getLabelColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableLabelColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableLocation()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizer()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    return-object v0
.end method

.method public getOwnResponse()Lcom/google/calendar/v2/client/service/api/events/Attendee;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->ownResponse:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    return-object v0
.end method

.method public bridge synthetic getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    return-object v0
.end method

.method public getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    return-object v0
.end method

.method public getRelatedContacts()Ljava/util/List;
    .locals 2
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
    .line 765
    new-instance v0, Ljava/util/ArrayList;

    .line 766
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->observableRelatedContacts()Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 765
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/GwtExportableCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReminders()Ljava/util/List;
    .locals 2
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
    .line 453
    new-instance v0, Ljava/util/ArrayList;

    .line 454
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableReminders()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 453
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/GwtExportableCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRooms()Ljava/util/List;
    .locals 5
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
    .line 799
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->observableAttendees()Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    move-result-object v0

    .line 800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 801
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 802
    sget-object v3, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->ROOM:Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->getType()Lcom/google/calendar/v2/client/service/api/events/AttendeeType;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/calendar/v2/client/service/api/events/AttendeeType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 803
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 806
    :cond_1
    return-object v1
.end method

.method public getStartTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method public getStartTimeZone()Lcom/google/calendar/v2/client/service/api/time/TimeZone;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableStartTimeZone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/time/TimeZone;

    return-object v0
.end method

.method public getStructuredLocation()Ljava/util/List;
    .locals 2
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
    .line 743
    new-instance v0, Ljava/util/ArrayList;

    .line 744
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableStructuredLocation()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 743
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/GwtExportableCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitleAnnotations()Ljava/util/List;
    .locals 2
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
    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableTitleAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic getType()Lcom/google/calendar/v2/client/service/api/events/EventType;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->getType()Lcom/google/calendar/v2/client/service/api/events/EventType;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lcom/google/calendar/v2/client/service/api/events/Visibility;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableVisibility()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Visibility;

    return-object v0
.end method

.method public guestsCanInviteOthers()Z
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableGuestsCanInviteOthers()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public guestsCanModify()Z
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableGuestsCanModify()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public guestsCanSeeGuests()Z
    .locals 1

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanSeeGuests:Z

    return v0
.end method

.method public hasAttendeesBesidesSelf()Z
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/Attendee;

    .line 817
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isSelf()Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    const/4 v0, 0x1

    .line 821
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHiddenPrivateDetails()Z
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    return v0
.end method

.method public hasOmittedAttendees()Z
    .locals 1

    .prologue
    .line 826
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->hasOmittedAttendees:Z

    return v0
.end method

.method public hasSmartMail()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->hasSmartMail:Z

    return v0
.end method

.method public hasTitleAnnotations()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->title:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->isEmpty()Z

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
    .line 890
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/EventKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public invite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->invite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public invite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 594
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canInvite()Z

    move-result v0

    const-string v1, "can not invite"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 597
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startBatchUpdate()V

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendeeUtil:Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;

    invoke-virtual {v0, p1, p2}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->invite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Ljava/lang/String;)Z

    move-result v0

    .line 600
    if-eqz v0, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->extractAndUpdateOwnResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->finishBatchUpdate()V

    .line 606
    return-void

    .line 604
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->finishBatchUpdate()V

    throw v0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isNewEvent()Z
    .locals 2

    .prologue
    .line 831
    const-string v0, ""

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOrganizerCopy()Z
    .locals 1

    .prologue
    .line 1207
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->isNewEvent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isOrganizerCopy()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecurring()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->get()Ljava/lang/Object;

    move-result-object v0

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
    .line 65
    invoke-super {p0}, Lcom/google/calendar/v2/client/service/impl/events/EventBase;->isUnsupportedRecurring()Z

    move-result v0

    return v0
.end method

.method public mutableAttachments()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    return-object v0
.end method

.method public mutableAvailability()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Availability;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->availability:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableBackgroundImageUrl()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundImageUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableBackgroundVideoUrl()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundVideoUrl:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableDescription()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->description:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableEndTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableEndTimeZone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/TimeZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    return-object v0
.end method

.method public mutableGuestsCanInviteOthers()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method public mutableGuestsCanModify()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->guestsCanModify:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method public mutableHangout()Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->hangout:Lcom/google/calendar/v2/client/service/impl/events/ModifiableHangoutImpl;

    return-object v0
.end method

.method public mutableIsAllDay()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->isAllDay:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$IsAllDayAtom;

    return-object v0
.end method

.method public mutableLabelColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->labelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableLocation()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->location:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->recurrenceData:Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    return-object v0
.end method

.method public mutableReminders()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->reminders:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    return-object v0
.end method

.method public mutableStartTime()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/DateTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public mutableStartTimeZone()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/time/TimeZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTimeZone:Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl$TimeZoneAtom;

    return-object v0
.end method

.method public mutableStructuredLocation()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/geo/EventLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->structuredLocation:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    return-object v0
.end method

.method public mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->title:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableText()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    return-object v0
.end method

.method public mutableTitleAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->title:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    return-object v0
.end method

.method public mutableVisibility()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Visibility;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->visibility:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public observableAttendees()Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendees:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->unmodifiableCollection(Lcom/google/calendar/v2/client/service/common/ObservableCollection;)Lcom/google/calendar/v2/client/service/common/ObservableCollection;

    move-result-object v0

    return-object v0
.end method

.method public observableBackgroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public observableCalendar()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 861
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->calendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public observableForegroundColor()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public observableOwnResponse()Lcom/google/calendar/v2/client/service/common/ObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->ownResponse:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public observableRelatedContacts()Lcom/google/calendar/v2/client/service/common/ObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/contacts/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    return-object v0
.end method

.method public removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-",
            "Lcom/google/calendar/v2/client/service/api/events/MutableEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->notifier:Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 338
    return-void
.end method

.method public removeRelatedContact(Lcom/google/calendar/v2/client/service/api/contacts/Contact;)V
    .locals 2

    .prologue
    .line 779
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canRemoveRelatedContact()Z

    move-result v0

    const-string v1, "no permissions"

    .line 780
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 782
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->relatedContacts:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->remove(Ljava/lang/Object;)Z

    .line 783
    return-void
.end method

.method public respond(Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 643
    .line 644
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canRespond()Z

    move-result v0

    const-string v1, "can not respond"

    .line 643
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 646
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startBatchUpdate()V

    .line 648
    :try_start_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendeeUtil:Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->respond(Lcom/google/calendar/v2/client/service/api/events/Attendee$Response;Ljava/lang/String;I)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    .line 650
    if-eqz v0, :cond_0

    .line 651
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->ownResponse:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    :cond_0
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->finishBatchUpdate()V

    .line 656
    return-void

    .line 654
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->finishBatchUpdate()V

    throw v0
.end method

.method public setCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 3

    .prologue
    .line 865
    .line 866
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getAccountKey()Lcom/google/calendar/v2/client/service/api/common/AccountKey;

    move-result-object v0

    .line 865
    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 868
    :goto_0
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 869
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 870
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->calendar:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 871
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/common/CalendarKey;->getPrincipalKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    move-result-object v1

    .line 872
    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendeeUtil:Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;

    invoke-virtual {v2, v1, v0}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->updateSelfPrincipalKey(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->extractAndUpdateOwnResponse()V

    .line 875
    :cond_0
    new-instance v0, Lcom/google/calendar/v2/client/service/api/common/EventKey;

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getCalendarKey()Lcom/google/calendar/v2/client/service/api/common/CalendarKey;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/calendar/v2/client/service/api/common/EventKey;-><init>(Lcom/google/calendar/v2/client/service/api/common/CalendarKey;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    .line 876
    return-void

    .line 865
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOptional(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Z)V
    .locals 2

    .prologue
    .line 632
    .line 633
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canInvite()Z

    move-result v0

    const-string v1, "can not invite/set optional"

    .line 632
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 634
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendeeUtil:Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;

    invoke-virtual {v0, p1, p2}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->setOptional(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;Z)Lcom/google/calendar/v2/client/service/api/events/Attendee;

    move-result-object v0

    .line 635
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/Attendee;->isSelf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->ownResponse:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 638
    :cond_0
    return-void
.end method

.method public declared-synchronized startBatchUpdate()V
    .locals 1

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->listener:Lcom/google/calendar/v2/client/service/common/ProxyListener;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/common/ProxyListener;->startBatchUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 941
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "EventKey"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->key:Lcom/google/calendar/v2/client/service/api/common/EventKey;

    .line 942
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Title"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->title:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    .line 943
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Start"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 944
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "End"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->endTime:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 945
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Description"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->description:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 946
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Organizer"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->organizer:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 947
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Creator"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->creator:Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;

    .line 948
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Label color"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->labelColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 949
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Background color"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->backgroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 950
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Foreground color"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->foregroundColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 951
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Reminders"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->reminders:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 952
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Permissions"

    .line 953
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Location"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->location:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 954
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Structured location"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->structuredLocation:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 955
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Attachments"

    iget-object v2, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attachments:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 956
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Hangout"

    .line 957
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Has SmartMail"

    .line 958
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->hasSmartMail()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "EventSource"

    .line 959
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getEventSource()Lcom/google/calendar/v2/client/service/api/events/EventSource;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Availability"

    .line 960
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getAvailability()Lcom/google/calendar/v2/client/service/api/events/Availability;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Visibility"

    .line 961
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getVisibility()Lcom/google/calendar/v2/client/service/api/events/Visibility;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Background Image"

    .line 962
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "Background Video"

    .line 963
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getBackgroundVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 964
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 941
    return-object v0
.end method

.method public uninvite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)V
    .locals 2

    .prologue
    .line 615
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->getPermissions()Lcom/google/calendar/v2/client/service/api/events/EventPermissions;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/EventPermissions;->canUninvite()Z

    move-result v0

    const-string v1, "can not uninvite"

    .line 616
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 619
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->startBatchUpdate()V

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->attendeeUtil:Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;

    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/impl/events/EventAttendeeUtil;->uninvite(Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;)Z

    move-result v0

    .line 622
    if-eqz v0, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->extractAndUpdateOwnResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->finishBatchUpdate()V

    .line 628
    return-void

    .line 626
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/MutableEventImpl;->finishBatchUpdate()V

    throw v0
.end method
