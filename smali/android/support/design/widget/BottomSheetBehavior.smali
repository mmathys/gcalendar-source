.class public Landroid/support/design/widget/BottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomSheetBehavior$SavedState;,
        Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;,
        Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

.field private final mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mHideable:Z

.field private mIgnoreEvents:Z

.field private mInitialY:I

.field private mLastNestedScrollDy:I

.field private mMaxOffset:I

.field private mMaximumVelocity:F

.field private mMinOffset:I

.field private mNestedScrolled:Z

.field private mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mParentHeight:I

.field private mPeekHeight:I

.field private mPeekHeightAuto:Z

.field private mPeekHeightMin:I

.field private mSkipCollapsed:Z

.field private mState:I

.field private mTouchingScrollingChild:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 139
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    .line 632
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 179
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    .line 632
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$2;

    invoke-direct {v0, p0}, Landroid/support/design/widget/BottomSheetBehavior$2;-><init>(Landroid/support/design/widget/BottomSheetBehavior;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 180
    sget-object v0, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 182
    sget v1, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-ne v2, v3, :cond_0

    .line 184
    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    .line 189
    :goto_0
    sget v1, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_hideable:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setHideable(Z)V

    .line 190
    sget v1, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_skipCollapsed:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 192
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaximumVelocity:F

    .line 195
    return-void

    .line 186
    :cond_0
    sget v1, Landroid/support/design/R$styleable;->BottomSheetBehavior_Layout_behavior_peekHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    return v0
.end method

.method static synthetic access$1000(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;F)Z
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    return v0
.end method

.method static synthetic access$1200(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    return v0
.end method

.method static synthetic access$1300(Landroid/support/design/widget/BottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/BottomSheetBehavior;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z

    return v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$400(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/BottomSheetBehavior;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/BottomSheetBehavior;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/design/widget/BottomSheetBehavior;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/design/widget/BottomSheetBehavior;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    return v0
.end method

.method static synthetic access$900(Landroid/support/design/widget/BottomSheetBehavior;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    return v0
.end method

.method private dispatchOnSlide(I)V
    .locals 5

    .prologue
    .line 717
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 718
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_0

    .line 719
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    if-le p1, v1, :cond_1

    .line 720
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v2, p1

    int-to-float v2, v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onSlide(Landroid/view/View;F)V

    goto :goto_0
.end method

.method private findScrollingChild(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    .line 595
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_0

    .line 607
    :goto_0
    return-object p1

    .line 598
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 599
    check-cast p1, Landroid/view/ViewGroup;

    .line 600
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 601
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 603
    goto :goto_0

    .line 600
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 607
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private getYVelocity()F
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaximumVelocity:F

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 612
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 575
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    .line 576
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 580
    :cond_0
    return-void
.end method

.method private setStateInternal(I)V
    .locals 2

    .prologue
    .line 564
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-ne v0, p1, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iput p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    .line 568
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 569
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mCallback:Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v1, v0, p1}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;->onStateChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private shouldHide(Landroid/view/View;F)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 583
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mSkipCollapsed:Z

    if-eqz v2, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v0

    .line 586
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    if-ge v2, v3, :cond_2

    move v0, v1

    .line 588
    goto :goto_0

    .line 590
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 591
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return v2

    .line 258
    :cond_0
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 260
    if-nez v3, :cond_1

    .line 261
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    .line 263
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 264
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 266
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 267
    packed-switch v3, :pswitch_data_0

    .line 290
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v1

    .line 291
    goto :goto_0

    .line 270
    :pswitch_1
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z

    .line 271
    iput v6, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    .line 273
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-eqz v0, :cond_3

    .line 274
    iput-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    goto :goto_0

    .line 279
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 280
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    .line 281
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 282
    if-eqz v0, :cond_4

    iget v5, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    invoke-virtual {p1, v0, v4, v5}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 283
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    .line 284
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mTouchingScrollingChild:Z

    .line 286
    :cond_4
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mActivePointerId:I

    if-ne v0, v6, :cond_5

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    .line 287
    invoke-virtual {p1, p2, v4, v0}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 296
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 297
    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v3, :cond_7

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-eq v3, v1, :cond_7

    .line 299
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v0, v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    int-to-float v0, v0

    .line 300
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_7

    :goto_3
    move v2, v1

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_3

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 216
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-static {p2, v5}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 219
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 221
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 223
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    .line 225
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-eqz v0, :cond_4

    .line 226
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Landroid/support/design/R$dimen;->design_bottom_sheet_peek_height_min:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    .line 230
    :cond_1
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightMin:I

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x9

    div-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 234
    :goto_0
    const/4 v2, 0x0

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    .line 235
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    sub-int v0, v2, v0

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    .line 236
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 237
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 245
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v0, :cond_3

    .line 246
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 248
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 249
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p2}, Landroid/support/design/widget/BottomSheetBehavior;->findScrollingChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    .line 250
    return v5

    .line 232
    :cond_4
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    goto :goto_0

    .line 238
    :cond_5
    iget-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 239
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 240
    :cond_6
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 241
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1

    .line 242
    :cond_7
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-eq v0, v5, :cond_8

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 243
    :cond_8
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p3, v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 420
    invoke-super/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 342
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 343
    if-eq p3, v0, :cond_0

    .line 374
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 347
    sub-int v1, v0, p5

    .line 348
    if-lez p5, :cond_3

    .line 349
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    if-ge v1, v2, :cond_2

    .line 350
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int/2addr v0, v1

    aput v0, p6, v3

    .line 351
    aget v0, p6, v3

    neg-int v0, v0

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 352
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 371
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->dispatchOnSlide(I)V

    .line 372
    iput p5, p0, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    .line 373
    iput-boolean v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    goto :goto_0

    .line 354
    :cond_2
    aput p5, p6, v3

    .line 355
    neg-int v0, p5

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 356
    invoke-direct {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 358
    :cond_3
    if-gez p5, :cond_1

    .line 359
    const/4 v2, -0x1

    invoke-static {p3, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    if-le v1, v2, :cond_4

    iget-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v1, :cond_5

    .line 361
    :cond_4
    aput p5, p6, v3

    .line 362
    neg-int v0, p5

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 363
    invoke-direct {p0, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1

    .line 365
    :cond_5
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v0, v1

    aput v0, p6, v3

    .line 366
    aget v0, p6, v3

    neg-int v0, v0

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 367
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    check-cast p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    .line 205
    invoke-virtual {p3}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 207
    iget v0, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 208
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_1
    iget v0, p3, Landroid/support/design/widget/BottomSheetBehavior$SavedState;->state:I

    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Landroid/support/design/widget/BottomSheetBehavior$SavedState;

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 334
    iput v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    .line 335
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    .line 336
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x3

    .line 378
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    if-ne v2, v3, :cond_1

    .line 379
    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne p3, v2, :cond_0

    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    if-eqz v2, :cond_0

    .line 387
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    if-lez v2, :cond_2

    .line 388
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    .line 406
    :goto_1
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, p2, v3, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 407
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    .line 408
    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;

    invoke-direct {v1, p0, p2, v0}, Landroid/support/design/widget/BottomSheetBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 412
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mNestedScrolled:Z

    goto :goto_0

    .line 390
    :cond_2
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->getYVelocity()F

    move-result v2

    invoke-direct {p0, p2, v2}, Landroid/support/design/widget/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 391
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    .line 392
    const/4 v0, 0x5

    goto :goto_1

    .line 393
    :cond_3
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mLastNestedScrollDy:I

    if-nez v2, :cond_5

    .line 394
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 395
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 396
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMinOffset:I

    goto :goto_1

    .line 399
    :cond_4
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    move v5, v1

    move v1, v0

    move v0, v5

    .line 400
    goto :goto_1

    .line 403
    :cond_5
    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    move v5, v1

    move v1, v0

    move v0, v5

    .line 404
    goto :goto_1

    .line 410
    :cond_6
    invoke-direct {p0, v0}, Landroid/support/design/widget/BottomSheetBehavior;->setStateInternal(I)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 305
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 308
    :cond_1
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    .line 309
    iget v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    if-ne v3, v0, :cond_2

    if-eqz v2, :cond_0

    .line 312
    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 314
    if-nez v2, :cond_3

    .line 315
    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior;->reset()V

    .line 317
    :cond_3
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_4

    .line 318
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 320
    :cond_4
    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 323
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-nez v2, :cond_5

    .line 324
    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mInitialY:I

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 325
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 328
    :cond_5
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mIgnoreEvents:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public setHideable(Z)V
    .locals 0

    .prologue
    .line 471
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mHideable:Z

    .line 472
    return-void
.end method

.method public final setPeekHeight(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 433
    .line 434
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 435
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-nez v2, :cond_3

    .line 436
    iput-boolean v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    .line 445
    :goto_0
    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 447
    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 451
    :cond_0
    return-void

    .line 439
    :cond_1
    iget-boolean v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    if-nez v2, :cond_2

    iget v2, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    if-eq v2, p1, :cond_3

    .line 440
    :cond_2
    iput-boolean v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeightAuto:Z

    .line 441
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mPeekHeight:I

    .line 442
    iget v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mParentHeight:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mMaxOffset:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setSkipCollapsed(Z)V
    .locals 0

    .prologue
    .line 492
    iput-boolean p1, p0, Landroid/support/design/widget/BottomSheetBehavior;->mSkipCollapsed:Z

    .line 493
    return-void
.end method
