.class public Lcom/android/calendar/newapi/common/TimelineGrooveLoader;
.super Lcom/android/calendar/newapi/common/AsyncTaskLoader;
.source "TimelineGrooveLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/newapi/common/AsyncTaskLoader",
        "<",
        "Lcom/google/android/calendar/api/Habit;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHabitClient:Lcom/google/android/calendar/api/HabitClient;

.field private mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/calendar/newapi/common/AsyncTaskLoader;-><init>()V

    .line 23
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    iput-object v0, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mHabitClient:Lcom/google/android/calendar/api/HabitClient;

    .line 28
    iput-object p1, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    .line 30
    return-void
.end method

.method private getPreInstanceMinutes(Lcom/android/calendar/groove/TimelineGroove;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 69
    invoke-virtual {p1}, Lcom/android/calendar/groove/TimelineGroove;->hasParentInfo()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    iget-object v1, p1, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    if-nez v2, :cond_2

    .line 75
    iget-object v2, v1, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 79
    iget-object v0, v1, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p1, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 82
    iget-object v1, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 83
    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v1, v2, v0}, Lcom/android/calendar/groove/GrooveUtils;->getDefaultReminderMinutes(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs runInBackground([Ljava/lang/Void;)Lcom/google/android/calendar/api/Habit;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-static {}, Lcom/google/android/calendar/api/ColorCache;->initialize()V

    .line 37
    iget-object v0, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mHabitClient:Lcom/google/android/calendar/api/HabitClient;

    iget-object v2, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v2, v2, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-interface {v0, v2}, Lcom/google/android/calendar/api/HabitClient;->read(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitClient$ReadResult;

    .line 38
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitClient$ReadResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->loadingFailure()V

    move-object v0, v1

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 42
    :cond_1
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitClient$ReadResult;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    .line 45
    if-nez v0, :cond_2

    move-object v0, v1

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mContext:Landroid/content/Context;

    .line 51
    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 52
    invoke-interface {v0}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    .line 53
    invoke-virtual {v4}, Lcom/android/calendar/groove/TimelineGroove;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    .line 54
    invoke-virtual {v6}, Lcom/android/calendar/groove/TimelineGroove;->getStartMillis()J

    move-result-wide v6

    .line 49
    invoke-static/range {v1 .. v7}, Lcom/android/calendar/groove/GrooveUtils;->getWeekStats(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;JJ)[I

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    sget-object v3, Lcom/google/android/calendar/api/CalendarApi;->HabitFactory:Lcom/google/android/calendar/api/HabitFactory;

    invoke-interface {v3, v0}, Lcom/google/android/calendar/api/HabitFactory;->modifyHabit(Lcom/google/android/calendar/api/Habit;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v3

    iput-object v3, v2, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    .line 56
    iget-object v2, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v3, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    invoke-direct {p0, v3}, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->getPreInstanceMinutes(Lcom/android/calendar/groove/TimelineGroove;)I

    move-result v3

    iput v3, v2, Lcom/android/calendar/groove/TimelineGroove;->preInstanceMinutes:I

    .line 57
    iget-object v2, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    const/4 v3, 0x0

    aget v3, v1, v3

    iput v3, v2, Lcom/android/calendar/groove/TimelineGroove;->totalThisWeek:I

    .line 58
    iget-object v2, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, v2, Lcom/android/calendar/groove/TimelineGroove;->completedThisWeek:I

    .line 59
    iget-object v2, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    const/4 v3, 0x2

    aget v1, v1, v3

    iput v1, v2, Lcom/android/calendar/groove/TimelineGroove;->sessionNumber:I

    .line 62
    iget-object v1, p0, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->mTimelineItem:Lcom/android/calendar/groove/TimelineGroove;

    iget v1, v1, Lcom/android/calendar/groove/TimelineGroove;->sessionNumber:I

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->loadingFailure()V

    goto :goto_0
.end method

.method protected bridge synthetic runInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/common/TimelineGrooveLoader;->runInBackground([Ljava/lang/Void;)Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    return-object v0
.end method
