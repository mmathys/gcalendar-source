.class Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;
.super Landroid/os/AsyncTask;
.source "TaskScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/screen/TaskScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAsyncTaskDone"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDone:Z

.field final synthetic this$0:Lcom/google/android/calendar/event/screen/TaskScreen;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/event/screen/TaskScreen;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;->mContext:Landroid/content/Context;

    .line 133
    iput-boolean p3, p0, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;->mDone:Z

    .line 134
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    # getter for: Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TaskScreen;->access$000(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/google/android/calendar/task/TimelyTimelineTask;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;->mDone:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/task/TimelyTimelineTask;->updateTaskDone(Landroid/content/Context;Z)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;->doInBackground([Ljava/lang/Void;)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;)V
    .locals 4

    .prologue
    .line 143
    iget-boolean v0, p1, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    # getter for: Lcom/google/android/calendar/event/screen/TaskScreen;->mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TaskScreen;->access$100(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->doDismissScreen()V

    .line 145
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/screen/TaskScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;->mDone:Z

    iget-object v3, p1, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;->mNotDoneMovedToMillis:Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/task/TaskUtils;->showReminderToast(Landroid/content/Context;IZLjava/lang/Long;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v0, "TaskScreen"

    const-string v1, "Failed to update reminder done status"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 127
    check-cast p1, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;->onPostExecute(Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;)V

    return-void
.end method
