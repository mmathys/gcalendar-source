.class Lcom/android/calendar/event/EventInfoFragment$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 1706
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$10;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$10;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1728
    :goto_0
    return-void

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$10;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$1800(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1721
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$10;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mAllDataLoaded:Z
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$2800(Lcom/android/calendar/event/EventInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1722
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$10;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/EventInfoFragment;->onAllDataLoaded()V

    .line 1724
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$10;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/calendar/event/EventInfoFragment;->showEventView(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/EventInfoFragment;->access$400(Lcom/android/calendar/event/EventInfoFragment;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1726
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$10;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$2900(Lcom/android/calendar/event/EventInfoFragment;)Lcom/android/calendar/timely/LoadingStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->startLoadingPhases()V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$10;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$1800(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1710
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$10;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EventInfoFragment;->mEventInfoView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1711
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$10;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mAnimationView:Lcom/android/calendar/timely/animations/EventInfoAnimationView;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$600(Lcom/android/calendar/event/EventInfoFragment;)Lcom/android/calendar/timely/animations/EventInfoAnimationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setVisibility(I)V

    .line 1712
    return-void
.end method
