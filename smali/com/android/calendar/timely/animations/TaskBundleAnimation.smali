.class public Lcom/android/calendar/timely/animations/TaskBundleAnimation;
.super Landroid/widget/FrameLayout;
.source "TaskBundleAnimation.java"


# instance fields
.field private mAnimSet:Landroid/animation/AnimatorSet;

.field private final mBgColor:I

.field private mBgOverlayAlpha:I

.field private mContentView:Landroid/view/View;

.field private final mPaint:Landroid/graphics/Paint;

.field private mShouldDrawScrim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mPaint:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mBgColor:I

    .line 40
    return-void
.end method

.method private scrimFadeIn()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->setOverlayAlpha(F)V

    .line 138
    const-string v0, "overlayAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 139
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 138
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private scrimFadeOut()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 145
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->setOverlayAlpha(F)V

    .line 146
    const-string v0, "overlayAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 147
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 146
    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public canAnimate()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected contentFadeIn()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 121
    iget-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mContentView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 122
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 123
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->withHardwareLayer(Landroid/view/View;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected contentFadeOut()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mContentView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 130
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 131
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 129
    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->withHardwareLayer(Landroid/view/View;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public init(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mContentView:Landroid/view/View;

    .line 66
    iput-boolean p2, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mShouldDrawScrim:Z

    .line 67
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 47
    iget-boolean v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mShouldDrawScrim:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mBgColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mBgOverlayAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 52
    :cond_0
    return-void
.end method

.method public setOverlayAlpha(F)V
    .locals 1

    .prologue
    .line 75
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mBgOverlayAlpha:I

    .line 76
    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->invalidate()V

    .line 77
    return-void
.end method

.method public startCloseAnimation()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 86
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 88
    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->contentFadeOut()Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 90
    iget-boolean v1, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mShouldDrawScrim:Z

    if-eqz v1, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->scrimFadeOut()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    iget-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 97
    return-void
.end method

.method public startOpenAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 105
    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->contentFadeIn()Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 107
    iget-boolean v1, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mShouldDrawScrim:Z

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->setVisibility(I)V

    .line 109
    invoke-direct {p0}, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->scrimFadeIn()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v1, v2}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    iget-object v0, p0, Lcom/android/calendar/timely/animations/TaskBundleAnimation;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 115
    return-void
.end method
