.class public Lcom/google/android/calendar/alerts/TaskAlertsActionService;
.super Landroid/app/IntentService;
.source "TaskAlertsActionService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/calendar/alerts/TaskAlertsManager;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/alerts/TaskAlertsActionService;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private buildShowIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 74
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskDataFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/calendar/task/TaskDataFactory;->loadTimelineItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    sget-object v1, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to find Task %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 78
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    sget-object v2, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "events/0"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 80
    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0}, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->setLaunchTimelineItem(Landroid/content/Intent;Lcom/android/calendar/timely/TimelineItem;)V

    .line 83
    const-string v0, "intent_source"

    const-string v2, "notification"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    return-object v1
.end method

.method private trackAction(I)V
    .locals 3

    .prologue
    .line 163
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    .line 164
    sget v1, Lcom/android/calendar/R$string;->analytics_category_notification:I

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-interface {v0, p0, v1, v2}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 94
    const-string v0, "intent.extra.notification_id"

    .line 95
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 96
    if-ne v2, v3, :cond_1

    .line 97
    sget-object v0, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to obtain a notification id"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 102
    const-string v3, "tasks"

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 105
    const-string v0, "com.google.android.calendar.intent.action.ALERT_DISMISS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    sget v0, Lcom/android/calendar/R$string;->analytics_action_notification_dismiss:I

    invoke-direct {p0, v0}, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->trackAction(I)V

    goto :goto_0

    .line 110
    :cond_2
    const-string v0, "intent.extra.account_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, "intent.extra.client_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 127
    sget v0, Lcom/android/calendar/R$string;->no_calendar_permission_title:I

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 135
    :cond_3
    const-string v0, "com.google.android.calendar.intent.action.MARK_TASK_AS_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/task/BaseTaskDataFactory;->getTaskConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskConnection;

    .line 138
    if-nez v0, :cond_4

    .line 139
    sget-object v0, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to obtain a task connection"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    :goto_1
    sget v0, Lcom/android/calendar/R$string;->analytics_action_notification_mark:I

    invoke-direct {p0, v0}, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->trackAction(I)V

    goto :goto_0

    .line 141
    :cond_4
    new-array v1, v5, [Ljava/lang/String;

    aput-object v3, v1, v4

    invoke-interface {v0, p0, v2, v5, v1}, Lcom/google/android/calendar/task/TaskConnection;->updateTasksDoneStatus(Landroid/content/Context;Ljava/lang/String;Z[Ljava/lang/String;)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;

    goto :goto_1

    .line 144
    :cond_5
    const-string v0, "com.google.android.calendar.intent.action.SHOW_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0, v2, v3}, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->buildShowIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 148
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_2
    sget v0, Lcom/android/calendar/R$string;->analytics_action_notification_open_task:I

    invoke-direct {p0, v0}, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->trackAction(I)V

    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    sget-object v1, Lcom/google/android/calendar/alerts/TaskAlertsActionService;->TAG:Ljava/lang/String;

    const-string v2, "Unable to find activity for intent"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method
