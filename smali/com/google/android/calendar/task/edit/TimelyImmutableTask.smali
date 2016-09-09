.class public final Lcom/google/android/calendar/task/edit/TimelyImmutableTask;
.super Ljava/lang/Object;
.source "TimelyImmutableTask.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;


# instance fields
.field private final mArpDueTime:Lcom/google/android/gms/reminders/model/DateTime;

.field private final mBackgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

.field private final mDateTimeService:Lcom/android/calendar/time/DateTimeService;

.field private final mDueTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

.field private final mForegroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

.field private final mIsComplete:Z

.field private final mIsDueAllDay:Z

.field private final mIsProjectDubaiEnabled:Z

.field private final mRecurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

.field private final mTask:Lcom/google/android/gms/reminders/model/Task;

.field private final mTaskExtensions:Lcom/google/caribou/tasks/nano/TaskExtensions;

.field private final mTaskKey:Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)V
    .locals 5

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v0

    if-nez v0, :cond_1

    .line 52
    const-string v0, "~"

    .line 53
    :goto_0
    invoke-static {p2}, Lcom/google/calendar/v2/client/service/api/common/AccountKeys;->fromEmail(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/common/GoogleAccountKey;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;->from(Lcom/google/calendar/v2/client/service/api/common/AccountKey;Ljava/lang/String;)Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTaskKey:Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    .line 55
    invoke-static {p1}, Lcom/android/calendar/time/DateTimeService;->getNewInstance(Landroid/content/Context;)Lcom/android/calendar/time/DateTimeService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mDateTimeService:Lcom/android/calendar/time/DateTimeService;

    .line 56
    new-instance v0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mDateTimeService:Lcom/android/calendar/time/DateTimeService;

    invoke-direct {v0, p3, v1}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;-><init>(Lcom/google/android/gms/reminders/model/Task;Lcom/android/calendar/time/DateTimeService;)V

    .line 58
    iget-boolean v1, v0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mAllDay:Z

    iput-boolean v1, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mIsDueAllDay:Z

    .line 63
    new-instance v1, Lcom/android/calendar/time/DateTimeImpl;

    iget-wide v2, v0, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->mStartMillis:J

    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mDateTimeService:Lcom/android/calendar/time/DateTimeService;

    .line 64
    invoke-virtual {v0}, Lcom/android/calendar/time/DateTimeService;->calendarTimeZone()Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    .line 65
    iget-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mIsDueAllDay:Z

    if-eqz v0, :cond_2

    .line 66
    invoke-static {v1}, Lcom/android/calendar/time/DateTimeUtils;->getTimeOnGivenFutureDateForTask(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mDueTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    .line 71
    :goto_1
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mIsComplete:Z

    .line 72
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mDueTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    iget-boolean v1, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mIsDueAllDay:Z

    .line 73
    invoke-static {p3}, Lcom/google/android/calendar/task/TaskUtils;->shouldDueDateBeAbsolute(Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v2

    .line 72
    invoke-static {v0, v1, v2}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->fromCalendarDateTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;ZZ)Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mArpDueTime:Lcom/google/android/gms/reminders/model/DateTime;

    .line 75
    new-instance v0, Lcom/google/android/calendar/event/TimelyEditHelper;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/event/TimelyEditHelper;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v0, p1, p2}, Lcom/google/android/calendar/event/TimelyEditHelper;->getTaskCalendarColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 75
    invoke-static {v0}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mBackgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 77
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mForegroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 79
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getExtensions()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/TaskUtils;->getTaskExtensions([B)Lcom/google/caribou/tasks/nano/TaskExtensions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTaskExtensions:Lcom/google/caribou/tasks/nano/TaskExtensions;

    .line 80
    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mIsProjectDubaiEnabled:Z

    .line 81
    iget-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mIsProjectDubaiEnabled:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTaskExtensions:Lcom/google/caribou/tasks/nano/TaskExtensions;

    invoke-static {v0}, Lcom/google/android/calendar/task/TaskUtils;->getDurationMillisFromTaskExtension(Lcom/google/caribou/tasks/nano/TaskExtensions;)I

    move-result v0

    .line 85
    new-instance v1, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v1, p3}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    iget-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTaskExtensions:Lcom/google/caribou/tasks/nano/TaskExtensions;

    .line 86
    invoke-static {v2, v0}, Lcom/google/android/calendar/task/TaskUtils;->getUpdatedTaskExtensionsProtoBytes(Lcom/google/caribou/tasks/nano/TaskExtensions;I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setExtensions([B)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object p3

    .line 91
    :cond_0
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    .line 92
    if-nez v0, :cond_3

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mRecurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    .line 94
    iput-object p3, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTask:Lcom/google/android/gms/reminders/model/Task;

    .line 111
    :goto_2
    return-void

    .line 52
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/TaskId;->getClientAssignedId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 68
    :cond_2
    iput-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mDueTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    goto :goto_1

    .line 97
    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mDateTimeService:Lcom/android/calendar/time/DateTimeService;

    .line 96
    invoke-static {v1, v2}, Lcom/google/android/calendar/task/RecurrenceConverter;->toRfcRecurrence(Lcom/google/android/gms/reminders/model/Recurrence;Lcom/android/calendar/time/DateTimeService;)Lcom/android/calendarcommon2/EventRecurrence;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lcom/android/calendar/Utils;->convertToRecurrenceData(Ljava/lang/String;)Lcom/google/calendar/v2/client/service/impl/events/ImmutableRecurrenceDataImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mRecurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    .line 104
    new-instance v2, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v2, p3}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    new-instance v3, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    invoke-direct {v3, v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)V

    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mArpDueTime:Lcom/google/android/gms/reminders/model/DateTime;

    iget-object v4, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mDateTimeService:Lcom/android/calendar/time/DateTimeService;

    .line 107
    invoke-static {v1, v0, v4}, Lcom/google/android/calendar/task/RecurrenceConverter;->fromRfcRecurrenceString(Ljava/lang/String;Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->setRecurrence(Lcom/google/android/gms/reminders/model/Recurrence;)Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->build()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    .line 105
    invoke-virtual {v2, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setRecurrenceInfo(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTask:Lcom/google/android/gms/reminders/model/Task;

    goto :goto_2
.end method

.method private getUpdatedRecurrenceInfo(Lcom/google/android/calendar/task/edit/TimelyMutableTask;Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/RecurrenceInfo;
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->isRecurring()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 291
    :goto_0
    return-object v0

    .line 286
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/events/ModifiableObservableRecurrence;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    invoke-static {v0}, Lcom/android/calendar/Utils;->convertToRrule(Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mDateTimeService:Lcom/android/calendar/time/DateTimeService;

    .line 285
    invoke-static {v0, p2, v1}, Lcom/google/android/calendar/task/RecurrenceConverter;->fromRfcRecurrenceString(Ljava/lang/String;Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v1

    .line 288
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v2

    .line 289
    if-nez v2, :cond_1

    .line 290
    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;-><init>()V

    .line 291
    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->setRecurrence(Lcom/google/android/gms/reminders/model/Recurrence;)Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->build()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)V

    goto :goto_1
.end method

.method private getUpdatedTaskExtensionsProtoBytes(Lcom/google/android/calendar/task/edit/TimelyMutableTask;)[B
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTaskExtensions:Lcom/google/caribou/tasks/nano/TaskExtensions;

    .line 296
    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableTaskDurationMillis()Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableInteger;->get()I

    move-result v1

    .line 295
    invoke-static {v0, v1}, Lcom/google/android/calendar/task/TaskUtils;->getUpdatedTaskExtensionsProtoBytes(Lcom/google/caribou/tasks/nano/TaskExtensions;I)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canChangeTitle()Z
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTask:Lcom/google/android/gms/reminders/model/Task;

    .line 275
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    .line 275
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mBackgroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mDueTime:Lcom/google/calendar/v2/client/service/api/time/DateTime;

    return-object v0
.end method

.method public getForegroundColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mForegroundColor:Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public getKey()Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getTaskKey()Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getKey()Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalTask()Lcom/google/android/gms/reminders/model/Task;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTask:Lcom/google/android/gms/reminders/model/Task;

    return-object v0
.end method

.method public getRecurrenceData()Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mRecurrenceData:Lcom/google/calendar/v2/client/service/api/events/ImmutableRecurrenceData;

    return-object v0
.end method

.method public getTaskKey()Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTaskKey:Lcom/google/calendar/v2/client/service/api/tasks/TaskKey;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedTask(Lcom/google/android/calendar/task/edit/TimelyMutableTask;)Lcom/google/android/gms/reminders/model/Task;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 129
    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->isDueAllDay()Z

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTask:Lcom/google/android/gms/reminders/model/Task;

    .line 133
    invoke-static {v2}, Lcom/google/android/calendar/task/TaskUtils;->shouldDueDateBeAbsolute(Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->fromCalendarDateTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;ZZ)Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v2

    .line 134
    new-instance v3, Lcom/google/android/gms/reminders/model/Task$Builder;

    iget-object v4, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-direct {v3, v4}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    .line 135
    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/reminders/model/Task$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v3

    .line 136
    invoke-virtual {v3, v2}, Lcom/google/android/gms/reminders/model/Task$Builder;->setDueDate(Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v3

    .line 139
    invoke-direct {p0, p1, v2}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getUpdatedRecurrenceInfo(Lcom/google/android/calendar/task/edit/TimelyMutableTask;Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/reminders/model/Task$Builder;->setRecurrenceInfo(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 142
    if-eqz v1, :cond_0

    .line 145
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getYear()I

    move-result v1

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMonthOfYear()I

    move-result v2

    .line 146
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getDayOfMonth()I

    move-result v4

    .line 145
    invoke-interface {v0, v1, v2, v4}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withDate(III)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 148
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 149
    new-instance v1, Lcom/google/calendar/v2/client/service/api/time/InstantImpl;

    invoke-direct {v1, v4, v5}, Lcom/google/calendar/v2/client/service/api/time/InstantImpl;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->isAfter(Lcom/google/calendar/v2/client/service/api/time/Instant;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->isRecurring()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    :cond_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setPinned(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 151
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setSnoozed(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 152
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setArchived(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 153
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setSnoozedTimeMillis(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 166
    :goto_0
    invoke-static {p1}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->getProtoBytes(Lcom/google/android/calendar/task/edit/TimelyMutableTask;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setAssistance([B)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 168
    iget-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mIsProjectDubaiEnabled:Z

    if-eqz v0, :cond_2

    .line 169
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getUpdatedTaskExtensionsProtoBytes(Lcom/google/android/calendar/task/edit/TimelyMutableTask;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setExtensions([B)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 172
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    return-object v0

    .line 157
    :cond_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setSnoozed(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    goto :goto_0
.end method

.method public hasRecurrenceChanged(Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;)Z
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    check-cast p1, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mArpDueTime:Lcom/google/android/gms/reminders/model/DateTime;

    .line 269
    invoke-direct {p0, p1, v1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getUpdatedRecurrenceInfo(Lcom/google/android/calendar/task/edit/TimelyMutableTask;Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v1

    .line 268
    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSmartMail()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mIsComplete:Z

    return v0
.end method

.method public isDueAllDay()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mIsDueAllDay:Z

    return v0
.end method

.method public isEquivalentTo(Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 260
    :goto_0
    return v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->isDueAllDay()Z

    move-result v0

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->isDueAllDay()Z

    move-result v1

    if-eq v0, v1, :cond_1

    move v0, v2

    .line 232
    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->isDueAllDay()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withMillisOfDay(I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    .line 238
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->isDueAllDay()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->withMillisOfDay(I)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    .line 240
    :goto_2
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v4

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 241
    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    goto :goto_1

    .line 238
    :cond_3
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;->getDueTime()Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v1

    goto :goto_2

    .line 244
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->hasRecurrenceChanged(Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 245
    goto :goto_0

    :cond_5
    move-object v0, p1

    .line 248
    check-cast v0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    invoke-static {v0}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->getProtoBytes(Lcom/google/android/calendar/task/edit/TimelyMutableTask;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTask:Lcom/google/android/gms/reminders/model/Task;

    .line 249
    invoke-interface {v1}, Lcom/google/android/gms/reminders/model/Task;->getAssistance()[B

    move-result-object v1

    .line 248
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 250
    goto :goto_0

    .line 253
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mIsProjectDubaiEnabled:Z

    if-eqz v0, :cond_7

    .line 254
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getExtensions()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    .line 255
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getUpdatedTaskExtensionsProtoBytes(Lcom/google/android/calendar/task/edit/TimelyMutableTask;)[B

    move-result-object v1

    .line 254
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    .line 256
    goto :goto_0

    .line 260
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method
