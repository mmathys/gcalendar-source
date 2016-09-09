.class Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;
.super Lcom/android/bitmap/drawable/TileDrawable;
.source "ExtendedBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Placeholder"
.end annotation


# instance fields
.field private mPulseAlpha:I

.field private final mPulseAnimator:Landroid/animation/ValueAnimator;

.field private mPulseEnabled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIILcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    .line 493
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/bitmap/drawable/TileDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIILcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseEnabled:Z

    .line 489
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAlpha:I

    .line 495
    iget v0, p6, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->placeholderAnimationDuration:I

    if-ne v0, v6, :cond_0

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder$2;

    invoke-direct {v1, p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder$2;-><init>(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 521
    return-void

    .line 499
    :cond_0
    iget v0, p6, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->placeholderAnimationDuration:I

    if-nez v0, :cond_1

    .line 500
    sget v0, Lcom/android/bitmap/R$integer;->bitmap_placeholder_animation_duration:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 504
    :goto_1
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    .line 505
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 506
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 507
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder$1;

    invoke-direct {v1, p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder$1;-><init>(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 502
    :cond_1
    iget v0, p6, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->placeholderAnimationDuration:I

    int-to-long v0, v0

    goto :goto_1

    .line 504
    nop

    :array_0
    .array-data 4
        0x37
        0xff
    .end array-data
.end method

.method static synthetic access$202(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;I)I
    .locals 0

    .prologue
    .line 485
    iput p1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAlpha:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;)V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->stopPulsing()V

    return-void
.end method

.method private startPulsing()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 549
    :cond_0
    return-void
.end method

.method private stopPulsing()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 540
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAlpha:I

    .line 541
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->invalidateSelf()V

    .line 543
    :cond_0
    return-void
.end method


# virtual methods
.method protected getInnerAlpha()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAlpha:I

    return v0
.end method

.method public setPulseEnabled(Z)V
    .locals 1

    .prologue
    .line 529
    iput-boolean p1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseEnabled:Z

    .line 530
    iget-boolean v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseEnabled:Z

    if-nez v0, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->stopPulsing()V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-direct {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->startPulsing()V

    goto :goto_0
.end method

.method public setVisible(Z)Z
    .locals 2

    .prologue
    .line 553
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/TileDrawable;->setVisible(Z)Z

    move-result v0

    .line 554
    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->mPulseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 568
    :cond_0
    :goto_0
    return v0

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->isFadingFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    invoke-direct {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->stopPulsing()V

    goto :goto_0
.end method
