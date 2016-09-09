.class public Lcom/android/calendar/event/CommandBarAnimatorListener;
.super Ljava/lang/Object;
.source "CommandBarAnimatorListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private mCommandBar:Landroid/view/View;

.field private mInitialSegmentsPaddingBottom:I

.field private mResponseHeight:I

.field private mSegmentsContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget v0, Lcom/android/calendar/R$dimen;->info_action_bar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mResponseHeight:I

    .line 27
    iput-object p2, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mCommandBar:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mCommandBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 29
    iput-object p3, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mSegmentsContainer:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mSegmentsContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mInitialSegmentsPaddingBottom:I

    .line 31
    return-void
.end method

.method private setCommandBarBottomMargin(I)V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mCommandBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 48
    iget-object v1, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mCommandBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    return-void
.end method

.method private setSegmentsContainerAdditionalPadding(I)V
    .locals 5

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mSegmentsContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mSegmentsContainer:Landroid/view/View;

    .line 53
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mSegmentsContainer:Landroid/view/View;

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mSegmentsContainer:Landroid/view/View;

    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mInitialSegmentsPaddingBottom:I

    add-int/2addr v4, p1

    .line 52
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 57
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/CommandBarAnimatorListener;->setCommandBarVisibleHeight(I)V

    .line 36
    return-void
.end method

.method public setCommandBarVisibleHeight(I)V
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mResponseHeight:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/calendar/event/CommandBarAnimatorListener;->setCommandBarBottomMargin(I)V

    .line 42
    iget v0, p0, Lcom/android/calendar/event/CommandBarAnimatorListener;->mResponseHeight:I

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/calendar/event/CommandBarAnimatorListener;->setSegmentsContainerAdditionalPadding(I)V

    .line 43
    return-void
.end method
