.class Lcom/google/android/calendar/task/ArpTaskSetup;
.super Ljava/lang/Object;
.source "ArpTaskSetup.java"

# interfaces
.implements Lcom/android/calendar/task/TaskSetup;


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private mDateTime:Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

.field private final mDateTimeService:Lcom/android/calendar/time/DateTimeService;

.field private final mIsProjectDubaiEnabled:Z

.field protected final mTask:Lcom/google/android/gms/reminders/model/Task;

.field private final mTaskColor:I

.field private final mTodayMillis:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/reminders/model/Task;Ljava/lang/String;ILcom/android/calendar/time/DateTimeService;JZ)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    .line 29
    iput-object p2, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mAccountName:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTaskColor:I

    .line 31
    iput-object p4, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mDateTimeService:Lcom/android/calendar/time/DateTimeService;

    .line 32
    iput-wide p5, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTodayMillis:J

    .line 33
    iput-boolean p7, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mIsProjectDubaiEnabled:Z

    .line 34
    return-void
.end method

.method private getAllDayMillisUtc()J
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mDateTimeService:Lcom/android/calendar/time/DateTimeService;

    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDateTime()Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartMillis:J

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/DateTimeService;->convertLocalToAllDayUtc(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getArchivedTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getArchivedTimeMs()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTaskColor:I

    return v0
.end method

.method public getCreatedTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDateTime()Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;
    .locals 6

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mDateTime:Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mDateTimeService:Lcom/android/calendar/time/DateTimeService;

    iget-wide v4, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTodayMillis:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;-><init>(Lcom/google/android/gms/reminders/model/Task;Lcom/android/calendar/time/DateTimeService;J)V

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mDateTime:Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mDateTime:Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    return-object v0
.end method

.method public getDueDateJulian()I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDateTime()Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    move-result-object v0

    iget v0, v0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartDay:I

    return v0
.end method

.method public getDueDateMillis()J
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getAllDayMillisUtc()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDateTime()Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartMillis:J

    goto :goto_0
.end method

.method public getDueMinuteOnDueDate()I
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDateTime()Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    move-result-object v0

    iget v0, v0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartMinute:I

    return v0
.end method

.method public getDurationMillis()I
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mIsProjectDubaiEnabled:Z

    if-nez v0, :cond_0

    .line 72
    const v0, 0x1b7740

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    .line 76
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getExtensions()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/TaskUtils;->getTaskExtensions([B)Lcom/google/caribou/tasks/nano/TaskExtensions;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/google/android/calendar/task/TaskUtils;->getDurationMillisFromTaskExtension(Lcom/google/caribou/tasks/nano/TaskExtensions;)I

    move-result v0

    goto :goto_0
.end method

.method public getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/TaskId;->getClientAssignedId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object v0
.end method

.method public getOriginalDueTimeMillis()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDateTime()Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mOriginalStartMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecurrenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrenceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTaskAssistHolder()Lcom/google/android/calendar/task/assist/TaskAssistHolder;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getTaskAssistanceProtoBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->createTaskAssistHolder([B)Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    move-result-object v0

    return-object v0
.end method

.method public getTaskAssistanceProtoBytes()[B
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getAssistance()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getTaskState()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllDay()Z
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDateTime()Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mAllDay:Z

    return v0
.end method

.method public isRecurringSometimeToday()Z
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mDateTimeService:Lcom/android/calendar/time/DateTimeService;

    iget-wide v2, p0, Lcom/google/android/calendar/task/ArpTaskSetup;->mTodayMillis:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->isSometimeToday(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;J)Z

    move-result v0

    goto :goto_0
.end method

.method public isUnscheduled()Z
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDateTime()Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mUnscheduled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDateTime()Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    move-result-object v0

    iget v2, v0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartDay:I

    .line 143
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " all day"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    return-object v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskSetup;->getDateTime()Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    move-result-object v0

    iget v0, v0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartMinute:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
