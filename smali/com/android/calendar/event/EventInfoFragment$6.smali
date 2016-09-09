.class Lcom/android/calendar/event/EventInfoFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->showEventView(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;

.field final synthetic val$commandBarAnimatorListener:Lcom/android/calendar/event/CommandBarAnimatorListener;

.field final synthetic val$onAnimationEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Lcom/android/calendar/event/CommandBarAnimatorListener;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$6;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/EventInfoFragment$6;->val$commandBarAnimatorListener:Lcom/android/calendar/event/CommandBarAnimatorListener;

    iput-object p3, p0, Lcom/android/calendar/event/EventInfoFragment$6;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$6;->val$commandBarAnimatorListener:Lcom/android/calendar/event/CommandBarAnimatorListener;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$6;->val$commandBarAnimatorListener:Lcom/android/calendar/event/CommandBarAnimatorListener;

    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$6;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mResponseHeight:I
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoFragment;->access$700(Lcom/android/calendar/event/EventInfoFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CommandBarAnimatorListener;->setCommandBarVisibleHeight(I)V

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$6;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1061
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$6;->val$commandBarAnimatorListener:Lcom/android/calendar/event/CommandBarAnimatorListener;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$6;->val$commandBarAnimatorListener:Lcom/android/calendar/event/CommandBarAnimatorListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/CommandBarAnimatorListener;->setCommandBarVisibleHeight(I)V

    .line 1053
    :cond_0
    return-void
.end method
