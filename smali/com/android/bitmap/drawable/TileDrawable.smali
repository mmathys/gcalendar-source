.class public Lcom/android/bitmap/drawable/TileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TileDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mAlpha:I

.field private mFadeAlpha:I

.field protected final mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mInner:Landroid/graphics/drawable/Drawable;

.field private final mInnerHeight:I

.field private final mInnerWidth:I

.field private final mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIILcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
    .locals 4

    .prologue
    const/16 v1, 0xff

    .line 48
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mPaint:Landroid/graphics/Paint;

    .line 44
    iput v1, p0, Lcom/android/bitmap/drawable/TileDrawable;->mAlpha:I

    .line 45
    iput v1, p0, Lcom/android/bitmap/drawable/TileDrawable;->mFadeAlpha:I

    .line 49
    iput-object p5, p0, Lcom/android/bitmap/drawable/TileDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    .line 50
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    .line 51
    iput p2, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInnerWidth:I

    .line 52
    iput p3, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInnerHeight:I

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 57
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v2, p4

    .line 58
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 59
    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/bitmap/drawable/TileDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/bitmap/drawable/TileDrawable$1;-><init>(Lcom/android/bitmap/drawable/TileDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/TileDrawable;->reset()V

    .line 68
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/bitmap/drawable/TileDrawable;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/android/bitmap/drawable/TileDrawable;->mFadeAlpha:I

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 101
    iget v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mAlpha:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/bitmap/drawable/TileDrawable;->mFadeAlpha:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 103
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/TileDrawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/bitmap/drawable/TileDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/bitmap/drawable/TileDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget v2, v2, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v1, p0, Lcom/android/bitmap/drawable/TileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/TileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bitmap/drawable/TileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 111
    iget-object v1, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 112
    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/bitmap/drawable/TileDrawable;->getInnerAlpha()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 113
    iget-object v1, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 114
    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mAlpha:I

    return v0
.end method

.method protected getInnerAlpha()I
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0xff

    return v0
.end method

.method public getInnerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/TileDrawable;->invalidateSelf()V

    .line 191
    return-void
.end method

.method protected final isFadingFinished()Z
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mFadeAlpha:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 85
    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 92
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInnerWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 93
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInnerHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 94
    iget-object v2, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInnerWidth:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInnerHeight:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mAlpha:I

    .line 72
    iput v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mFadeAlpha:I

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/bitmap/drawable/TileDrawable;->setVisible(Z)Z

    .line 74
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/TileDrawable;->invalidateSelf()V

    .line 75
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/bitmap/drawable/TileDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 196
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mAlpha:I

    .line 121
    iput p1, p0, Lcom/android/bitmap/drawable/TileDrawable;->mAlpha:I

    .line 122
    if-eq p1, v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/TileDrawable;->invalidateSelf()V

    .line 125
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 147
    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 148
    :cond_0
    return-void
.end method

.method public setVisible(Z)Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/bitmap/drawable/TileDrawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 161
    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/drawable/TileDrawable;->mInner:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 162
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 163
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/TileDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/bitmap/drawable/TileDrawable;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 168
    iput v2, p0, Lcom/android/bitmap/drawable/TileDrawable;->mFadeAlpha:I

    .line 176
    :cond_1
    :goto_0
    return v0

    .line 171
    :cond_2
    iget v1, p0, Lcom/android/bitmap/drawable/TileDrawable;->mFadeAlpha:I

    if-ne v1, v2, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/bitmap/drawable/TileDrawable;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p0, p2}, Lcom/android/bitmap/drawable/TileDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method
