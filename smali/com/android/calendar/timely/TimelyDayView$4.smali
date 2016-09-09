.class Lcom/android/calendar/timely/TimelyDayView$4;
.super Ljava/lang/Object;
.source "TimelyDayView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/TimelyDayView;->createMoveViewsAnimator(IFZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mLastValue:I

.field final synthetic this$0:Lcom/android/calendar/timely/TimelyDayView;

.field final synthetic val$shouldMoveNowLine:Z

.field final synthetic val$viewsToMove:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelyDayView;ZLjava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyDayView$4;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    iput-boolean p2, p0, Lcom/android/calendar/timely/TimelyDayView$4;->val$shouldMoveNowLine:Z

    iput-object p3, p0, Lcom/android/calendar/timely/TimelyDayView$4;->val$viewsToMove:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView$4;->mLastValue:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .prologue
    .line 520
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 521
    iget v1, p0, Lcom/android/calendar/timely/TimelyDayView$4;->mLastValue:I

    sub-int v2, v0, v1

    .line 522
    iput v0, p0, Lcom/android/calendar/timely/TimelyDayView$4;->mLastValue:I

    .line 525
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView$4;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 526
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 527
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView$4;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/TimelyDayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayView$4;->val$shouldMoveNowLine:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView$4;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView$4;->this$0:Lcom/android/calendar/timely/TimelyDayView;

    # getter for: Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyDayView;->access$000(Lcom/android/calendar/timely/TimelyDayView;)I

    move-result v1

    add-int/2addr v1, v2

    # setter for: Lcom/android/calendar/timely/TimelyDayView;->mNowLineYAgenda:I
    invoke-static {v0, v1}, Lcom/android/calendar/timely/TimelyDayView;->access$002(Lcom/android/calendar/timely/TimelyDayView;I)I

    .line 535
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayView$4;->val$viewsToMove:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayView$4;->val$viewsToMove:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 537
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    int-to-float v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/view/View;->setY(F)V

    .line 535
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 539
    :cond_1
    return-void
.end method
