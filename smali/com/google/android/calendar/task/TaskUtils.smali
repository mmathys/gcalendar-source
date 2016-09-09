.class public final Lcom/google/android/calendar/task/TaskUtils;
.super Ljava/lang/Object;
.source "TaskUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/android/calendar/task/TaskUtils;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/task/TaskUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayedDateAndTime(Landroid/content/Context;J)[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v7, 0x0

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 198
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    move-wide v0, p1

    move-wide v2, p1

    move v8, v7

    move-object v9, p0

    .line 201
    invoke-static/range {v0 .. v11}, Lcom/android/calendar/Utils;->getDisplayedDateTimes(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x1

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getDisplayedDuration(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    sget v0, Lcom/android/calendar/R$string;->task_quick_duration:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/android/calendar/event/ReminderUtils;->constructTimeIntervalString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDurationMillisFromTaskExtension(Lcom/google/caribou/tasks/nano/TaskExtensions;)I
    .locals 1

    .prologue
    .line 155
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    iget-object v0, v0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->duration:Lcom/google/caribou/tasks/nano/Duration;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    iget-object v0, v0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->duration:Lcom/google/caribou/tasks/nano/Duration;

    iget v0, v0, Lcom/google/caribou/tasks/nano/Duration;->durationMillis:I

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTaskCalendarColor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->getTaskColor()I

    move-result v0

    .line 34
    return v0
.end method

.method public static getTaskExtensions([B)Lcom/google/caribou/tasks/nano/TaskExtensions;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 139
    if-nez p0, :cond_0

    .line 147
    :goto_0
    return-object v0

    .line 144
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/caribou/tasks/nano/TaskExtensions;->parseFrom([B)Lcom/google/caribou/tasks/nano/TaskExtensions;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    sget-object v2, Lcom/google/android/calendar/task/TaskUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse task extensions protobuf"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static getUpdatedTaskExtensionsProtoBytes(Lcom/google/caribou/tasks/nano/TaskExtensions;I)[B
    .locals 2

    .prologue
    .line 164
    if-nez p0, :cond_0

    .line 165
    new-instance p0, Lcom/google/caribou/tasks/nano/TaskExtensions;

    invoke-direct {p0}, Lcom/google/caribou/tasks/nano/TaskExtensions;-><init>()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    if-nez v0, :cond_1

    .line 168
    new-instance v0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;-><init>()V

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    iget-object v0, v0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->duration:Lcom/google/caribou/tasks/nano/Duration;

    if-nez v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    new-instance v1, Lcom/google/caribou/tasks/nano/Duration;

    invoke-direct {v1}, Lcom/google/caribou/tasks/nano/Duration;-><init>()V

    iput-object v1, v0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->duration:Lcom/google/caribou/tasks/nano/Duration;

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    iget-object v0, v0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->duration:Lcom/google/caribou/tasks/nano/Duration;

    iput p1, v0, Lcom/google/caribou/tasks/nano/Duration;->durationMillis:I

    .line 175
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->flexSchedulingExperimentEnabled:Z

    .line 177
    invoke-static {p0}, Lcom/google/caribou/tasks/nano/TaskExtensions;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method public static setModel(Landroid/content/Context;Landroid/net/Uri;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/task/TaskSetup;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 48
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 49
    :cond_0
    sget-object v0, Lcom/google/android/calendar/task/TaskUtils;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to build non-existent model or from an incorrect query."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v2

    .line 101
    :cond_1
    :goto_0
    return v1

    .line 53
    :cond_2
    invoke-virtual {p2}, Lcom/android/calendar/event/CalendarEventModel;->clear()V

    .line 54
    iput-boolean v1, p2, Lcom/android/calendar/event/CalendarEventModel;->mIsTask:Z

    .line 56
    invoke-interface {p3}, Lcom/android/calendar/task/TaskSetup;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 64
    const-wide/16 v4, 0x0

    iput-wide v4, p2, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    .line 65
    invoke-interface {p3}, Lcom/android/calendar/task/TaskSetup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 66
    invoke-interface {p3}, Lcom/android/calendar/task/TaskSetup;->isAllDay()Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 67
    invoke-interface {p3}, Lcom/android/calendar/task/TaskSetup;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 68
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 69
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    .line 70
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 71
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 72
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 73
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mShowCalendarName:Z

    .line 74
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    .line 77
    invoke-interface {p3}, Lcom/android/calendar/task/TaskSetup;->getDueDateMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p2, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 78
    iget-boolean v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    if-eqz v0, :cond_6

    .line 79
    iput-boolean v2, p2, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    .line 80
    iget-wide v4, p2, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    const-wide/32 v6, 0x52571a0

    add-long/2addr v4, v6

    iput-wide v4, p2, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    .line 84
    :goto_3
    invoke-interface {p3}, Lcom/android/calendar/task/TaskSetup;->getTaskState()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    .line 85
    :goto_4
    iput v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    .line 87
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/calendar/task/TaskUtils;->getTaskCalendarColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 88
    invoke-virtual {p2, v0}, Lcom/android/calendar/event/CalendarEventModel;->setEventColor(I)V

    .line 89
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 90
    const-string v0, "com.google"

    iput-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    .line 92
    iput-boolean v1, p2, Lcom/android/calendar/event/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    .line 93
    iput-boolean v1, p2, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    .line 96
    invoke-interface {p3}, Lcom/android/calendar/task/TaskSetup;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 97
    instance-of v0, p3, Lcom/google/android/calendar/task/ArpTaskSetup;

    if-eqz v0, :cond_1

    .line 98
    check-cast p3, Lcom/google/android/calendar/task/ArpTaskSetup;

    invoke-virtual {p3}, Lcom/google/android/calendar/task/ArpTaskSetup;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v0

    if-eqz v0, :cond_3

    move v2, v1

    :cond_3
    iput-boolean v2, p2, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 73
    goto :goto_1

    :cond_5
    move v0, v2

    .line 75
    goto :goto_2

    .line 82
    :cond_6
    iput-boolean v1, p2, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    goto :goto_3

    :cond_7
    move v0, v2

    .line 85
    goto :goto_4
.end method

.method public static shouldDueDateBeAbsolute(Lcom/google/android/gms/reminders/model/Task;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 222
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 223
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 224
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldTaskBeInCalendar(Lcom/google/android/gms/reminders/model/Task;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getArchivedTimeMs()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/reminders/model/DateTime;->getUnspecifiedFutureTime()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    :cond_2
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getSnoozed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    :cond_3
    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getMaster()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
