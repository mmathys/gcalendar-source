.class public Lcom/google/android/calendar/alerts/TaskAlertsFactory;
.super Ljava/lang/Object;
.source "TaskAlertsFactory.java"


# static fields
.field private static final COLOR:I

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/calendar/alerts/TaskAlertsManager;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/google/android/calendar/alerts/TaskAlertsFactory;->TAG:Ljava/lang/String;

    .line 46
    sget v0, Lcom/android/calendar/R$color;->google_blue:I

    sput v0, Lcom/google/android/calendar/alerts/TaskAlertsFactory;->COLOR:I

    return-void
.end method

.method public static createSingleNotification(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/Notification;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    sget-object v0, Lcom/google/android/calendar/alerts/TaskAlertsFactory;->TAG:Ljava/lang/String;

    const-string v3, "  buildSingleNotification %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 55
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 59
    invoke-static {p0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v5

    .line 60
    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-static {p1, v5}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v3, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    .line 64
    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    sget v8, Lcom/android/calendar/R$drawable;->quantum_ic_reminders_alt_white_24:I

    .line 65
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    sget v8, Lcom/google/android/calendar/alerts/TaskAlertsFactory;->COLOR:I

    .line 66
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const-string v8, "event"

    .line 67
    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    new-instance v8, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v8}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 69
    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    .line 68
    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 73
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/calendar/alerts/TaskPendingIntentFactory;->createContentIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 72
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 76
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/calendar/alerts/TaskPendingIntentFactory;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 75
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 78
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_done_white_24:I

    sget v7, Lcom/android/calendar/R$string;->task_done_label:I

    .line 79
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/calendar/alerts/TaskPendingIntentFactory;->createDoneIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 78
    invoke-virtual {v3, v0, v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 85
    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 86
    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getExceptional()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 87
    :goto_0
    sget-object v7, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    invoke-virtual {v7, p0}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v0, :cond_0

    .line 88
    sget v0, Lcom/android/calendar/R$drawable;->quantum_ic_access_time_white_24:I

    sget v7, Lcom/android/calendar/R$string;->task_snooze_label:I

    .line 89
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/calendar/alerts/TaskPendingIntentFactory;->createSnoozeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 88
    invoke-virtual {v3, v0, v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 95
    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    .line 98
    invoke-static {p0}, Lcom/android/calendar/time/DateTimeService;->getNewInstance(Landroid/content/Context;)Lcom/android/calendar/time/DateTimeService;

    move-result-object v7

    .line 97
    invoke-static {v0, v7}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->getDueTimeMillis(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)J

    move-result-wide v8

    .line 100
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->isDueAllDay(Lcom/google/android/gms/reminders/model/DateTime;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 114
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;

    .line 115
    invoke-static {p0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V

    .line 116
    invoke-static {v0}, Lcom/android/calendar/alerts/AlertUtils;->getNotificationDefaults(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 119
    invoke-virtual {v0}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getRingtoneAndSilence()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 124
    :cond_2
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v2

    .line 86
    goto :goto_0

    .line 103
    :cond_4
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v8, v9}, Lcom/android/calendar/DateTimeFormatHelper;->getTimeRangeText(JJ)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 108
    sget v5, Lcom/android/calendar/R$string;->notification_ticker_format:I

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v6, v7, v2

    aput-object v0, v7, v1

    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method
