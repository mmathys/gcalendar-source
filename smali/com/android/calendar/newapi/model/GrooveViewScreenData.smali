.class public Lcom/android/calendar/newapi/model/GrooveViewScreenData;
.super Lcom/android/calendar/newapi/model/ScreenData;
.source "GrooveViewScreenData.java"

# interfaces
.implements Lcom/android/calendar/newapi/model/CalendarHolder;
.implements Lcom/android/calendar/newapi/model/CalendarStoreHolder;
.implements Lcom/android/calendar/newapi/model/EventHolder;
.implements Lcom/android/calendar/newapi/model/GrooveHolder;
.implements Lcom/android/calendar/newapi/model/GrooveInstanceHolder;
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
        "Lcom/android/calendar/newapi/model/EventHolder;",
        "Lcom/android/calendar/newapi/model/GrooveHolder;",
        "Lcom/android/calendar/newapi/model/GrooveInstanceHolder;",
        "Lcom/android/calendar/newapi/model/NotificationStoreHolder;",
        "Lcom/android/calendar/newapi/model/TimelineItemHolder",
        "<",
        "Lcom/android/calendar/groove/TimelineGroove;",
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
            "Lcom/android/calendar/newapi/model/GrooveViewScreenData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

.field private mEvent:Lcom/google/android/calendar/api/Event;

.field private mHabit:Lcom/google/android/calendar/api/Habit;

.field private mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

.field private mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData$1;

    invoke-direct {v0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData$1;-><init>()V

    sput-object v0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/calendar/newapi/model/ScreenData;-><init>()V

    .line 52
    const-class v0, Lcom/google/android/calendar/api/Event;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/Event;

    iput-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 53
    const-class v0, Lcom/google/android/calendar/api/Habit;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/Habit;

    iput-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mHabit:Lcom/google/android/calendar/api/Habit;

    .line 54
    const-class v0, Lcom/android/calendar/groove/TimelineGroove;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    iput-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/calendar/newapi/model/GrooveViewScreenData$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/calendar/api/Event;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/newapi/model/CalendarStore;Lcom/android/calendar/newapi/model/NotificationStore;Lcom/android/calendar/groove/TimelineGroove;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/calendar/newapi/model/ScreenData;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 45
    iput-object p2, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mHabit:Lcom/google/android/calendar/api/Habit;

    .line 46
    iput-object p3, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    .line 47
    iput-object p4, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    .line 48
    iput-object p5, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    .line 49
    return-void
.end method

.method private getColor()Lcom/google/android/calendar/api/ColorDescriptor;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mHabit:Lcom/google/android/calendar/api/Habit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mHabit:Lcom/google/android/calendar/api/Habit;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->showSimplifiedScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mHabit:Lcom/google/android/calendar/api/Habit;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    goto :goto_0
.end method

.method public getCalendarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->showSimplifiedScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mHabit:Lcom/google/android/calendar/api/Habit;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCalendarStore()Lcom/android/calendar/newapi/model/CalendarStore;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    return-object v0
.end method

.method public getColor(Landroid/content/res/Resources;)I
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 136
    invoke-static {}, Lcom/google/android/calendar/api/ColorCache;->getInstance()Lcom/google/android/calendar/api/ColorCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/calendar/api/ColorCache;->getEventColors(Landroid/accounts/Account;)Ljava/util/Collection;

    move-result-object v2

    .line 137
    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v3, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/android/calendar/newapi/model/CalendarStore;->getImmutableCalendar(Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    move-result-object v0

    .line 139
    invoke-static {p1, v2, v0}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->newInstance(Landroid/content/res/Resources;Ljava/util/Collection;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)Lcom/android/calendar/newapi/segment/common/ColorPalette;

    move-result-object v0

    .line 140
    invoke-direct {p0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->getColor()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/common/ColorPalette;->getColorEntry(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/android/calendar/newapi/segment/common/ColorEntry;

    move-result-object v0

    iget v0, v0, Lcom/android/calendar/newapi/segment/common/ColorEntry;->color:I

    return v0
.end method

.method public getEvent()Lcom/google/android/calendar/api/Event;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    return-object v0
.end method

.method public getHabit()Lcom/google/android/calendar/api/Habit;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mHabit:Lcom/google/android/calendar/api/Habit;

    return-object v0
.end method

.method public getHabitInstance()Lcom/google/android/calendar/api/HabitInstance;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getHabitInstance()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/Feature;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getHabitInstance()Lcom/google/android/calendar/api/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/Feature;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitInstance;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotificationStore()Lcom/android/calendar/newapi/model/NotificationStore;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mNotificationStore:Lcom/android/calendar/newapi/model/NotificationStore;

    return-object v0
.end method

.method public getTimelineItem()Lcom/android/calendar/groove/TimelineGroove;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    return-object v0
.end method

.method public bridge synthetic getTimelineItem()Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->getTimelineItem()Lcom/android/calendar/groove/TimelineGroove;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->showSimplifiedScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getSummary()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mHabit:Lcom/google/android/calendar/api/Habit;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getSummary()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->showSimplifiedScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Event;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/newapi/model/EventVisibilityUtil;->fromEventVisibility(I)I

    move-result v0

    .line 108
    :goto_0
    return v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mHabit:Lcom/google/android/calendar/api/Habit;

    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/newapi/model/GrooveVisibilityUtil;->fromHabitVisibility(I)I

    move-result v0

    goto :goto_0
.end method

.method public isEditable()Z
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    iget-object v1, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    invoke-static {v0, v1}, Lcom/android/calendar/newapi/common/ApiUtils;->isEditable(Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Z

    move-result v0

    return v0
.end method

.method public setEvent(Lcom/google/android/calendar/api/Event;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    .line 70
    return-void
.end method

.method public setHabit(Lcom/google/android/calendar/api/Habit;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mHabit:Lcom/google/android/calendar/api/Habit;

    .line 66
    return-void
.end method

.method public showSimplifiedScreen()Z
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mHabit:Lcom/google/android/calendar/api/Habit;

    iget-object v1, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    iget-object v2, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mCalendarStore:Lcom/android/calendar/newapi/model/CalendarStore;

    invoke-static {v0, v1, v2}, Lcom/android/calendar/newapi/common/ApiUtils;->showSimplifiedGrooveScreen(Lcom/google/android/calendar/api/Habit;Lcom/google/android/calendar/api/Event;Lcom/android/calendar/newapi/model/CalendarStore;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mEvent:Lcom/google/android/calendar/api/Event;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mHabit:Lcom/google/android/calendar/api/Habit;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Lcom/android/calendar/newapi/model/GrooveViewScreenData;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 62
    return-void
.end method
