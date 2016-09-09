.class Lcom/android/calendar/event/EventInfoFragment$9;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/EventInfoFragment$9;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1547
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$1100(Lcom/android/calendar/event/EventInfoFragment;)Lcom/android/calendar/EditResponseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1553
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-boolean v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mIsProposeTimeSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    .line 1555
    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$1200(Lcom/android/calendar/event/EventInfoFragment;)I

    move-result v1

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->canFollowUpOnResponse(I)Z
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$1300(Lcom/android/calendar/event/EventInfoFragment;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1556
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$1600(Lcom/android/calendar/event/EventInfoFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    .line 1557
    # invokes: Lcom/android/calendar/event/EventInfoFragment;->getSaveResponseRunnable()Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$1400(Lcom/android/calendar/event/EventInfoFragment;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->getSaveResponseTimeout()J
    invoke-static {v2}, Lcom/android/calendar/event/EventInfoFragment;->access$1500(Lcom/android/calendar/event/EventInfoFragment;)J

    move-result-wide v2

    .line 1556
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1583
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mIsPaused:Z
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$2500(Lcom/android/calendar/event/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # setter for: Lcom/android/calendar/event/EventInfoFragment;->mTentativeUserSetResponse:I
    invoke-static {v0, v4}, Lcom/android/calendar/event/EventInfoFragment;->access$1202(Lcom/android/calendar/event/EventInfoFragment;I)I

    .line 1586
    :cond_1
    return-void

    .line 1559
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->getSaveResponseRunnable()Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$1400(Lcom/android/calendar/event/EventInfoFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1567
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget v1, v1, Lcom/android/calendar/event/EventInfoFragment;->mOriginalAttendeeResponse:I

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->updateResponseId(I)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$1700(Lcom/android/calendar/event/EventInfoFragment;I)V

    .line 1568
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$1800(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1569
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$1900(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->updateResponseButtons(Landroid/view/ViewGroup;)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$2000(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup;)V

    .line 1570
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$1900(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->enableResponseButtons(Landroid/view/ViewGroup;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/calendar/event/EventInfoFragment;->access$2100(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup;Z)V

    .line 1571
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget v1, v1, Lcom/android/calendar/event/EventInfoFragment;->mOriginalAttendeeResponse:I

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->updateResponseListeners(I)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$2200(Lcom/android/calendar/event/EventInfoFragment;I)V

    .line 1574
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mIsResponseFollowUpShown:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$2300(Lcom/android/calendar/event/EventInfoFragment;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mResponseBarView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$1900(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment$9;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget v2, v2, Lcom/android/calendar/event/EventInfoFragment;->mOriginalAttendeeResponse:I

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->setResponseFollowUpVisible(Landroid/view/ViewGroup;IZZ)V
    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/calendar/event/EventInfoFragment;->access$2400(Lcom/android/calendar/event/EventInfoFragment;Landroid/view/ViewGroup;IZZ)V

    goto :goto_0
.end method
