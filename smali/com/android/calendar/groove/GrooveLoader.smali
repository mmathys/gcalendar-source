.class public Lcom/android/calendar/groove/GrooveLoader;
.super Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;
.source "GrooveLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader",
        "<",
        "Lcom/android/calendar/groove/TimelineGroove;",
        ">;"
    }
.end annotation


# instance fields
.field private groove:Lcom/android/calendar/groove/TimelineGroove;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/calendar/event/EventInfoFragment$InfoExtraLoader;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    .line 25
    return-void
.end method

.method private getPreInstanceMinutes()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 45
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    invoke-virtual {v1}, Lcom/android/calendar/groove/TimelineGroove;->hasParentInfo()Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v1, v1, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    if-nez v2, :cond_2

    .line 51
    iget-object v2, v1, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 55
    iget-object v0, v1, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v0, v0, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 59
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v1, v2, v0}, Lcom/android/calendar/groove/GrooveUtils;->getDefaultReminderMinutes(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private loadHabitModificationsFromApi()Lcom/google/android/calendar/api/HabitModifications;
    .locals 4

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    iget-object v1, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v1, v1, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitClient;->read(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 37
    const-wide/16 v2, 0x1388

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitClient$ReadResult;

    .line 38
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitClient$ReadResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    sget-object v1, Lcom/google/android/calendar/api/CalendarApi;->HabitFactory:Lcom/google/android/calendar/api/HabitFactory;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitClient$ReadResult;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/calendar/api/HabitFactory;->modifyHabit(Lcom/google/android/calendar/api/Habit;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateGrooveInfo()V
    .locals 8

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    invoke-virtual {v0}, Lcom/android/calendar/groove/TimelineGroove;->hasParentInfo()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v0, v0, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    iget-object v0, v0, Lcom/android/calendar/groove/TimelineGroove;->descriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    iget-object v3, v0, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    invoke-virtual {v0}, Lcom/android/calendar/groove/TimelineGroove;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    .line 68
    invoke-virtual {v0}, Lcom/android/calendar/groove/TimelineGroove;->getStartMillis()J

    move-result-wide v6

    .line 66
    invoke-static/range {v1 .. v7}, Lcom/android/calendar/groove/GrooveUtils;->getWeekStats(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;JJ)[I

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lcom/android/calendar/groove/TimelineGroove;->totalThisWeek:I

    .line 70
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Lcom/android/calendar/groove/TimelineGroove;->completedThisWeek:I

    .line 71
    iget-object v1, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    const/4 v2, 0x2

    aget v0, v0, v2

    iput v0, v1, Lcom/android/calendar/groove/TimelineGroove;->sessionNumber:I

    goto :goto_0
.end method


# virtual methods
.method public loadInBackground()Lcom/android/calendar/groove/TimelineGroove;
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveLoader;->loadHabitModificationsFromApi()Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v1

    iput-object v1, v0, Lcom/android/calendar/groove/TimelineGroove;->mods:Lcom/google/android/calendar/api/HabitModifications;

    .line 30
    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveLoader;->populateGrooveInfo()V

    .line 31
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    invoke-direct {p0}, Lcom/android/calendar/groove/GrooveLoader;->getPreInstanceMinutes()I

    move-result v1

    iput v1, v0, Lcom/android/calendar/groove/TimelineGroove;->preInstanceMinutes:I

    .line 32
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveLoader;->groove:Lcom/android/calendar/groove/TimelineGroove;

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveLoader;->loadInBackground()Lcom/android/calendar/groove/TimelineGroove;

    move-result-object v0

    return-object v0
.end method
