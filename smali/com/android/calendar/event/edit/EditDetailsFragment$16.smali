.class Lcom/android/calendar/event/edit/EditDetailsFragment$16;
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

.field final synthetic val$fullScrollDelta:I


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/EditDetailsFragment;I)V
    .locals 0

    .prologue
    .line 1724
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$16;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    iput p2, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$16;->val$fullScrollDelta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 1727
    iget v0, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$16;->val$fullScrollDelta:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1728
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1729
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$16;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mFullscreenSegment:Lcom/android/calendar/editor/EditSegment;
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$300(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/editor/EditSegment;->getTop()I

    move-result v1

    sub-int v0, v1, v0

    .line 1730
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$16;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$100(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditorScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/editor/EditorScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1731
    iget-object v1, p0, Lcom/android/calendar/event/edit/EditDetailsFragment$16;->this$0:Lcom/android/calendar/event/edit/EditDetailsFragment;

    # getter for: Lcom/android/calendar/event/edit/EditDetailsFragment;->mScrollView:Lcom/android/calendar/editor/EditorScrollView;
    invoke-static {v1}, Lcom/android/calendar/event/edit/EditDetailsFragment;->access$100(Lcom/android/calendar/event/edit/EditDetailsFragment;)Lcom/android/calendar/editor/EditorScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/editor/EditorScrollView;->scrollTo(II)V

    .line 1733
    :cond_0
    return-void
.end method
