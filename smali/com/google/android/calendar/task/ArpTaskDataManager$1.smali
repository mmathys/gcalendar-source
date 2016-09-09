.class Lcom/google/android/calendar/task/ArpTaskDataManager$1;
.super Landroid/database/ContentObserver;
.source "ArpTaskDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/ArpTaskDataManager;-><init>(Landroid/app/Activity;Lcom/google/android/calendar/task/TaskConnection;Lcom/android/calendar/timely/MonthData;[Lcom/android/calendar/timely/MonthData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/task/ArpTaskDataManager;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/ArpTaskDataManager;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$1;->this$0:Lcom/google/android/calendar/task/ArpTaskDataManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$1;->this$0:Lcom/google/android/calendar/task/ArpTaskDataManager;

    # getter for: Lcom/google/android/calendar/task/ArpTaskDataManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->access$000(Lcom/google/android/calendar/task/ArpTaskDataManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/task/TaskDataFactory;->areTasksEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskDataManager$1;->this$0:Lcom/google/android/calendar/task/ArpTaskDataManager;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/calendar/task/ArpTaskDataManager;->loadAccounts(Z)V
    invoke-static {v0, v1}, Lcom/google/android/calendar/task/ArpTaskDataManager;->access$100(Lcom/google/android/calendar/task/ArpTaskDataManager;Z)V

    .line 171
    :cond_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/ArpTaskDataManager$1;->onChange(Z)V

    .line 176
    return-void
.end method
