.class Lcom/android/calendar/event/edit/EditDetailsFragment$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/EditDetailsFragment;->setHeadlineViewVisibility(ZZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

.field final synthetic val$onCompleteHandlers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1692
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$15;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    iput-object p2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$15;->val$onCompleteHandlers:Ljava/util/List;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$15;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mActiveHeadlineAnimation:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$2202(Lcom/android/calendar/event/edit/EditDetailsFragment;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1696
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$15;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$15;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$15;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1702
    :cond_0
    return-void

    .line 1699
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$15;->val$onCompleteHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1700
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
