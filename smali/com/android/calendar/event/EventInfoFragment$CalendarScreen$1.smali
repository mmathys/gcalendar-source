.class Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$1;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->onInflateCommandBar(Lcom/android/calendar/event/EventInfoFragment$CommandBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;)V
    .locals 0

    .prologue
    .line 4146
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$1;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4149
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$1;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$1;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v1, v1, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$1900(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->setResponseFollowUpVisible(Landroid/view/ViewGroup;IZZ)V
    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/calendar/event/EventInfoFragment;->access$2400(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup;IZZ)V

    .line 4153
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$1;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$1;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v1, v1, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$1900(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->updateResponseButtons(Landroid/view/ViewGroup;)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$2000(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup;)V

    .line 4155
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$1;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$3900(Lcom/android/calendar/event/EventInfoFragment;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4156
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$1;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$1600(Lcom/android/calendar/event/EventInfoFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$1;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v1, v1, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$3900(Lcom/android/calendar/event/EventInfoFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4157
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$1;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/event/EventInfoFragment;->mSaveResponseRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$3902(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 4159
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen$1;->this$1:Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment$CalendarScreen;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->getSaveResponseRunnable()Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$1400(Lcom/android/calendar/event/EventInfoFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4160
    return-void
.end method
