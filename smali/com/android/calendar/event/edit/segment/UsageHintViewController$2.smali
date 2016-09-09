.class Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;
.super Lcom/android/calendar/TargetLayoutAnimationAdapter;
.source "UsageHintViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/UsageHintViewController;->doSetUsageHints(Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;Lcom/android/calendar/event/edit/segment/UsageHintDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

.field final synthetic val$animation:Landroid/animation/AnimatorSet;

.field final synthetic val$hintsContainer:Landroid/widget/FrameLayout;

.field final synthetic val$oldHeight:I

.field final synthetic val$viewsToRemove:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Landroid/view/View;Landroid/animation/Animator;Landroid/widget/FrameLayout;Landroid/animation/AnimatorSet;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    iput-object p4, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;->val$hintsContainer:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;->val$animation:Landroid/animation/AnimatorSet;

    iput-object p6, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;->val$viewsToRemove:Ljava/util/List;

    iput p7, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;->val$oldHeight:I

    invoke-direct {p0, p2, p3}, Lcom/android/calendar/TargetLayoutAnimationAdapter;-><init>(Landroid/view/View;Landroid/animation/Animator;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainerParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$300(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainerParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$300(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 462
    :cond_0
    return-void
.end method

.method protected prepareAnimationWithTargetLayout()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 447
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;->val$hintsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    .line 448
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;->val$animation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupEndValues()V

    .line 449
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;->val$viewsToRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 451
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 454
    :cond_0
    iget v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$2;->val$oldHeight:I

    if-eq v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
