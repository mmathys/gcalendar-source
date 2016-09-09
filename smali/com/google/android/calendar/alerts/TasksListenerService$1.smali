.class Lcom/google/android/calendar/alerts/TasksListenerService$1;
.super Ljava/lang/Object;
.source "TasksListenerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/alerts/TasksListenerService;->onRemindersChanged(Lcom/google/android/gms/reminders/model/ReminderEventBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/alerts/TasksListenerService;

.field final synthetic val$reminderEventsList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/alerts/TasksListenerService;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/calendar/alerts/TasksListenerService$1;->this$0:Lcom/google/android/calendar/alerts/TasksListenerService;

    iput-object p2, p0, Lcom/google/android/calendar/alerts/TasksListenerService$1;->val$reminderEventsList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskDataFactory;

    iget-object v1, p0, Lcom/google/android/calendar/alerts/TasksListenerService$1;->val$reminderEventsList:Ljava/util/List;

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/TaskDataFactory;->onTasksChanged(Ljava/util/List;)V

    .line 76
    return-void
.end method
