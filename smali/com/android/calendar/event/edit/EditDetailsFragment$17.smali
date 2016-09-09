.class Lcom/android/calendar/event/edit/EditDetailsFragment$17;
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

.field final synthetic val$headlineContentHeight:I

.field final synthetic val$headlineLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic val$mainView:Lcom/android/calendar/event/edit/EditFragmentLayout;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;Lcom/android/calendar/event/edit/EditFragmentLayout;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 0

    .prologue
    .line 1738
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$17;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    iput-object p2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$17;->val$mainView:Lcom/android/calendar/event/edit/EditFragmentLayout;

    iput-object p3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$17;->val$headlineLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput p4, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$17;->val$headlineContentHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$17;->val$mainView:Lcom/android/calendar/event/edit/EditFragmentLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/edit/EditFragmentLayout;->setAnimatedShift(F)V

    .line 1742
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$17;->val$headlineLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$17;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineHiddenMinHeight:I
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$2300(Lcom/android/calendar/event/edit/EditDetailsFragment;)I

    move-result v1

    iget v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$17;->val$headlineContentHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1744
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$17;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mHeadlineContent:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$2400(Lcom/android/calendar/event/edit/EditDetailsFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1745
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$17;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # invokes: Lcom/android/calendar/event/edit/EditDetailsFragment;->ensureFullScreenSegmentLayoutAndPosition()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$2500(Lcom/android/calendar/event/edit/EditDetailsFragment;)V

    .line 1746
    return-void
.end method
