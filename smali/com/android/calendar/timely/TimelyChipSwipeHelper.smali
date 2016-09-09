.class public Lcom/android/calendar/timely/TimelyChipSwipeHelper;
.super Ljava/lang/Object;
.source "TimelyChipSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;,
        Lcom/android/calendar/timely/TimelyChipSwipeHelper$AnimatorProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mAnimatorProvider:Lcom/android/calendar/timely/TimelyChipSwipeHelper$AnimatorProvider;

.field private mCleared:Z

.field private final mContext:Landroid/content/Context;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private mRecognitionStatus:I

.field private final mSwipeThreshold:I

.field private mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

.field private final mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/timely/TimelyChip;ILandroid/view/ViewConfiguration;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mCleared:Z

    .line 82
    iput-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    .line 83
    iput-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mAnimatorProvider:Lcom/android/calendar/timely/TimelyChipSwipeHelper$AnimatorProvider;

    .line 87
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    .line 88
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTouchSlop:I

    .line 91
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mMinFlingVelocity:I

    .line 92
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mMaxFlingVelocity:I

    .line 94
    iput p2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mSwipeThreshold:I

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->animateCollapse()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mCleared:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/calendar/timely/TimelyChipSwipeHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Lcom/android/calendar/timely/OnTimelineGestureListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)Lcom/android/calendar/timely/TimelyChip;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private animateCollapse()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->getCollapseAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 451
    if-nez v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/OnTimelineGestureListener;->onSwipeGestureEnd(Lcom/android/calendar/timely/TimelyChip;)V

    goto :goto_0

    .line 457
    :cond_2
    new-instance v1, Lcom/android/calendar/timely/TimelyChipSwipeHelper$6;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$6;-><init>(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 466
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->startAnimation(Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method private calculateTranslationDuration(FFZ)J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 519
    if-eqz p3, :cond_1

    .line 520
    const-wide/16 v0, 0x12c

    .line 523
    :goto_0
    cmpl-float v2, p2, v3

    if-eqz v2, :cond_0

    mul-float v2, p2, p1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 529
    :cond_0
    :goto_1
    return-wide v0

    .line 520
    :cond_1
    const-wide/16 v0, 0x96

    goto :goto_0

    .line 528
    :cond_2
    div-float v2, p1, p2

    .line 529
    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_1
.end method

.method private computeNewTranslationX(F)F
    .locals 6

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    .line 223
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getAgendaCoordinates()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    .line 226
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTranslationX()F

    move-result v0

    add-float/2addr v0, p1

    .line 227
    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 228
    int-to-float v0, v1

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v2}, Lcom/android/calendar/timely/TimelyChip;->supportsSwipe()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->isSupportedSwipeDirection(F)Z

    move-result v2

    if-nez v2, :cond_2

    .line 232
    :cond_1
    const v2, 0x3e19999a    # 0.15f

    int-to-float v3, v1

    mul-float/2addr v2, v3

    .line 235
    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v0, v4

    .line 236
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v2

    .line 238
    :cond_2
    return v0
.end method

.method private endAnimation()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 551
    :cond_0
    return-void
.end method

.method private getCollapseAnimator()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mAnimatorProvider:Lcom/android/calendar/timely/TimelyChipSwipeHelper$AnimatorProvider;

    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    .line 443
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mAnimatorProvider:Lcom/android/calendar/timely/TimelyChipSwipeHelper$AnimatorProvider;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$AnimatorProvider;->createCollapseAnimator(Lcom/android/calendar/timely/TimelyChip;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method private getTranslationXSwipeAnimator(FJ)Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    const-string v1, "translationX"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 499
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 500
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 501
    new-instance v1, Lcom/android/calendar/timely/TimelyChipSwipeHelper$8;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$8;-><init>(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 507
    return-object v0
.end method

.method private hasSameSign(FF)Z
    .locals 2

    .prologue
    .line 399
    mul-float v0, p1, p2

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChipSwipedFarEnough(F)Z
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTranslationX()F

    move-result v0

    .line 368
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->isSupportedSwipeDirection(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->hasSameSign(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mSwipeThreshold:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 368
    :goto_0
    return v0

    .line 370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChipSwipedFastEnough(FF)Z
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTranslationX()F

    move-result v0

    .line 378
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 379
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->isSupportedSwipeDirection(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->hasSameSign(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mMinFlingVelocity:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 382
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 383
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    .line 383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportedSwipeDirection(F)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 392
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v2}, Lcom/android/calendar/timely/TimelyChip;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    cmpg-float v2, p1, v3

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    cmpl-float v2, p1, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private obtainVelocityTracker()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 184
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 185
    return-void
.end method

.method private showConfirmationDialog(Lcom/android/calendar/task/TimelineTaskBundle;Z)V
    .locals 6

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/android/calendar/task/TimelineTaskBundle;->getNumReminders()I

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$plurals;->mark_reminders_done_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 324
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 323
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 326
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/calendar/timely/TimelyChipSwipeHelper$4;

    invoke-direct {v2, p0, p2}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$4;-><init>(Lcom/android/calendar/timely/TimelyChipSwipeHelper;Z)V

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$3;-><init>(Lcom/android/calendar/timely/TimelyChipSwipeHelper;Lcom/android/calendar/task/TimelineTaskBundle;Z)V

    .line 336
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/TimelyChipSwipeHelper$2;

    invoke-direct {v1, p0, p2}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$2;-><init>(Lcom/android/calendar/timely/TimelyChipSwipeHelper;Z)V

    .line 351
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 361
    return-void
.end method

.method private startAnimation(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->endAnimation()V

    .line 540
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mAnimator:Landroid/animation/Animator;

    .line 541
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 542
    return-void
.end method


# virtual methods
.method public animateDismiss(FZ)V
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 412
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getRight()I

    move-result v0

    neg-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 414
    :goto_0
    int-to-float v0, v0

    .line 415
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getTranslationX()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 416
    invoke-direct {p0, v1, p1, p2}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->calculateTranslationDuration(FFZ)J

    move-result-wide v2

    .line 419
    invoke-direct {p0, v0, v2, v3}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->getTranslationXSwipeAnimator(FJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 421
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->isReminder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->getCollapseAnimator()Landroid/animation/Animator;

    move-result-object v2

    .line 423
    if-eqz v2, :cond_1

    .line 424
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 425
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 429
    :goto_1
    new-instance v1, Lcom/android/calendar/timely/TimelyChipSwipeHelper$5;

    invoke-direct {v1, p0, p2}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$5;-><init>(Lcom/android/calendar/timely/TimelyChipSwipeHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 436
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->startAnimation(Landroid/animation/Animator;)V

    .line 437
    return-void

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getAgendaCoordinates()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public animateRestore(FZ)V
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTranslationX()F

    move-result v0

    neg-float v0, v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->calculateTranslationDuration(FFZ)J

    move-result-wide v0

    .line 478
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->getTranslationXSwipeAnimator(FJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->startAnimation(Landroid/animation/Animator;)V

    .line 479
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/android/calendar/timely/TimelyChipSwipeHelper$7;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$7;-><init>(Lcom/android/calendar/timely/TimelyChipSwipeHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 491
    return-void
.end method

.method public clearChip()V
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mCleared:Z

    .line 558
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->endAnimation()V

    .line 559
    return-void
.end method

.method public onSwipeAnimationEnd(Z)V
    .locals 10

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->isReminderBundle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/task/TimelineTaskBundle;

    invoke-direct {p0, v0, p1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->showConfirmationDialog(Lcom/android/calendar/task/TimelineTaskBundle;Z)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->isReminder()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    new-instance v1, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/task/TimelineTaskType;

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;-><init>(Landroid/content/Context;Lcom/android/calendar/task/TimelineTaskType;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 265
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$UpdateAsyncTaskDone;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 266
    if-eqz p1, :cond_2

    .line 267
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_event:I

    .line 269
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/calendar/R$string;->analytics_action_swipe_done:I

    .line 270
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/OnTimelineGestureListener;->onSwipeGestureEnd(Lcom/android/calendar/timely/TimelyChip;)V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->isGroove()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 279
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/calendar/groove/TimelineGroove;->markComplete(Landroid/content/Context;)V

    .line 280
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->animateCollapse()V

    goto :goto_0

    .line 284
    :cond_4
    new-instance v1, Lcom/android/calendar/DeleteEventHelper;

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;)V

    .line 285
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    .line 286
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineEvent;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineEvent;->getEndMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineEvent;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, -0x1

    new-instance v9, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;

    invoke-direct {v9, p0, p1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper$1;-><init>(Lcom/android/calendar/timely/TimelyChipSwipeHelper;Z)V

    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJILcom/android/calendar/DeleteEventHelper$DeleteNotifyListener;)V

    goto/16 :goto_0
.end method

.method public onSwipeGestureEnd(FF)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mRecognitionStatus:I

    .line 247
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->isChipSwipedFastEnough(FF)Z

    move-result v0

    .line 248
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->isChipSwipedFarEnough(F)Z

    move-result v1

    .line 251
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v2}, Lcom/android/calendar/timely/TimelyChip;->supportsSwipe()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 252
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->animateDismiss(FZ)V

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->animateRestore(FZ)V

    goto :goto_0
.end method

.method public onSwipeGestureStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setPressed(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/OnTimelineGestureListener;->onSwipeGestureStart(Lcom/android/calendar/timely/TimelyChip;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 211
    return-void
.end method

.method public onSwipeGestureUpdate(F)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->computeNewTranslationX(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setTranslationX(F)V

    .line 218
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->invalidateIncludingFootprint()V

    .line 219
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 174
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 176
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getX()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 178
    :cond_1
    :goto_1
    return-void

    .line 100
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mInitialTouchX:F

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mInitialTouchY:F

    .line 102
    iput v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mRecognitionStatus:I

    .line 103
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->obtainVelocityTracker()V

    goto :goto_0

    .line 108
    :pswitch_1
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanMr2OrLater()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    iput v9, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mRecognitionStatus:I

    .line 111
    :cond_2
    iget v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mRecognitionStatus:I

    if-eq v1, v9, :cond_1

    .line 113
    iget v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mRecognitionStatus:I

    if-ne v1, v8, :cond_3

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mInitialTouchX:F

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->onSwipeGestureUpdate(F)V

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    move v2, v0

    .line 118
    :goto_2
    add-int/lit8 v0, v3, 0x1

    if-ge v2, v0, :cond_0

    .line 121
    if-ge v2, v3, :cond_4

    .line 122
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v1

    .line 123
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    .line 128
    :goto_3
    iget v4, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mInitialTouchX:F

    sub-float v4, v1, v4

    .line 129
    iget v5, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mInitialTouchY:F

    sub-float v5, v0, v5

    .line 130
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 131
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 135
    cmpl-float v6, v5, v4

    if-lez v6, :cond_5

    iget v6, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTouchSlop:I

    int-to-float v6, v6

    const v7, 0x3f99999a    # 1.2f

    mul-float/2addr v7, v4

    .line 136
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    .line 137
    iput v9, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mRecognitionStatus:I

    goto :goto_1

    .line 125
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_3

    .line 142
    :cond_5
    iget v5, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    .line 143
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v2}, Lcom/android/calendar/timely/TimelyChip;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 145
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelyChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 149
    :cond_6
    iput v8, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mRecognitionStatus:I

    .line 152
    iput v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mInitialTouchX:F

    .line 153
    iput v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mInitialTouchY:F

    .line 155
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->onSwipeGestureStart()V

    goto/16 :goto_1

    .line 118
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 163
    :pswitch_2
    iget v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mRecognitionStatus:I

    if-ne v0, v8, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 165
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 166
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 165
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->onSwipeGestureEnd(FF)V

    goto/16 :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAnimatorProvider(Lcom/android/calendar/timely/TimelyChipSwipeHelper$AnimatorProvider;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mAnimatorProvider:Lcom/android/calendar/timely/TimelyChipSwipeHelper$AnimatorProvider;

    .line 193
    return-void
.end method

.method public setTimelineGestureListener(Lcom/android/calendar/timely/OnTimelineGestureListener;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyChipSwipeHelper;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    .line 189
    return-void
.end method
