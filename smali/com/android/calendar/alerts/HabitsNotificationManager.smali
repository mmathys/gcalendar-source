.class public Lcom/android/calendar/alerts/HabitsNotificationManager;
.super Ljava/lang/Object;
.source "HabitsNotificationManager.java"


# direct methods
.method static dismissPastNotifications(Landroid/content/Entity;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v1

    const-string v2, "eventId=? AND triggerTimeMs<?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "eventId"

    .line 98
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    .line 99
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "triggerTimeMs"

    .line 100
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 99
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const-string v5, ""

    .line 95
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->queryHabitNotifications(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/content/Entity;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_0

    .line 103
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 104
    aget-object v2, v1, v0

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/calendar/alerts/HabitsNotificationManager;->setDisplayState(Landroid/content/Entity;I)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method static getFollowupTriggerTimeMillis(Lcom/google/android/calendar/api/HabitReminders;Lcom/google/android/calendar/api/HabitDescriptor;J)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/calendar/alerts/HabitsNotificationManager;->isSharedCalendar(Lcom/google/android/calendar/api/HabitDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method static getNotificationsAtTriggerTime(J)[Landroid/content/Entity;
    .locals 6

    .prologue
    .line 58
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v0

    const-string v1, "displayState=2 AND triggerTimeMs=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 60
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const-string v4, ""

    .line 59
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->queryHabitNotifications(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/content/Entity;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method static getPreInstanceTriggerTimeMillis(Lcom/google/android/calendar/api/HabitReminders;Lcom/google/android/calendar/api/HabitDescriptor;IJ)Ljava/lang/Long;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const v2, 0xea60

    .line 208
    invoke-static {p1}, Lcom/android/calendar/alerts/HabitsNotificationManager;->isSharedCalendar(Lcom/google/android/calendar/api/HabitDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    if-eqz v1, :cond_2

    .line 211
    mul-int v0, p2, v2

    int-to-long v0, v0

    sub-long v0, p3, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v2

    int-to-long v0, v0

    sub-long v0, p3, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method static getRecommitTriggerTimeMillis(Lcom/google/android/calendar/api/HabitReminders;Lcom/google/android/calendar/api/HabitDescriptor;JLjava/util/TimeZone;)Ljava/lang/Long;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-boolean v0, p0, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/calendar/alerts/HabitsNotificationManager;->isSharedCalendar(Lcom/google/android/calendar/api/HabitDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    .line 229
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 231
    invoke-virtual {v0, p4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 232
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 233
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 234
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 235
    const/16 v1, 0xb

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 236
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method static insertReminderRows(Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 251
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 252
    const-string v1, "eventId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 253
    const-string v1, "habitParentSyncId"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "displayState"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    new-instance v1, Landroid/content/Entity;

    invoke-direct {v1, v0}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 256
    if-eqz p3, :cond_0

    .line 257
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v2, "triggerTimeMs"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 259
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->insertHabitNotification(Landroid/content/Entity;)J

    .line 261
    :cond_0
    if-eqz p4, :cond_1

    .line 262
    const-string v2, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v2, "triggerTimeMs"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->insertHabitNotification(Landroid/content/Entity;)J

    .line 266
    :cond_1
    if-eqz p5, :cond_2

    .line 267
    const-string v2, "type"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    const-string v2, "triggerTimeMs"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->insertHabitNotification(Landroid/content/Entity;)J

    .line 271
    :cond_2
    return-void
.end method

.method static isInactive(I)Z
    .locals 1

    .prologue
    .line 274
    const/16 v0, 0x100

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getEventExtrasFlag(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x80

    .line 275
    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getEventExtrasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_1

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

.method private static isSharedCalendar(Lcom/google/android/calendar/api/HabitDescriptor;)Z
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static declared-synchronized scheduleAlarmForNextNotificationTriggerTime(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;J)V
    .locals 6

    .prologue
    .line 67
    const-class v1, Lcom/android/calendar/alerts/HabitsNotificationManager;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v0

    const-string v2, "displayState=2 AND triggerTimeMs>?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 69
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "triggerTimeMs ASC"

    const-string v5, "1"

    .line 68
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->queryHabitNotifications(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/content/Entity;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 71
    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 73
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 75
    const-string v3, "com.google.android.calendar.intent.action.HABITS_NOTIFICATION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-class v3, Lcom/android/calendar/alerts/GrooveAlertReceiver;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    const-string v3, "habitNotificationTriggerTime"

    .line 78
    invoke-virtual {v0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "triggerTimeMs"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 77
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 80
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 85
    invoke-interface {p1, v2}, Lcom/android/calendar/alerts/AlarmManagerInterface;->cancel(Landroid/app/PendingIntent;)V

    .line 87
    invoke-virtual {v0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v3, "triggerTimeMs"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 88
    const/4 v0, 0x0

    invoke-interface {p1, v0, v4, v5, v2}, Lcom/android/calendar/alerts/AlarmManagerInterface;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit v1

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static setDisplayState(Landroid/content/Entity;I)V
    .locals 3

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "displayState"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->updateHabitNotification(Landroid/content/Entity;)I

    goto :goto_0
.end method

.method static updateNotificationsForHabit(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;I)V
    .locals 20

    .prologue
    .line 111
    sget-object v4, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/google/android/calendar/api/HabitClient;->read(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v4

    check-cast v4, Lcom/google/android/calendar/api/HabitClient$ReadResult;

    .line 112
    invoke-interface {v4}, Lcom/google/android/calendar/api/HabitClient$ReadResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    invoke-interface {v4}, Lcom/google/android/calendar/api/HabitClient$ReadResult;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lcom/google/android/calendar/api/HabitClient$ReadResult;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/calendar/api/Habit;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v5

    if-nez v5, :cond_2

    .line 114
    :cond_0
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v4

    const-string v5, "habitParentSyncId=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->deleteHabitNotifications(Ljava/lang/String;[Ljava/lang/String;)J

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 123
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v6

    const-string v7, "habitParentSyncId=?"

    const-string v8, "eventId"

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->queryHabitNotifications(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/content/Entity;

    move-result-object v13

    .line 126
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v5

    const-string v6, "habitParentSyncId=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->deleteHabitNotifications(Ljava/lang/String;[Ljava/lang/String;)J

    .line 130
    invoke-interface {v4}, Lcom/google/android/calendar/api/HabitClient$ReadResult;->getHabit()Lcom/google/android/calendar/api/Habit;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/calendar/api/Habit;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v14

    .line 131
    const/4 v10, 0x0

    .line 132
    const/4 v12, 0x0

    .line 134
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "dtstart"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "dtend"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "sync_data9"

    aput-object v8, v6, v7

    .line 137
    invoke-static {}, Lcom/google/android/calendar/HabitInstancesUtil;->getSelection()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    .line 138
    invoke-static {v8}, Lcom/google/android/calendar/HabitInstancesUtil;->getSelectionArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v9, "_id"

    .line 134
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 140
    if-eqz v11, :cond_4

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move v4, v12

    .line 143
    :cond_3
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 144
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 145
    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 146
    const/4 v5, 0x3

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 148
    invoke-static {v5}, Lcom/android/calendar/alerts/HabitsNotificationManager;->isInactive(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 196
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    .line 199
    :cond_4
    if-eqz v11, :cond_1

    .line 200
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 151
    :cond_5
    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, v16

    invoke-static {v14, v0, v1, v2, v3}, Lcom/android/calendar/alerts/HabitsNotificationManager;->getPreInstanceTriggerTimeMillis(Lcom/google/android/calendar/api/HabitReminders;Lcom/google/android/calendar/api/HabitDescriptor;IJ)Ljava/lang/Long;

    move-result-object v8

    .line 154
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 153
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v14, v0, v1, v2, v5}, Lcom/android/calendar/alerts/HabitsNotificationManager;->getRecommitTriggerTimeMillis(Lcom/google/android/calendar/api/HabitReminders;Lcom/google/android/calendar/api/HabitDescriptor;JLjava/util/TimeZone;)Ljava/lang/Long;

    move-result-object v9

    .line 155
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v14, v0, v1, v2}, Lcom/android/calendar/alerts/HabitsNotificationManager;->getFollowupTriggerTimeMillis(Lcom/google/android/calendar/api/HabitReminders;Lcom/google/android/calendar/api/HabitDescriptor;J)Ljava/lang/Long;

    move-result-object v10

    .line 158
    :goto_2
    array-length v5, v13

    if-ge v4, v5, :cond_6

    aget-object v5, v13, v4

    .line 159
    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v12, "eventId"

    .line 160
    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 159
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v16, v0

    cmp-long v5, v16, v6

    if-gez v5, :cond_6

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 164
    :cond_6
    :goto_3
    array-length v5, v13

    if-ge v4, v5, :cond_d

    aget-object v5, v13, v4

    .line 165
    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v12, "eventId"

    .line 166
    invoke-virtual {v5, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 165
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v16, v0

    cmp-long v5, v16, v6

    if-nez v5, :cond_d

    .line 167
    aget-object v5, v13, v4

    .line 168
    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v12

    const-string v15, "type"

    invoke-virtual {v12, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 169
    const/4 v15, 0x1

    if-ne v12, v15, :cond_9

    if-eqz v8, :cond_9

    .line 170
    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v12

    const-string v15, "triggerTimeMs"

    invoke-virtual {v12, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    cmp-long v8, v16, v18

    if-lez v8, :cond_7

    .line 172
    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v8

    const-string v12, "displayState"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v12, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    :cond_7
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->insertHabitNotification(Landroid/content/Entity;)J

    .line 175
    const/4 v8, 0x0

    .line 191
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 192
    goto :goto_3

    .line 176
    :cond_9
    const/4 v15, 0x2

    if-ne v12, v15, :cond_b

    if-eqz v9, :cond_b

    .line 177
    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v12

    const-string v15, "triggerTimeMs"

    invoke-virtual {v12, v15, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    cmp-long v9, v16, v18

    if-lez v9, :cond_a

    .line 179
    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v9

    const-string v12, "displayState"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v12, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    :cond_a
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->insertHabitNotification(Landroid/content/Entity;)J

    .line 182
    const/4 v9, 0x0

    goto :goto_4

    .line 183
    :cond_b
    const/4 v15, 0x3

    if-ne v12, v15, :cond_8

    if-eqz v10, :cond_8

    .line 184
    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v12

    const-string v15, "triggerTimeMs"

    invoke-virtual {v12, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    cmp-long v10, v16, v18

    if-lez v10, :cond_c

    .line 186
    invoke-virtual {v5}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v10

    const-string v12, "displayState"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v12, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    :cond_c
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->insertHabitNotification(Landroid/content/Entity;)J

    .line 189
    const/4 v10, 0x0

    goto :goto_4

    .line 194
    :cond_d
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-static/range {v5 .. v10}, Lcom/android/calendar/alerts/HabitsNotificationManager;->insertReminderRows(Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 199
    :catchall_0
    move-exception v4

    move-object v5, v11

    :goto_5
    if-eqz v5, :cond_e

    .line 200
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v4

    .line 199
    :catchall_1
    move-exception v4

    move-object v5, v10

    goto :goto_5
.end method
