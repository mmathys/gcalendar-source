.class Lcom/android/calendar/AllInOneCalendarActivity$4;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;

.field final synthetic val$shouldRestoreExpandedSpeedDial:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;Z)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$4;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iput-boolean p2, p0, Lcom/android/calendar/AllInOneCalendarActivity$4;->val$shouldRestoreExpandedSpeedDial:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$4;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneCalendarActivity$4;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    .line 487
    invoke-virtual {v1, v2}, Lcom/android/calendar/task/BaseTaskDataFactory;->areCreationOfTasksSupported(Landroid/content/Context;)Z

    move-result v1

    .line 486
    # setter for: Lcom/android/calendar/AllInOneCalendarActivity;->mTaskCreationSupported:Z
    invoke-static {v0, v1}, Lcom/android/calendar/AllInOneCalendarActivity;->access$702(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z

    .line 488
    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$4;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$4;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->speedDialSupported:Z
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$900(Lcom/android/calendar/AllInOneCalendarActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$4;->val$shouldRestoreExpandedSpeedDial:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/calendar/AllInOneCalendarActivity;->restoreExpandedSpeedDial:Z
    invoke-static {v1, v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$802(Lcom/android/calendar/AllInOneCalendarActivity;Z)Z

    .line 489
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$4;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mPaused:Z
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1000(Lcom/android/calendar/AllInOneCalendarActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$4;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # invokes: Lcom/android/calendar/AllInOneCalendarActivity;->maybeAddCreatePromos()V
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$1100(Lcom/android/calendar/AllInOneCalendarActivity;)V

    .line 496
    :cond_0
    return-void

    .line 488
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
