.class public Lcom/android/calendar/timely/WeekRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "WeekRecyclerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mFirstPosAnimation:I

.field private final mGestureListener:Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;

.field public mNumVisibleDays:I

.field private mOffsetDay:I

.field private mPositionToScroll:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/calendar/timely/WeekRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/calendar/timely/WeekRecyclerView;->$assertionsDisabled:Z

    .line 42
    const-class v0, Lcom/android/calendar/timely/WeekRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/WeekRecyclerView;->TAG:Ljava/lang/String;

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mNumVisibleDays:I

    .line 56
    iput v1, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mPositionToScroll:I

    .line 58
    iput v1, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mFirstPosAnimation:I

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/WeekRecyclerView;->setScrollingTouchSlop(I)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/WeekRecyclerView;->setItemViewCacheSize(I)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/WeekRecyclerView;->setFocusable(Z)V

    .line 66
    new-instance v0, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;-><init>(Lcom/android/calendar/timely/WeekRecyclerView;Lcom/android/calendar/timely/WeekRecyclerView$1;)V

    iput-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mGestureListener:Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;

    .line 67
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    iget-object v1, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mGestureListener:Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 68
    return-void
.end method


# virtual methods
.method public correctXOffset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/WeekRecyclerAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->getPageWidth()I

    move-result v0

    .line 154
    int-to-float v1, v0

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    .line 157
    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->computeHorizontalScrollOffset()I

    move-result v2

    rem-int v0, v2, v0

    .line 158
    int-to-float v0, v0

    rem-float/2addr v0, v1

    .line 161
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 162
    neg-float v0, v0

    float-to-int v0, v0

    invoke-virtual {p0, v0, v3}, Lcom/android/calendar/timely/WeekRecyclerView;->smoothScrollBy(II)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    sub-float v0, v1, v0

    float-to-int v0, v0

    invoke-virtual {p0, v0, v3}, Lcom/android/calendar/timely/WeekRecyclerView;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mGestureListener:Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;

    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->setActionDownOffset(I)V

    .line 131
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 135
    :cond_0
    return v0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mGestureListener:Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;

    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->setCurrentOffset(I)V

    goto :goto_0
.end method

.method public getNumVisibleDays()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mNumVisibleDays:I

    return v0
.end method

.method public getOffsetDaysFromStartOfWeek()I
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/WeekRecyclerAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->getPageWidth()I

    move-result v0

    .line 173
    int-to-float v1, v0

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    .line 176
    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->computeHorizontalScrollOffset()I

    move-result v2

    rem-int v0, v2, v0

    .line 177
    float-to-int v1, v1

    div-int/2addr v0, v1

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 258
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mFirstPosAnimation:I

    .line 259
    iget v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mNumVisibleDays:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mOffsetDay:I

    .line 262
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->getOffsetDaysFromStartOfWeek()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mOffsetDay:I

    .line 252
    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 253
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mFirstPosAnimation:I

    .line 254
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 220
    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    int-to-float v1, v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v0, v1, v0

    float-to-int v3, v0

    .line 223
    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/WeekRecyclerAdapter;

    .line 224
    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->setPageWidth(I)V

    .line 227
    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 228
    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    .line 229
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 230
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 231
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 232
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_0
    iget v2, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mOffsetDay:I

    neg-int v2, v2

    invoke-virtual {v0}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->getDayWidth()I

    move-result v0

    mul-int/2addr v0, v2

    .line 239
    iget v2, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mNumVisibleDays:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 240
    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 243
    :cond_1
    iget v2, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mFirstPosAnimation:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 244
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 104
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    .line 107
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v1, v0

    .line 108
    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/WeekRecyclerAdapter;

    .line 109
    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mNumVisibleDays:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->setPageWidth(I)V

    .line 112
    iget v1, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mPositionToScroll:I

    if-eq v1, v4, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 114
    iget v2, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mPositionToScroll:I

    iget v3, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mOffsetDay:I

    .line 115
    invoke-virtual {v0}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->getDayWidth()I

    move-result v0

    mul-int/2addr v0, v3

    .line 114
    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 116
    iput v4, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mPositionToScroll:I

    .line 118
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mGestureListener:Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;

    invoke-virtual {v0}, Lcom/android/calendar/timely/WeekRecyclerView$MyGestureListener;->receivedOnTouchEvent()V

    .line 146
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public scrollToPositionWithOffset(IIZLcom/android/calendar/time/Time;)V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 190
    invoke-virtual {p0}, Lcom/android/calendar/timely/WeekRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/WeekRecyclerAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->getDayWidth()I

    move-result v1

    .line 191
    if-nez v1, :cond_1

    .line 192
    iput p1, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mPositionToScroll:I

    .line 193
    iput p2, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mOffsetDay:I

    .line 194
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 200
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 201
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    if-gt v1, p1, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 203
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 204
    if-eqz p3, :cond_2

    .line 205
    sget v1, Lcom/android/calendar/R$id;->week_days_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->autoScroll()V

    .line 211
    :cond_0
    :goto_1
    return-void

    .line 196
    :cond_1
    mul-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 207
    :cond_2
    sget v1, Lcom/android/calendar/R$id;->week_days_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v0, p4}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->scrollTo(Lcom/android/calendar/time/Time;)V

    goto :goto_1
.end method

.method public setNumVisibleDays(IZ)V
    .locals 4

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/calendar/timely/WeekRecyclerView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mNumVisibleDays:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mFirstPosAnimation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 93
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    if-eqz p2, :cond_3

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mNumVisibleDays:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 84
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 85
    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 86
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 87
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 88
    iput p1, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mNumVisibleDays:I

    .line 89
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 91
    :cond_3
    iput p1, p0, Lcom/android/calendar/timely/WeekRecyclerView;->mNumVisibleDays:I

    goto :goto_0
.end method
