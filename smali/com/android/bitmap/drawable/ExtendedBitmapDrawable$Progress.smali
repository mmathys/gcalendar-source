.class Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;
.super Lcom/android/bitmap/drawable/TileDrawable;
.source "ExtendedBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Progress"
.end annotation


# instance fields
.field private final mRotateAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIILcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
    .locals 6

    .prologue
    .line 580
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/bitmap/drawable/TileDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIILcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 582
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget v1, Lcom/android/bitmap/R$integer;->bitmap_progress_animation_duration:I

    .line 583
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    .line 584
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 585
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 586
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress$1;

    invoke-direct {v1, p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress$1;-><init>(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 592
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress$2;

    invoke-direct {v1, p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress$2;-><init>(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 600
    return-void

    .line 582
    nop

    :array_0
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method

.method static synthetic access$400(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method


# virtual methods
.method public setVisible(Z)Z
    .locals 2

    .prologue
    .line 604
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/TileDrawable;->setVisible(Z)Z

    move-result v0

    .line 605
    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 618
    :cond_0
    :goto_0
    return v0

    .line 613
    :cond_1
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->isFadingFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method
