.class Lcom/google/android/calendar/task/ArpTaskConnection$1;
.super Ljava/lang/Object;
.source "ArpTaskConnection.java"

# interfaces
.implements Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/ArpTaskConnection;->loadTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/task/ArpTaskConnection;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/ArpTaskConnection;Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1;->this$0:Lcom/google/android/calendar/task/ArpTaskConnection;

    iput-object p2, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1;->val$listener:Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;

    iput-object p3, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1;->val$accountName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskLoaded(Lcom/google/android/gms/reminders/model/Task;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 255
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1;->this$0:Lcom/google/android/calendar/task/ArpTaskConnection;

    # invokes: Lcom/google/android/calendar/task/ArpTaskConnection;->isReminderInstanceOfRecurrence(Lcom/google/android/gms/reminders/model/Task;)Z
    invoke-static {v1, p1}, Lcom/google/android/calendar/task/ArpTaskConnection;->access$000(Lcom/google/android/calendar/task/ArpTaskConnection;Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1;->val$listener:Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;

    if-eqz p1, :cond_0

    .line 257
    new-instance v2, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v2, p1}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setRecurrenceInfo(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 256
    :cond_0
    invoke-interface {v1, v0}, Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;->onTaskLoaded(Lcom/google/android/gms/reminders/model/Task;)V

    .line 279
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1;->this$0:Lcom/google/android/calendar/task/ArpTaskConnection;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1;->val$accountName:Ljava/lang/String;

    .line 266
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrenceId()Ljava/lang/String;

    move-result-object v3

    .line 265
    # invokes: Lcom/google/android/calendar/task/ArpTaskConnection;->loadRecurrenceMasterByIdStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/calendar/task/ArpTaskConnection;->access$300(Lcom/google/android/calendar/task/ArpTaskConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/calendar/task/ArpTaskConnection$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/calendar/task/ArpTaskConnection$1$1;-><init>(Lcom/google/android/calendar/task/ArpTaskConnection$1;Lcom/google/android/gms/reminders/model/Task;)V

    .line 266
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0
.end method
