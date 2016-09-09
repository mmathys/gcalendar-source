.class Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;
.super Lcom/android/calendar/timely/TimelineEvent;
.source "ICalEventsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/ical/ICalEventsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimelineEventICal"
.end annotation


# instance fields
.field public mEventType:I

.field public mOriginalModel:Lcom/android/calendar/event/CalendarEventModel;


# direct methods
.method private constructor <init>(Lcom/android/calendar/timely/TimelineEvent;)V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelineEvent;-><init>(Lcom/android/calendar/timely/TimelineEvent;)V

    .line 275
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;->mEventType:I

    .line 279
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/timely/TimelineEvent;Lcom/google/android/calendar/ical/ICalEventsListFragment$1;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;-><init>(Lcom/android/calendar/timely/TimelineEvent;)V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 2

    .prologue
    .line 283
    iget v0, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;->mEventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;->mEventType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;->mOriginalModel:Lcom/android/calendar/event/CalendarEventModel;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel;->getEventColor()I

    move-result v0

    .line 287
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Lcom/android/calendar/timely/TimelineEvent;->getColor()I

    move-result v0

    goto :goto_0
.end method

.method public hasInvitedStatus()Z
    .locals 2

    .prologue
    .line 293
    iget v0, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;->mEventType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment$TimelineEventICal;->mEventType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
