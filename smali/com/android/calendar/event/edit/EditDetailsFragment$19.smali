.class Lcom/android/calendar/event/edit/EditDetailsFragment$19;
.super Ljava/lang/Object;
.source "EditDetailsFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$endHeight:I

.field final synthetic val$headlineContentHeight:I

.field final synthetic val$mainView:Lcom/android/calendar/event/edit/EditFragmentLayout;

.field final synthetic val$startHeight:I


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;IIILcom/android/calendar/event/edit/EditFragmentLayout;)V
    .locals 0

    .prologue
    .line 1762
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$19;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    iput p2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$19;->val$startHeight:I

    iput p3, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$19;->val$endHeight:I

    iput p4, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$19;->val$headlineContentHeight:I

    iput-object p5, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$19;->val$mainView:Lcom/android/calendar/event/edit/EditFragmentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 1765
    iget v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$19;->val$startHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$19;->val$endHeight:I

    iget v2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$19;->val$startHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 1766
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 1767
    iget v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$19;->val$headlineContentHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 1768
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$19;->val$mainView:Lcom/android/calendar/event/edit/EditFragmentLayout;

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/EditFragmentLayout;->setAnimatedShift(F)V

    .line 1769
    return-void
.end method
