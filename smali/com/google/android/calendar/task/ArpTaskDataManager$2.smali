.class Lcom/google/android/calendar/task/ArpTaskDataManager$2;
.super Ljava/lang/Object;
.source "ArpTaskDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/ArpTaskDataManager;->fireTimeoutCounter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/task/ArpTaskDataManager;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/ArpTaskDataManager;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$2;->this$0:Lcom/google/android/calendar/task/ArpTaskDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 583
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$2;->this$0:Lcom/google/android/calendar/task/ArpTaskDataManager;

    monitor-enter v1

    .line 584
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$2;->this$0:Lcom/google/android/calendar/task/ArpTaskDataManager;

    # getter for: Lcom/google/android/calendar/task/ArpTaskDataManager;->mTasksReady:Z
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->access$200(Lcom/google/android/calendar/task/ArpTaskDataManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$2;->this$0:Lcom/google/android/calendar/task/ArpTaskDataManager;

    # getter for: Lcom/google/android/calendar/task/ArpTaskDataManager;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->access$300(Lcom/google/android/calendar/task/ArpTaskDataManager;)Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->setEventsReady()V

    .line 586
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$2;->this$0:Lcom/google/android/calendar/task/ArpTaskDataManager;

    # invokes: Lcom/google/android/calendar/task/ArpTaskDataManager;->setTasksReady()V
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->access$400(Lcom/google/android/calendar/task/ArpTaskDataManager;)V

    .line 587
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$2;->this$0:Lcom/google/android/calendar/task/ArpTaskDataManager;

    sget v2, Lcom/android/calendar/R$string;->analytics_label_ui_revealed_timeout:I

    # invokes: Lcom/google/android/calendar/task/ArpTaskDataManager;->logRevealReason(I)V
    invoke-static {v0, v2}, Lcom/google/android/calendar/task/ArpTaskDataManager;->access$500(Lcom/google/android/calendar/task/ArpTaskDataManager;I)V

    .line 589
    :cond_0
    monitor-exit v1

    .line 590
    return-void

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
