.class public Lcom/android/calendar/newapi/model/EventViewScreenData;
.super Lcom/android/calendar/newapi/model/ScreenData;
.source "EventViewScreenData.java"

# interfaces
.implements Lcom/android/calendar/newapi/model/CalendarHolder;
.implements Lcom/android/calendar/newapi/model/CalendarStoreHolder;
.implements Lcom/android/calendar/newapi/model/ConferenceEvent;
.implements Lcom/android/calendar/newapi/model/EventHolder;
.implements Lcom/android/calendar/newapi/model/NotificationStoreHolder;
.implements Lcom/android/calendar/newapi/model/TimelineItemHolder;
.implements Lcom/android/calendar/newapi/model/TitleHolder;
.implements Lcom/android/calendar/newapi/model/VisibilityHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/model/ScreenData;",
        "Lcom/android/calendar/newapi/model/CalendarHolder;",
        "Lcom/android/calendar/newapi/model/CalendarStoreHolder;",
        "Lcom/android/calendar/newapi/model/ConferenceEvent;",
        "Lcom/android/calendar/newapi/model/EventHolder;",
        "Lcom/android/calendar/newapi/model/NotificationStoreHolder;",
        "Lcom/android/calendar/newapi/model/TimelineItemHolder",
        "<",
        "Lcom/android/calendar/timely/TimelineEvent;",
        ">;",
        "Lcom/android/calendar/newapi/model/TitleHolder;",
        "Lcom/android/calendar/newapi/model/VisibilityHolder;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/calendar/newapi/model/EventViewScreenData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalendarListEntry:Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

.field private mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

.field private mEvent:Lcom/google/android/calendar/api/Event;

.field private mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

.field private mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/android/calendar/newapi/model/EventViewScreenData$1;

    invoke-direct {v0}, Lcom/android/calendar/newapi/model/EventViewScreenData$1;-><init>()V

    sput-object v0, Lcom/android/calendar/newapi/model/EventViewScreenData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/calendar/newapi/model/ScreenData;-><init>()V

    .line 42
    const-class v0, Lcom/google/android/calendar/api/Event;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/Event;

    iput-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 43
    const-class v0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    iput-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mCalendarListEntry:Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/calendar/newapi/model/EventViewScreenData$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/model/EventViewScreenData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/android/calendar/newapi/model/NotificationStore;Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;Lcom/android/calendar/timely/TimelineEvent;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/calendar/newapi/model/ScreenData;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 35
    iput-object p2, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 36
    iput-object p3, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    .line 37
    iput-object p4, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mCalendarListEntry:Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    .line 38
    iput-object p5, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    .line 39
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarListEntry()Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mCalendarListEntry:Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    return-object v0
.end method

.method public getCalendarStore()Lcom/android/calendar/newapi/model/CalendarStore;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    return-object v0
.end method

.method public getColor(Landroid/content/res/Resources;)I
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 67
    invoke-static {}, Lcom/google/android/calendar/api/ColorCache;->getInstance()Lcom/google/android/calendar/api/ColorCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/calendar/api/ColorCache;->getEventColors(Landroid/accounts/Account;)Ljava/util/Collection;

    move-result-object v2

    .line 68
    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v3, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/android/calendar/newapi/model/CalendarStore;->getImmutableCalendar(Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    .line 70
    invoke-static {p1, v2, v0}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->newInstance(Landroid/content/res/Resources;Ljava/util/Collection;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/android/calendar/newapi/segment/common/ColorPalette;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v1}, Lcom/google/android/calendar/api/Event;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->getColorEntry(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/android/calendar/newapi/segment/common/ColorEntry;

    move-result-object v0

    iget v0, v0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->color:I

    return v0
.end method

.method public getConferenceAccessTokens()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/calendar/event/AccessCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/event/ConferenceCallUtils;->parseAccessCode(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 143
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getLocation()Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;->getEventLocations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getLocation()Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/structuredlocation/StructuredLocation;->getEventLocations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;

    iget-object v0, v0, Lcom/google/android/calendar/api/structuredlocation/EventLocation;->name:Ljava/lang/String;

    .line 145
    invoke-static {v0}, Lcom/android/calendar/event/ConferenceCallUtils;->parseAccessCode(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 147
    :cond_0
    return-object v1
.end method

.method public getEvent()Lcom/google/android/calendar/api/Event;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    return-object v0
.end method

.method public getNotificationStore()Lcom/android/calendar/newapi/model/NotificationStore;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    return-object v0
.end method

.method public getTimelineItem()Lcom/android/calendar/timely/TimelineEvent;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    return-object v0
.end method

.method public bridge synthetic getTimelineItem()Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/EventViewScreenData;->getTimelineItem()Lcom/android/calendar/timely/TimelineEvent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/newapi/model/EventVisibilityUtil;->fromEventVisibility(I)I

    move-result v0

    return v0
.end method

.method public isEditable()Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    iget-object v1, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    invoke-static {v0, v1}, Lcom/android/calendar/newapi/common/ApiUtils;->isEditable(Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Z

    move-result v0

    return v0
.end method

.method public setEvent(Lcom/google/android/calendar/api/Event;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 115
    return-void
.end method

.method public showSimplifiedScreen()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    iget-object v1, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    invoke-static {v0, v1}, Lcom/android/calendar/newapi/common/ApiUtils;->showSimplifiedEventScreen(Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 49
    iget-object v0, p0, Lcom/android/calendar/newapi/model/EventViewScreenData;->mCalendarListEntry:Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 50
    return-void
.end method
