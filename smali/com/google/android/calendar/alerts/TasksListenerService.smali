.class public Lcom/google/android/calendar/alerts/TasksListenerService;
.super Lcom/google/android/gms/reminders/RemindersListenerService;
.source "TasksListenerService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTaskAlertsManager:Lcom/google/android/calendar/alerts/TaskAlertsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/android/calendar/alerts/TasksListenerService;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/alerts/TasksListenerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/reminders/RemindersListenerService;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/android/gms/reminders/RemindersListenerService;->onCreate()V

    .line 49
    new-instance v0, Lcom/google/android/calendar/alerts/TaskAlertsManager;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/alerts/TaskAlertsManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/calendar/alerts/TasksListenerService;->mTaskAlertsManager:Lcom/google/android/calendar/alerts/TaskAlertsManager;

    .line 50
    return-void
.end method

.method protected onReminderFired(Lcom/google/android/gms/reminders/model/ReminderEvent;)V
    .locals 3

    .prologue
    .line 174
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const-string v0, "preferences_alerts"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/ReminderEvent;->getTask()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 187
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/ReminderEvent;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->areTasksVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v2

    .line 200
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->isDueAllDay(Lcom/google/android/gms/reminders/model/DateTime;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/google/android/calendar/alerts/TasksListenerService;->mTaskAlertsManager:Lcom/google/android/calendar/alerts/TaskAlertsManager;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/calendar/alerts/TaskAlertsManager;->notify(Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)V

    goto :goto_0
.end method

.method protected onRemindersChanged(Lcom/google/android/gms/reminders/model/ReminderEventBuffer;)V
    .locals 7

    .prologue
    .line 59
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_2

    .line 155
    :cond_0
    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->release()V

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/ReminderEvent;

    .line 68
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ReminderEvent;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/ReminderEvent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 155
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    .line 156
    invoke-virtual {p1}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->release()V

    :cond_3
    throw v0

    .line 70
    :cond_4
    :try_start_2
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/calendar/alerts/TasksListenerService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    new-instance v2, Lcom/google/android/calendar/alerts/TasksListenerService$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/calendar/alerts/TasksListenerService$1;-><init>(Lcom/google/android/calendar/alerts/TasksListenerService;Ljava/util/List;)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {p1}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/ReminderEvent;

    .line 83
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ReminderEvent;->getTask()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v4

    .line 84
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ReminderEvent;->getAccountName()Ljava/lang/String;

    .line 85
    invoke-interface {v4}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x7

    if-ne v1, v5, :cond_5

    .line 96
    invoke-interface {v4}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v5

    .line 138
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ReminderEvent;->getType()I

    move-result v1

    const/4 v6, 0x2

    if-eq v1, v6, :cond_6

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 139
    invoke-interface {v4}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 140
    :cond_6
    invoke-interface {v4}, Lcom/google/android/gms/reminders/model/Task;->freeze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_7
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ReminderEvent;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    if-eqz v5, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 146
    invoke-interface {v4}, Lcom/google/android/gms/reminders/model/Task;->getSnoozed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    invoke-interface {v4}, Lcom/google/android/gms/reminders/model/Task;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 153
    :cond_8
    iget-object v0, p0, Lcom/google/android/calendar/alerts/TasksListenerService;->mTaskAlertsManager:Lcom/google/android/calendar/alerts/TaskAlertsManager;

    invoke-virtual {v0, v2}, Lcom/google/android/calendar/alerts/TaskAlertsManager;->cancel(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    if-eqz p1, :cond_9

    .line 156
    invoke-virtual {p1}, Lcom/google/android/gms/reminders/model/ReminderEventBuffer;->release()V

    .line 161
    :cond_9
    invoke-static {p0}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetTaskChanged(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_1

    .line 163
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/alerts/TasksListenerService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onSnoozePresetChanged(Lcom/google/android/gms/reminders/model/SnoozePresetChangedEventBuffer;)V
    .locals 0

    .prologue
    .line 224
    return-void
.end method
