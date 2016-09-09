.class Lcom/google/android/calendar/event/screen/TaskScreen$1;
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
    .line 74
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/TaskScreen$1;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    iput-object p2, p0, Lcom/google/android/calendar/event/screen/TaskScreen$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/event/screen/TaskScreen$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$1;->val$context:Landroid/content/Context;

    sget v4, Lcom/android/calendar/R$string;->analytics_category_event_action:I

    .line 79
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$1;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    .line 80
    # getter for: Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TaskScreen;->access$000(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/google/android/calendar/task/TimelyTimelineTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTask;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mark_not_done"

    .line 78
    :goto_0
    invoke-interface {v2, v3, v4, v0}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$1;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    # getter for: Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TaskScreen;->access$000(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/google/android/calendar/task/TimelyTimelineTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;

    iget-object v2, p0, Lcom/google/android/calendar/event/screen/TaskScreen$1;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    .line 85
    # getter for: Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;
    invoke-static {v2}, Lcom/google/android/calendar/event/screen/TaskScreen;->access$000(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/google/android/calendar/task/TimelyTimelineTask;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;-><init>(Lcom/android/calendar/timely/TimelineItem;I)V

    .line 87
    iget-object v2, p0, Lcom/google/android/calendar/event/screen/TaskScreen$1;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    # getter for: Lcom/google/android/calendar/event/screen/TaskScreen;->mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;
    invoke-static {v2}, Lcom/google/android/calendar/event/screen/TaskScreen;->access$100(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$1;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    # getter for: Lcom/google/android/calendar/event/screen/TaskScreen;->mCommandBar:Lcom/android/calendar/event/EventInfoFragment$CommandBar;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TaskScreen;->access$100(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/android/calendar/event/EventInfoFragment$CommandBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment$CommandBar;->doDismissScreen()V

    .line 95
    :goto_1
    return-void

    .line 80
    :cond_0
    const-string v0, "mark_done"

    goto :goto_0

    .line 93
    :cond_1
    new-instance v2, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;

    iget-object v3, p0, Lcom/google/android/calendar/event/screen/TaskScreen$1;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    iget-object v4, p0, Lcom/google/android/calendar/event/screen/TaskScreen$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TaskScreen$1;->this$0:Lcom/google/android/calendar/event/screen/TaskScreen;

    # getter for: Lcom/google/android/calendar/event/screen/TaskScreen;->mTimelineTask:Lcom/google/android/calendar/task/TimelyTimelineTask;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TaskScreen;->access$000(Lcom/google/android/calendar/event/screen/TaskScreen;)Lcom/google/android/calendar/task/TimelyTimelineTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/task/TimelyTimelineTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;-><init>(Lcom/google/android/calendar/event/screen/TaskScreen;Landroid/content/Context;Z)V

    new-array v0, v1, [Ljava/lang/Void;

    .line 94
    invoke-virtual {v2, v0}, Lcom/google/android/calendar/event/screen/TaskScreen$UpdateAsyncTaskDone;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_2
    move v0, v1

    .line 93
    goto :goto_2
.end method
