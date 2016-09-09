.class Lcom/google/android/calendar/event/screen/TaskScreen$2;
.super Ljava/lang/Object;
.source "TaskScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/TaskScreen;->onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/screen/TaskScreen;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/TaskScreen$2;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    iput-object p2, p0, Lcom/google/android/calendar/event/screen/TaskScreen$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 101
    iget-object v1, p0, Lcom/google/android/calendar/event/screen/TaskScreen$2;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$2;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    # getter for: Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TaskScreen;->access$000(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/google/android/calendar/task/TimelyTimelineTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTask;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$2;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    .line 102
    # getter for: Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TaskScreen;->access$000(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/google/android/calendar/task/TimelyTimelineTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTask;->getId()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$2;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    # getter for: Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TaskScreen;->access$000(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/google/android/calendar/task/TimelyTimelineTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTask;->getStartMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$2;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    .line 103
    # getter for: Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TaskScreen;->access$000(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/google/android/calendar/task/TimelyTimelineTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTask;->getDurationMillis()I

    move-result v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/calendar/event/screen/TaskScreen$2;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    .line 101
    invoke-static/range {v1 .. v8}, Lcom/google/android/calendar/task/snooze/SnoozeDialogFactory;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JIZLcom/google/android/calendar/task/snooze/SnoozeDialogFactory$SnoozeTaskListener;)V

    .line 104
    return-void
.end method
