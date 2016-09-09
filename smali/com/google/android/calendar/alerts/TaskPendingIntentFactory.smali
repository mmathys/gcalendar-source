.class public Lcom/google/android/calendar/alerts/TaskPendingIntentFactory;
.super Ljava/lang/Object;
.source "TaskPendingIntentFactory.java"


# direct methods
.method private static createBaseIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/reminders/model/Task;",
            "I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 84
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "intent.extra.account_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v1, "intent.extra.client_id"

    invoke-interface {p4}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/reminders/model/TaskId;->getClientAssignedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "intent.extra.notification_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyContract$Alerts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p5

    .line 95
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 96
    return-object v0
.end method

.method public static createContentIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 30
    const-string v0, "com.google.android.calendar.intent.action.SHOW_CONTENT"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/calendar/alerts/TaskPendingIntentFactory;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static createDeleteIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 40
    const-string v0, "com.google.android.calendar.intent.action.ALERT_DISMISS"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/calendar/alerts/TaskPendingIntentFactory;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static createDoneIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 49
    const-string v0, "com.google.android.calendar.intent.action.MARK_TASK_AS_DONE"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/calendar/alerts/TaskPendingIntentFactory;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 75
    const-class v1, Lcom/google/android/calendar/alerts/TaskAlertsActionService;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/calendar/alerts/TaskPendingIntentFactory;->createBaseIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/content/Intent;

    move-result-object v0

    .line 77
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static createSnoozeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 61
    const-class v1, Lcom/google/android/calendar/task/snooze/SnoozeActivity;

    const-string v2, "com.google.android.calendar.intent.action.SNOOZE_TASK"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/calendar/alerts/TaskPendingIntentFactory;->createBaseIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Landroid/content/Intent;

    move-result-object v0

    .line 63
    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    .line 64
    invoke-static {p0}, Lcom/android/calendar/time/DateTimeService;->getNewInstance(Landroid/content/Context;)Lcom/android/calendar/time/DateTimeService;

    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->getDueTimeMillis(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)J

    move-result-wide v2

    .line 66
    invoke-interface {p2}, Lcom/google/android/gms/reminders/model/Task;->getExtensions()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/calendar/task/TaskUtils;->getTaskExtensions([B)Lcom/google/caribou/tasks/nano/TaskExtensions;

    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/google/android/calendar/task/TaskUtils;->getDurationMillisFromTaskExtension(Lcom/google/caribou/tasks/nano/TaskExtensions;)I

    move-result v1

    .line 67
    const-string v4, "intent.extra.dueDateMillis"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 68
    const-string v2, "intent.extra.durationMillis"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
