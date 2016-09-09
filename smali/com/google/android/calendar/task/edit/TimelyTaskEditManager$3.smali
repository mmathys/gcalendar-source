.class Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;
.super Landroid/os/AsyncTask;
.source "TimelyTaskEditManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->onEventDeleted(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$originalTask:Lcom/google/android/gms/reminders/model/Task;

.field final synthetic val$whichDelete:I


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;ILjava/lang/String;Lcom/google/android/gms/reminders/model/Task;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    iput p2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->val$whichDelete:I

    iput-object p3, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->val$accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->val$originalTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 547
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 551
    iget v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->val$whichDelete:I

    packed-switch v0, :pswitch_data_0

    .line 564
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 553
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    iget-object v0, v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # getter for: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$1400(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->val$accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->val$originalTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/calendar/task/TaskConnection;->deleteTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v0

    .line 566
    :goto_0
    if-nez v0, :cond_0

    .line 567
    const-string v0, "TaskEditManager"

    const-string v1, "Delete failed"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->getLogMetrics()Lcom/android/calendar/event/data/TaskEditLogMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # getter for: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$1700(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/data/TaskEditLogMetrics;->logDelete(Landroid/content/Context;)V

    .line 570
    const/4 v0, 0x0

    return-object v0

    .line 556
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    iget-object v0, v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # getter for: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$1500(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->val$accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->val$originalTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/google/android/calendar/task/TaskConnection;->deleteRecurrence(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Z

    move-result v0

    goto :goto_0

    .line 560
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    iget-object v0, v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    iget-object v1, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->this$0:Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    # getter for: Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->access$1600(Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->val$accountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager$3;->val$originalTask:Lcom/google/android/gms/reminders/model/Task;

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/calendar/task/TaskConnection;->deleteRecurrence(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Z

    move-result v0

    goto :goto_0

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
