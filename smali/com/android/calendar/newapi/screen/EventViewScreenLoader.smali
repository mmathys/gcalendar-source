.class public Lcom/android/calendar/newapi/screen/EventViewScreenLoader;
.super Lcom/android/calendar/newapi/common/CompositeLoader;
.source "EventViewScreenLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/common/CompositeLoader",
        "<",
        "Lcom/android/calendar/newapi/model/EventViewScreenData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCalendarListEntry:Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

.field private final mCalendarStoreLoader:Lcom/android/calendar/newapi/common/CalendarStoreLoader;

.field private final mEvent:Lcom/google/android/calendar/api/Event;

.field private mEventLoader:Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;

.field private final mNotificationStoreLoader:Lcom/android/calendar/newapi/common/NotificationStoreLoader;

.field private final mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineEvent;Lcom/google/android/calendar/api/Event;Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/calendar/newapi/common/CompositeLoader;-><init>()V

    .line 33
    iput-object p3, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 34
    iput-object p4, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mCalendarListEntry:Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    .line 35
    iput-object p2, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    .line 36
    new-instance v0, Lcom/android/calendar/newapi/common/CalendarStoreLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/newapi/common/CalendarStoreLoader;-><init>(Landroid/content/Context;[Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mCalendarStoreLoader:Lcom/android/calendar/newapi/common/CalendarStoreLoader;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->addLoader(Lcom/android/calendar/newapi/common/Loader;)V

    .line 37
    new-instance v0, Lcom/android/calendar/newapi/common/NotificationStoreLoader;

    invoke-direct {v0, p1}, Lcom/android/calendar/newapi/common/NotificationStoreLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mNotificationStoreLoader:Lcom/android/calendar/newapi/common/NotificationStoreLoader;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->addLoader(Lcom/android/calendar/newapi/common/Loader;)V

    .line 38
    if-nez p3, :cond_0

    .line 39
    new-instance v0, Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;

    invoke-static {p2}, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->getEventDescriptor(Lcom/android/calendar/timely/TimelineEvent;)Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;-><init>(Lcom/google/android/calendar/api/EventDescriptor;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mEventLoader:Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->addLoader(Lcom/android/calendar/newapi/common/Loader;)V

    .line 41
    :cond_0
    new-instance v0, Lcom/android/calendar/newapi/common/CalendarsCacheLoader;

    invoke-direct {v0}, Lcom/android/calendar/newapi/common/CalendarsCacheLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->addLoader(Lcom/android/calendar/newapi/common/Loader;)V

    .line 42
    return-void
.end method

.method private getCalendarListEntry()Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mCalendarListEntry:Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mCalendarListEntry:Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    .line 69
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mEventLoader:Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    goto :goto_0
.end method

.method private getCalendarStore()Lcom/android/calendar/newapi/model/CalendarStore;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mCalendarStoreLoader:Lcom/android/calendar/newapi/common/CalendarStoreLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/CalendarStore;

    return-object v0
.end method

.method private getEvent()Lcom/google/android/calendar/api/Event;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mEvent:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mEventLoader:Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/EventCalendarListEntryLoader;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/calendar/api/Event;

    goto :goto_0
.end method

.method private static getEventDescriptor(Lcom/android/calendar/timely/TimelineEvent;)Lcom/google/android/calendar/api/EventDescriptor;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Lcom/google/android/calendar/api/EventDescriptor;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/calendar/timely/TimelineEvent;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/calendar/api/EventDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/Long;)V

    return-object v0
.end method

.method private getNotificationStore()Lcom/android/calendar/newapi/model/NotificationStore;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mNotificationStoreLoader:Lcom/android/calendar/newapi/common/NotificationStoreLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/NotificationStoreLoader;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/NotificationStore;

    return-object v0
.end method


# virtual methods
.method public getResult()Lcom/android/calendar/newapi/model/EventViewScreenData;
    .locals 6

    .prologue
    .line 46
    new-instance v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->getCalendarStore()Lcom/android/calendar/newapi/model/CalendarStore;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->getNotificationStore()Lcom/android/calendar/newapi/model/NotificationStore;

    move-result-object v3

    .line 47
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->getCalendarListEntry()Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->mTimelineItem:Lcom/android/calendar/timely/TimelineEvent;

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/newapi/model/EventViewScreenData;-><init>(Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/android/calendar/newapi/model/NotificationStore;Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;Lcom/android/calendar/timely/TimelineEvent;)V

    .line 46
    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/EventViewScreenLoader;->getResult()Lcom/android/calendar/newapi/model/EventViewScreenData;

    move-result-object v0

    return-object v0
.end method
