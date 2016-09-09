.class public Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;
.super Lcom/android/calendar/newapi/common/CompositeLoader;
.source "GrooveViewScreenLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/common/CompositeLoader",
        "<",
        "Lcom/android/calendar/newapi/model/GrooveViewScreenData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCalendarStoreLoader:Lcom/android/calendar/newapi/common/CalendarStoreLoader;

.field private final mEvent:Lcom/google/android/calendar/api/Event;

.field private mEventLoader:Lcom/android/calendar/newapi/common/EventLoader;

.field private final mHabit:Lcom/google/android/calendar/api/Habit;

.field private final mNotificationStoreLoader:Lcom/android/calendar/newapi/common/NotificationStoreLoader;

.field private mTimelineGrooveLoader:Lcom/android/calendar/newapi/common/TimelineGrooveLoader;

.field private final mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/Event;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/calendar/newapi/common/CompositeLoader;-><init>()V

    .line 39
    iput-object p3, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mHabit:Lcom/google/android/calendar/api/Habit;

    .line 40
    iput-object p4, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 41
    iput-object p2, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    .line 43
    if-nez p3, :cond_0

    .line 44
    new-instance v0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;

    invoke-direct {v0, p1, p2}, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;-><init>(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mTimelineGrooveLoader:Lcom/android/calendar/newapi/common/TimelineGrooveLoader;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->addLoader(Lcom/android/calendar/newapi/common/Loader;)V

    .line 46
    :cond_0
    new-instance v0, Lcom/android/calendar/newapi/common/CalendarStoreLoader;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/newapi/common/CalendarStoreLoader;-><init>(Landroid/content/Context;[Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mCalendarStoreLoader:Lcom/android/calendar/newapi/common/CalendarStoreLoader;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->addLoader(Lcom/android/calendar/newapi/common/Loader;)V

    .line 47
    new-instance v0, Lcom/android/calendar/newapi/common/NotificationStoreLoader;

    invoke-direct {v0, p1}, Lcom/android/calendar/newapi/common/NotificationStoreLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mNotificationStoreLoader:Lcom/android/calendar/newapi/common/NotificationStoreLoader;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->addLoader(Lcom/android/calendar/newapi/common/Loader;)V

    .line 48
    if-nez p4, :cond_1

    .line 49
    new-instance v0, Lcom/android/calendar/newapi/common/EventLoader;

    invoke-static {p2}, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->getEventDescriptor(Lcom/android/calendar/groove/TimelineGroove;)Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/newapi/common/EventLoader;-><init>(Lcom/google/android/calendar/api/EventDescriptor;)V

    iput-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mEventLoader:Lcom/android/calendar/newapi/common/EventLoader;

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->addLoader(Lcom/android/calendar/newapi/common/Loader;)V

    .line 51
    :cond_1
    new-instance v0, Lcom/android/calendar/newapi/common/CalendarsCacheLoader;

    invoke-direct {v0}, Lcom/android/calendar/newapi/common/CalendarsCacheLoader;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->addLoader(Lcom/android/calendar/newapi/common/Loader;)V

    .line 52
    return-void
.end method

.method private getCalendarStore()Lcom/android/calendar/newapi/model/CalendarStore;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mCalendarStoreLoader:Lcom/android/calendar/newapi/common/CalendarStoreLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/CalendarStoreLoader;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/CalendarStore;

    return-object v0
.end method

.method private getEvent()Lcom/google/android/calendar/api/Event;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mEvent:Lcom/google/android/calendar/api/Event;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mEventLoader:Lcom/android/calendar/newapi/common/EventLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/EventLoader;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/Event;

    goto :goto_0
.end method

.method private static getEventDescriptor(Lcom/android/calendar/groove/TimelineGroove;)Lcom/google/android/calendar/api/EventDescriptor;
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 84
    new-instance v1, Lcom/google/android/calendar/api/EventDescriptor;

    iget-wide v2, p0, Lcom/android/calendar/groove/TimelineGroove;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/calendar/api/EventDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/Long;)V

    return-object v1
.end method

.method private getHabit()Lcom/google/android/calendar/api/Habit;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mHabit:Lcom/google/android/calendar/api/Habit;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mHabit:Lcom/google/android/calendar/api/Habit;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mTimelineGrooveLoader:Lcom/android/calendar/newapi/common/TimelineGrooveLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/Habit;

    goto :goto_0
.end method

.method private getNotificationStore()Lcom/android/calendar/newapi/model/NotificationStore;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mNotificationStoreLoader:Lcom/android/calendar/newapi/common/NotificationStoreLoader;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/common/NotificationStoreLoader;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/NotificationStore;

    return-object v0
.end method


# virtual methods
.method public getResult()Lcom/android/calendar/newapi/model/GrooveViewScreenData;
    .locals 6

    .prologue
    .line 56
    new-instance v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    .line 57
    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->getEvent()Lcom/google/android/calendar/api/Event;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->getCalendarStore()Lcom/android/calendar/newapi/model/CalendarStore;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->getNotificationStore()Lcom/android/calendar/newapi/model/NotificationStore;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;-><init>(Lcom/google/android/calendar/api/Event;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/android/calendar/newapi/model/NotificationStore;Lcom/android/calendar/groove/TimelineGroove;)V

    .line 56
    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->getResult()Lcom/android/calendar/newapi/model/GrooveViewScreenData;

    move-result-object v0

    return-object v0
.end method

.method public onLoadingFailure(Lcom/android/calendar/newapi/common/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/newapi/common/Loader",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mTimelineGrooveLoader:Lcom/android/calendar/newapi/common/TimelineGrooveLoader;

    if-ne p1, v0, :cond_0

    invoke-interface {p1}, Lcom/android/calendar/newapi/common/Loader;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenLoader;->mTimelineGrooveLoader:Lcom/android/calendar/newapi/common/TimelineGrooveLoader;

    invoke-super {p0, v0}, Lcom/android/calendar/newapi/common/CompositeLoader;->onLoadingSuccess(Lcom/android/calendar/newapi/common/Loader;)V

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/newapi/common/CompositeLoader;->onLoadingFailure(Lcom/android/calendar/newapi/common/Loader;)V

    goto :goto_0
.end method
