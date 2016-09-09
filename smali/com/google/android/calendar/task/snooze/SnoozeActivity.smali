.class public Lcom/google/android/calendar/task/snooze/SnoozeActivity;
.super Landroid/app/Activity;
.source "SnoozeActivity.java"

# interfaces
.implements Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNotificationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/android/calendar/task/snooze/SnoozeActivity;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private dismissNotification()V
    .locals 3

    .prologue
    .line 83
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 85
    const-string v1, "tasks"

    iget v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->mNotificationId:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 86
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    const-string v1, "com.google.android.calendar.intent.action.SNOOZE_TASK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    :cond_0
    sget-object v0, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Invalid intent"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 39
    invoke-virtual {p0}, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->finish()V

    .line 80
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string v1, "intent.extra.account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    sget-object v0, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to obtain account name"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 45
    invoke-virtual {p0}, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->finish()V

    goto :goto_0

    .line 48
    :cond_2
    const-string v1, "intent.extra.client_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    sget-object v0, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to obtain task id"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 51
    invoke-virtual {p0}, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->finish()V

    goto :goto_0

    .line 54
    :cond_3
    const-string v1, "intent.extra.dueDateMillis"

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 55
    cmp-long v1, v4, v10

    if-nez v1, :cond_4

    .line 56
    sget-object v0, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to obtain start millis"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    invoke-virtual {p0}, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->finish()V

    goto :goto_0

    .line 60
    :cond_4
    const-string v1, "intent.extra.durationMillis"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 61
    if-ne v6, v8, :cond_5

    .line 62
    sget-object v0, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to obtain duration millis"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    invoke-virtual {p0}, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->finish()V

    goto :goto_0

    .line 66
    :cond_5
    const-string v1, "intent.extra.notification_id"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->mNotificationId:I

    .line 69
    iget v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->mNotificationId:I

    if-ne v0, v8, :cond_6

    .line 70
    sget-object v0, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->TAG:Ljava/lang/String;

    const-string v1, "Unable to obtain a notification id"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 71
    invoke-virtual {p0}, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->finish()V

    goto :goto_0

    .line 76
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    const/4 v7, 0x1

    move-object v1, p0

    move-object v8, p0

    invoke-static/range {v1 .. v8}, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIZLcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;)V

    goto/16 :goto_0
.end method

.method public onTaskSnoozeCancelled()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->finish()V

    .line 101
    return-void
.end method

.method public onTaskSnoozeStart()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->finish()V

    .line 91
    return-void
.end method

.method public onTaskSnoozeSuccess()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/calendar/task/snooze/SnoozeActivity;->dismissNotification()V

    .line 96
    return-void
.end method
