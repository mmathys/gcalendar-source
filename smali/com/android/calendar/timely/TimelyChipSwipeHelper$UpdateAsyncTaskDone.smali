.class Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;
.super Landroid/os/AsyncTask;
.source "TimelyChipSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelyChipSwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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
.field private final mContext:Landroid/content/Context;

.field private final mTimelineTask:Lcom/android/calendar/task/TimelineTaskType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/task/TimelineTaskType;)V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 569
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;->mContext:Landroid/content/Context;

    .line 570
    iput-object p2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;->mTimelineTask:Lcom/android/calendar/task/TimelineTaskType;

    .line 571
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;
    .locals 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;->mTimelineTask:Lcom/android/calendar/task/TimelineTaskType;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/task/TimelineTaskType;->updateTaskDone(Landroid/content/Context;Z)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 564
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;->doInBackground([Ljava/lang/Void;)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 581
    iget-boolean v0, p1, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;->mSuccess:Z

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;->mTimelineTask:Lcom/android/calendar/task/TimelineTaskType;

    instance-of v0, v0, Lcom/android/calendar/task/TimelineTaskBundle;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;->mTimelineTask:Lcom/android/calendar/task/TimelineTaskType;

    check-cast v0, Lcom/android/calendar/task/TimelineTaskBundle;

    invoke-virtual {v0}, Lcom/android/calendar/task/TimelineTaskBundle;->getNumReminders()I

    move-result v0

    .line 585
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;->mNotDoneMovedToMillis:Ljava/lang/Long;

    invoke-static {v2, v0, v1, v3}, Lcom/android/calendar/task/TaskUtils;->showReminderToast(Landroid/content/Context;IZLjava/lang/Long;)V

    .line 590
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 584
    goto :goto_0

    .line 588
    :cond_1
    # getter for: Lcom/android/calendar/timely/TimelyChipSwipeHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to update reminder done status"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 564
    check-cast p1, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;->onPostExecute(Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;)V

    return-void
.end method
