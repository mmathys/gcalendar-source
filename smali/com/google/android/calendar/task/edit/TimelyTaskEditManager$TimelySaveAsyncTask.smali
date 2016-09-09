.class Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;
.super Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;
.source "TimelyTaskEditManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimelySaveAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/data/AbstractEditManager",
        "<",
        "Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;",
        ">.SaveAsyncTask;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;I)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    .line 495
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/event/data/AbstractEditManager$SaveAsyncTask;-><init>(Lcom/android/calendar/event/data/AbstractEditManager;I)V

    .line 496
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 513
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->isNewTaskEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    .line 515
    # getter for: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;
    invoke-static {v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$400(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getOriginalTask()Lcom/google/calendar/v2/client/service/api/tasks/ImmutableTask;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyImmutableTask;->getOriginalTask()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v3

    .line 516
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # invokes: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getUpdatedTask()Lcom/google/android/gms/reminders/model/Task;
    invoke-static {v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$500(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v4

    .line 517
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # invokes: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getAccountName()Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$600(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Ljava/lang/String;

    move-result-object v2

    .line 520
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->isNewTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    iget-object v0, v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # getter for: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$700(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1, v2, v4}, Lcom/google/android/calendar/task/TaskConnection;->createTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v0

    .line 532
    :goto_0
    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    invoke-virtual {v1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getLogMetrics()Lcom/android/calendar/event/data/TaskEditLogMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # getter for: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$1000(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # getter for: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskEdit:Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;
    invoke-static {v3}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$1100(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/event/data/TaskEditLogMetrics;->logSave(Landroid/content/Context;Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;)V

    .line 533
    new-instance v1, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;

    iget-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    .line 534
    # invokes: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getToastString(Z)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$1200(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v7, v6}, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    .line 536
    :goto_1
    return-object v0

    .line 523
    :cond_0
    iget v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->mModification:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 524
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    iget-object v0, v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # getter for: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$800(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/calendar/task/TaskConnection;->updateRecurrence(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/model/Task;I)Z

    move-result v0

    goto :goto_0

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    iget-object v0, v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # getter for: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$900(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/calendar/task/TaskConnection;->updateTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v0

    goto :goto_0

    .line 536
    :cond_2
    new-instance v0, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    .line 537
    # invokes: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getToastString(Z)Ljava/lang/String;
    invoke-static {v1, v6}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$1300(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7, v6}, Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 493
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/android/calendar/event/data/AbstractEditManager$SaveTaskOutput;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 500
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # getter for: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mCallbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$300(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AbstractEditManager$Callback;

    .line 506
    iget v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$TimelySaveAsyncTask;->mModification:I

    if-eq v1, v2, :cond_0

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/calendar/event/data/AbstractEditManager$Callback;->onSaveInitiated(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 509
    :cond_1
    return-void
.end method
