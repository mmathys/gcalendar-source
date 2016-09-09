.class Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;
.super Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;
.source "ArpTaskAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/ArpTaskAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncProcessChangedTasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/reminders/model/ReminderEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/task/ArpTaskAccount;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/task/ArpTaskAccount;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    .line 321
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;-><init>(Lcom/google/android/calendar/task/ArpTaskAccount;Ljava/util/List;)V

    .line 322
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 318
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->doInBackground([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Void;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/reminders/model/ReminderEvent;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 330
    if-eqz p1, :cond_0

    aget-object v0, p1, v11

    if-nez v0, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-object v12

    .line 333
    :cond_1
    aget-object v0, p1, v11

    .line 334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    iget-object v1, v1, Lcom/google/android/calendar/task/ArpTaskAccount;->mBackgroundTimeLineTasks:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$300(Lcom/google/android/calendar/task/ArpTaskAccount;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$400(Lcom/google/android/calendar/task/ArpTaskAccount;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-interface {v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 342
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->initializeStorage()V

    .line 344
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$300(Lcom/google/android/calendar/task/ArpTaskAccount;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$400(Lcom/google/android/calendar/task/ArpTaskAccount;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-interface {v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    invoke-virtual {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v3

    .line 349
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$500(Lcom/google/android/calendar/task/ArpTaskAccount;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/time/DateTimeService;->getNewInstance(Landroid/content/Context;)Lcom/android/calendar/time/DateTimeService;

    move-result-object v5

    .line 350
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$500(Lcom/google/android/calendar/task/ArpTaskAccount;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/android/calendar/task/TaskUtils;->getTaskCalendarColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 351
    invoke-virtual {v5}, Lcom/android/calendar/time/DateTimeService;->today()Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v6

    .line 352
    sget-object v1, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    .line 353
    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$500(Lcom/google/android/calendar/task/ArpTaskAccount;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v8

    .line 356
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/ReminderEvent;

    .line 357
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ReminderEvent;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 361
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ReminderEvent;->getTask()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/reminders/model/TaskId;->getClientAssignedId()Ljava/lang/String;

    move-result-object v10

    .line 362
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ReminderEvent;->getTask()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v2

    .line 364
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/ReminderEvent;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    .line 365
    invoke-static {v2}, Lcom/google/android/calendar/task/TaskUtils;->shouldTaskBeInCalendar(Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 366
    :cond_5
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    iget-object v0, v0, Lcom/google/android/calendar/task/ArpTaskAccount;->mBackgroundTimeLineTasks:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 368
    :cond_6
    new-instance v1, Lcom/google/android/calendar/task/ArpTaskSetup;

    invoke-direct/range {v1 .. v8}, Lcom/google/android/calendar/task/ArpTaskSetup;-><init>(Lcom/google/android/gms/reminders/model/Task;Ljava/lang/String;ILcom/android/calendar/time/DateTimeService;JZ)V

    .line 370
    new-instance v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/task/ArpTimelineTask;-><init>(Lcom/google/android/calendar/task/ArpTaskSetup;)V

    .line 371
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    iget-object v1, v1, Lcom/google/android/calendar/task/ArpTaskAccount;->mBackgroundTimeLineTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 376
    :cond_7
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    iget-object v0, v0, Lcom/google/android/calendar/task/ArpTaskAccount;->mBackgroundTimeLineTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    .line 377
    invoke-virtual {p0, v0}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->addTaskToStorage(Lcom/google/android/calendar/task/ArpTimelineTask;)V

    goto :goto_2

    .line 380
    :cond_8
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$300(Lcom/google/android/calendar/task/ArpTaskAccount;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 381
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$400(Lcom/google/android/calendar/task/ArpTaskAccount;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0xca

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 385
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->finalizeStorage()V

    .line 387
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$300(Lcom/google/android/calendar/task/ArpTaskAccount;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 388
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$400(Lcom/google/android/calendar/task/ArpTaskAccount;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 391
    :cond_a
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$300(Lcom/google/android/calendar/task/ArpTaskAccount;)Z

    move-result v0

    .line 393
    invoke-virtual {p0, v11}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->finishProcessingTasks(Z)V

    .line 395
    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mAccount:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$600(Lcom/google/android/calendar/task/ArpTaskAccount;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    iget-object v1, v1, Lcom/google/android/calendar/task/ArpTaskAccount;->mBackgroundTimeLineTasks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v0, v1, v11}, Lcom/google/android/calendar/task/ArpLoadTester;->logLoadEnd(Ljava/lang/String;II)V

    goto/16 :goto_0
.end method
