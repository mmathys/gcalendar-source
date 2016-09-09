.class abstract Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;
.super Landroid/os/AsyncTask;
.source "ArpTaskAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/ArpTaskAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AsyncProcessTasks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Results:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TResults;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBackgroundEmptyTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

.field private final mBackgroundTaskMonthDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;",
            ">;"
        }
    .end annotation
.end field

.field protected mBackgroundTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

.field final synthetic this$0:Lcom/google/android/calendar/task/ArpTaskAccount;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/task/ArpTaskAccount;Ljava/util/List;)V
    .locals 1
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
    .line 185
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 181
    new-instance v0, Lcom/google/android/calendar/task/TaskAccount$Tasks;

    invoke-direct {v0}, Lcom/google/android/calendar/task/TaskAccount$Tasks;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->mBackgroundTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    .line 182
    new-instance v0, Lcom/google/android/calendar/task/TaskAccount$Tasks;

    invoke-direct {v0}, Lcom/google/android/calendar/task/TaskAccount$Tasks;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->mBackgroundEmptyTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    .line 186
    iput-object p2, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->mBackgroundTaskMonthDataList:Ljava/util/List;

    .line 187
    return-void
.end method


# virtual methods
.method protected addTaskToStorage(Lcom/google/android/calendar/task/ArpTimelineTask;)V
    .locals 3

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/google/android/calendar/task/ArpTimelineTask;->getStartDay()I

    move-result v1

    .line 209
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->mBackgroundTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    iget-object v0, v0, Lcom/google/android/calendar/task/TaskAccount$Tasks;->mMonthsTasksMap:Ljava/util/NavigableMap;

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/MonthData$TaskResults;

    .line 213
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/MonthData$TaskResults;->containsDay(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/MonthData$TaskResults;->addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V

    .line 217
    :cond_0
    return-void
.end method

.method protected finalizeStorage()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->mBackgroundTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    iget-object v0, v0, Lcom/google/android/calendar/task/TaskAccount$Tasks;->mMonthsTasksMap:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/MonthData$TaskResults;

    .line 225
    check-cast v0, Lcom/google/android/calendar/task/BundleTaskResults;

    .line 226
    invoke-virtual {v0}, Lcom/google/android/calendar/task/BundleTaskResults;->finalizeStorage()V

    .line 227
    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->mBackgroundTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    iget-object v2, v2, Lcom/google/android/calendar/task/TaskAccount$Tasks;->mTasksList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/BundleTaskResults;->getTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method protected finishProcessingTasks(Z)V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->mBackgroundTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    iput-object v1, v0, Lcom/google/android/calendar/task/ArpTaskAccount;->mTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    .line 236
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->mBackgroundEmptyTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    iput-object v1, v0, Lcom/google/android/calendar/task/ArpTaskAccount;->mEmptyTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    .line 237
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mListener:Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$200(Lcom/google/android/calendar/task/ArpTaskAccount;)Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->this$0:Lcom/google/android/calendar/task/ArpTaskAccount;

    # getter for: Lcom/google/android/calendar/task/ArpTaskAccount;->mLoadTagQueue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskAccount;->access$100(Lcom/google/android/calendar/task/ArpTaskAccount;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 237
    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;->onTaskAccountLoaded(Lcom/google/android/calendar/task/TaskAccount;Ljava/lang/Integer;)V

    .line 239
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initializeStorage()V
    .locals 6

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->mBackgroundTaskMonthDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;

    .line 195
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;->getStartJulianDay()I

    move-result v2

    .line 196
    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;->getEndJulianDay()I

    move-result v0

    .line 197
    iget-object v3, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->mBackgroundTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    iget-object v3, v3, Lcom/google/android/calendar/task/TaskAccount$Tasks;->mMonthsTasksMap:Ljava/util/NavigableMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/google/android/calendar/task/BundleTaskResults;

    invoke-direct {v5, v2, v0}, Lcom/google/android/calendar/task/BundleTaskResults;-><init>(II)V

    invoke-interface {v3, v4, v5}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v3, p0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;->mBackgroundEmptyTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    iget-object v3, v3, Lcom/google/android/calendar/task/TaskAccount$Tasks;->mMonthsTasksMap:Ljava/util/NavigableMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/google/android/calendar/task/BundleTaskResults;

    invoke-direct {v5, v2, v0}, Lcom/google/android/calendar/task/BundleTaskResults;-><init>(II)V

    invoke-interface {v3, v4, v5}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method
