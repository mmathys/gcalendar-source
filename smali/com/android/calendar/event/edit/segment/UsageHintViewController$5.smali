.class Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;
.super Lcom/android/calendar/TargetLayoutAnimationAdapter;
.source "UsageHintViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/UsageHintViewController;->setHintsContainerVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

.field final synthetic val$animation:Landroid/animation/AnimatorSet;

.field final synthetic val$dividerView:Landroid/view/View;

.field final synthetic val$hintsContainer:Landroid/widget/FrameLayout;

.field final synthetic val$hintsContainerParent:Landroid/view/ViewGroup;

.field final synthetic val$setVisible:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Landroid/view/View;Landroid/animation/Animator;ZLandroid/widget/FrameLayout;Landroid/view/ViewGroup;Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    iput-boolean p4, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$setVisible:Z

    iput-object p5, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$hintsContainer:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$hintsContainerParent:Landroid/view/ViewGroup;

    iput-object p7, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$animation:Landroid/animation/AnimatorSet;

    iput-object p8, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$dividerView:Landroid/view/View;

    invoke-direct {p0, p2, p3}, Lcom/android/calendar/TargetLayoutAnimationAdapter;-><init>(Landroid/view/View;Landroid/animation/Animator;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$hintsContainer:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$setVisible:Z

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 591
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$dividerView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$setVisible:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 592
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainerParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$300(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    # getter for: Lcom/android/calendar/event/edit/segment/UsageHintViewController;->mHintsContainerParent:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/UsageHintViewController;->access$300(Lcom/android/calendar/event/edit/segment/UsageHintViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 595
    :cond_0
    return-void

    .line 591
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareAnimationWithTargetLayout()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 579
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$setVisible:Z

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$hintsContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$hintsContainerParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRight(I)V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$animation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->setupEndValues()V

    .line 583
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$hintsContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 584
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$5;->val$dividerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 585
    return v2
.end method
