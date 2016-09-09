.class Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;
.super Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;
.source "ArpTaskAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/ArpTaskAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncProcessLoadedTasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks",
        "<",
        "Lcom/google/android/gms/reminders/model/RemindersBuffer;",
        ">;"
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
    .line 248
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;-><init>(Lcom/google/android/calendar/task/ArpTaskAccount;Ljava/util/List;)V

    .line 250
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    check-cast p1, [Lcom/google/android/gms/reminders/model/RemindersBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->doInBackground([Lcom/google/android/gms/reminders/model/RemindersBuffer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/android/gms/reminders/model/RemindersBuffer;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 257
    if-nez p1, :cond_1

    .line 258
    invoke-virtual {p0, v5}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->finishProcessingTasks(Z)V

    .line 311
    :cond_0
    :goto_0
    return-object v6

    .line 262
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 264
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$300(Lcom/google/android/calendar/task/ArpTaskAccount;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$400(Lcom/google/android/calendar/task/ArpTaskAccount;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-interface {v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 268
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->initializeStorage()V

    .line 269
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/google/android/calendar/task/ArpTaskAccount;->mBackgroundTimeLineTasks:Ljava/util/HashMap;

    .line 271
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$300(Lcom/google/android/calendar/task/ArpTaskAccount;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 272
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$400(Lcom/google/android/calendar/task/ArpTaskAccount;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-interface {v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 276
    :cond_3
    new-instance v1, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;

    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    .line 277
    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$500(Lcom/google/android/calendar/task/ArpTaskAccount;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    invoke-virtual {v3}, Lcom/google/android/calendar/task/ArpTaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;-><init>(Landroid/content/Context;Lcom/google/android/gms/reminders/model/RemindersBuffer;Ljava/lang/String;)V

    .line 278
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 279
    invoke-virtual {v1}, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->next()Lcom/google/android/calendar/task/ArpTimelineTask;

    move-result-object v2

    .line 280
    invoke-virtual {p0, v2}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->addTaskToStorage(Lcom/google/android/calendar/task/ArpTimelineTask;)V

    .line 282
    iget-object v3, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    iget-object v3, v3, Lcom/google/android/calendar/task/ArpTaskAccount;->mBackgroundTimeLineTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/google/android/calendar/task/ArpTimelineTask;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 285
    :cond_4
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$300(Lcom/google/android/calendar/task/ArpTaskAccount;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 286
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$400(Lcom/google/android/calendar/task/ArpTaskAccount;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v1

    const/16 v2, 0xca

    invoke-interface {v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 290
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->finalizeStorage()V

    .line 292
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$300(Lcom/google/android/calendar/task/ArpTaskAccount;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 293
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;
    invoke-static {v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$400(Lcom/google/android/calendar/task/ArpTaskAccount;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v1

    const/16 v2, 0xcb

    invoke-interface {v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 296
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->getCount()I

    move-result v1

    .line 297
    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->mBackgroundTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    iget-object v2, v2, Lcom/google/android/calendar/task/TaskAccount$Tasks;->mTasksList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 298
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->release()V

    .line 302
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$300(Lcom/google/android/calendar/task/ArpTaskAccount;)Z

    move-result v0

    .line 304
    invoke-virtual {p0, v5}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->finishProcessingTasks(Z)V

    .line 306
    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mAccount:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$600(Lcom/google/android/calendar/task/ArpTaskAccount;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    sub-int v2, v1, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/calendar/task/ArpLoadTester;->logLoadEnd(Ljava/lang/String;II)V

    goto/16 :goto_0
.end method
