.class public Lcom/android/calendar/alerts/HabitsAlerts;
.super Ljava/lang/Object;
.source "HabitsAlerts.java"


# direct methods
.method private static addCompleteAction(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/android/calendar/groove/TimelineGroove;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 95
    sget v6, Lcom/android/calendar/R$drawable;->quantum_ic_check_grey600_24:I

    .line 96
    invoke-virtual {p5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 100
    invoke-virtual {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/alerts/HabitsIntentService;->createCompleteIntent(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/calendar/groove/TimelineGroove;IZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x8000000

    .line 97
    invoke-static {p0, p4, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 95
    invoke-virtual {p2, v6, v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 103
    return-void
.end method

.method private static addDeferAction(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/android/calendar/groove/TimelineGroove;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 111
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_schedule_grey600_24:I

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->groove_defer_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {p0, p1, p3, p4, p5}, Lcom/android/calendar/alerts/HabitsIntentService;->createDeferIntent(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Lcom/android/calendar/groove/TimelineGroove;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 113
    invoke-static {p0, p4, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 111
    invoke-virtual {p2, v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 119
    return-void
.end method

.method public static cancel(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 84
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 85
    const-string v1, "Habits"

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method private static createBuilder(Landroid/content/Context;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/groove/TimelineGroove;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    const/high16 v4, 0x8000000

    .line 143
    new-instance v1, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;

    .line 144
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 146
    invoke-virtual {v1}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getRingtoneAndSilence()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 148
    :goto_0
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-static {v1}, Lcom/android/calendar/alerts/AlertUtils;->getNotificationDefaults(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$drawable;->ic_notify_white:I

    .line 151
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 156
    invoke-static {p0, p2, p3}, Lcom/android/calendar/alerts/HabitsIntentService;->createViewIntent(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;I)Landroid/content/Intent;

    move-result-object v2

    .line 153
    invoke-static {p0, p3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 161
    invoke-static {p0, p2, p3}, Lcom/android/calendar/alerts/HabitsIntentService;->createDismissIntent(Landroid/content/Context;Lcom/android/calendar/groove/TimelineGroove;I)Landroid/content/Intent;

    move-result-object v2

    .line 158
    invoke-static {p0, p3, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 163
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 164
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 167
    :cond_0
    return-object v1

    .line 147
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static getHabitRecommitMessage(Landroid/content/Context;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/groove/TimelineGroove;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/groove/GrooveCategories;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/calendar/groove/GrooveCategories;->getName(Lcom/google/android/calendar/api/Habit;)Ljava/lang/String;

    .line 130
    iget-wide v0, p2, Lcom/android/calendar/groove/TimelineGroove;->startMillis:J

    iget-wide v2, p2, Lcom/android/calendar/groove/TimelineGroove;->endMillis:J

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 134
    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    move-object v9, p0

    .line 130
    invoke-static/range {v0 .. v9}, Lcom/android/calendar/Utils;->getDisplayedDatetime(JJJLjava/lang/String;ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->groove_recommit_message_format:I

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static showFollowupNotification(Landroid/content/Context;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/groove/TimelineGroove;I)V
    .locals 13

    .prologue
    .line 72
    invoke-static/range {p0 .. p3}, Lcom/android/calendar/alerts/HabitsAlerts;->createBuilder(Landroid/content/Context;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/groove/TimelineGroove;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/groove/GrooveCategories;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/calendar/groove/GrooveCategories;->getName(Lcom/google/android/calendar/api/Habit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->groove_complete_question:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 75
    sget v0, Lcom/android/calendar/R$string;->analytics_label_notification_followup:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-interface {p1}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/alerts/HabitsAlerts;->addDeferAction(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/android/calendar/groove/TimelineGroove;ILjava/lang/String;)V

    .line 77
    invoke-interface {p1}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v7

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->groove_complete_followup_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v6, p0

    move-object v8, v2

    move-object v9, p2

    move/from16 v10, p3

    move-object v12, v5

    .line 77
    invoke-static/range {v6 .. v12}, Lcom/android/calendar/alerts/HabitsAlerts;->addCompleteAction(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/android/calendar/groove/TimelineGroove;ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-wide v0, p2, Lcom/android/calendar/groove/TimelineGroove;->id:J

    long-to-int v0, v0

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/calendar/alerts/HabitsAlerts;->showNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    .line 81
    return-void
.end method

.method private static showNotification(Landroid/content/Context;ILandroid/app/Notification;)V
    .locals 2

    .prologue
    .line 123
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 124
    const-string v1, "Habits"

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 125
    return-void
.end method

.method public static showPreinstanceNotification(Landroid/content/Context;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/groove/TimelineGroove;I)V
    .locals 13

    .prologue
    .line 50
    invoke-static/range {p0 .. p3}, Lcom/android/calendar/alerts/HabitsAlerts;->createBuilder(Landroid/content/Context;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/groove/TimelineGroove;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/groove/GrooveCategories;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/calendar/groove/GrooveCategories;->getName(Lcom/google/android/calendar/api/Habit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    iget-wide v0, p2, Lcom/android/calendar/groove/TimelineGroove;->startMillis:J

    iget-wide v2, p2, Lcom/android/calendar/groove/TimelineGroove;->endMillis:J

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 56
    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v9, p0

    .line 52
    invoke-static/range {v0 .. v9}, Lcom/android/calendar/Utils;->getDisplayedDatetime(JJJLjava/lang/String;ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 60
    sget v0, Lcom/android/calendar/R$string;->analytics_label_notification_preinstance:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-interface {p1}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/alerts/HabitsAlerts;->addDeferAction(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/android/calendar/groove/TimelineGroove;ILjava/lang/String;)V

    .line 62
    invoke-interface {p1}, Lcom/google/android/calendar/api/Habit;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    if-nez v0, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v7

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->groove_complete_preinstance_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v6, p0

    move-object v8, v2

    move-object v9, p2

    move/from16 v10, p3

    move-object v12, v5

    .line 63
    invoke-static/range {v6 .. v12}, Lcom/android/calendar/alerts/HabitsAlerts;->addCompleteAction(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/android/calendar/groove/TimelineGroove;ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-wide v0, p2, Lcom/android/calendar/groove/TimelineGroove;->id:J

    long-to-int v0, v0

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/calendar/alerts/HabitsAlerts;->showNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    .line 68
    return-void
.end method

.method public static showRecommitNotification(Landroid/content/Context;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/groove/TimelineGroove;I)V
    .locals 6

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/android/calendar/alerts/HabitsAlerts;->getHabitRecommitMessage(Landroid/content/Context;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/groove/TimelineGroove;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/android/calendar/alerts/HabitsAlerts;->createBuilder(Landroid/content/Context;Lcom/google/android/calendar/api/Habit;Lcom/android/calendar/groove/TimelineGroove;I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/groove/GrooveCategories;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/groove/GrooveCategories;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/calendar/groove/GrooveCategories;->getName(Lcom/google/android/calendar/api/Habit;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 41
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 42
    sget v0, Lcom/android/calendar/R$string;->analytics_label_notification_recommit:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-interface {p1}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/alerts/HabitsAlerts;->addDeferAction(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;Landroid/support/v4/app/NotificationCompat$Builder;Lcom/android/calendar/groove/TimelineGroove;ILjava/lang/String;)V

    .line 45
    iget-wide v0, p2, Lcom/android/calendar/groove/TimelineGroove;->id:J

    long-to-int v0, v0

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/calendar/alerts/HabitsAlerts;->showNotification(Landroid/content/Context;ILandroid/app/Notification;)V

    .line 46
    return-void
.end method
