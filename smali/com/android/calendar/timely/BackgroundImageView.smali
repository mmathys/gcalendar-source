.class public Lcom/android/calendar/timely/BackgroundImageView;
.super Landroid/view/View;
.source "BackgroundImageView.java"


# instance fields
.field private mBottomBackgroundPaint:Landroid/graphics/Paint;

.field private mDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

.field private mInitialTranslationX:I

.field private mInitialTranslationY:I

.field private mTopBackgroundPaint:Landroid/graphics/Paint;

.field private mTranslationY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/BackgroundImageView;->mTopBackgroundPaint:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/BackgroundImageView;->mBottomBackgroundPaint:Landroid/graphics/Paint;

    .line 31
    return-void
.end method

.method private getInitialTranslationY()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/calendar/timely/BackgroundImageView;->mInitialTranslationY:I

    return v0
.end method

.method private getTotalTranslationX()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/calendar/timely/BackgroundImageView;->mInitialTranslationX:I

    int-to-float v0, v0

    return v0
.end method

.method private getTotalTranslationY()F
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/android/calendar/timely/BackgroundImageView;->mInitialTranslationY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/timely/BackgroundImageView;->mTranslationY:F

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 132
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    instance-of v1, p1, Lcom/android/calendar/timely/BackgroundImageView;

    if-eqz v1, :cond_0

    .line 139
    check-cast p1, Lcom/android/calendar/timely/BackgroundImageView;

    .line 141
    invoke-virtual {p1}, Lcom/android/calendar/timely/BackgroundImageView;->getDrawable()Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/calendar/timely/BackgroundImageView;->getDrawable()Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    :cond_2
    invoke-virtual {p1}, Lcom/android/calendar/timely/BackgroundImageView;->getDrawable()Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->getKey()Lcom/android/bitmap/RequestKey;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/timely/BackgroundImageView;->getDrawable()Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->getKey()Lcom/android/bitmap/RequestKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-direct {p1}, Lcom/android/calendar/timely/BackgroundImageView;->getInitialTranslationY()I

    move-result v1

    invoke-direct {p0}, Lcom/android/calendar/timely/BackgroundImageView;->getInitialTranslationY()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 153
    invoke-direct {p1}, Lcom/android/calendar/timely/BackgroundImageView;->getTotalTranslationY()F

    move-result v1

    invoke-direct {p0}, Lcom/android/calendar/timely/BackgroundImageView;->getTotalTranslationY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 157
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDrawable()Lcom/android/calendar/timely/ListenableBitmapDrawable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImageView;->mDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    return-object v0
.end method

.method public hasDrawable()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImageView;->mDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImageView;->mDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    if-eqz v0, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/android/calendar/timely/BackgroundImageView;->getTotalTranslationY()F

    move-result v4

    .line 102
    cmpl-float v0, v4, v1

    if-lez v0, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/android/calendar/timely/BackgroundImageView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v5, p0, Lcom/android/calendar/timely/BackgroundImageView;->mTopBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    .line 103
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 115
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/timely/BackgroundImageView;->getTotalTranslationX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/calendar/timely/BackgroundImageView;->getTotalTranslationY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImageView;->mDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-direct {p0}, Lcom/android/calendar/timely/BackgroundImageView;->getTotalTranslationX()F

    move-result v0

    neg-float v0, v0

    invoke-direct {p0}, Lcom/android/calendar/timely/BackgroundImageView;->getTotalTranslationY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    :cond_1
    return-void

    .line 107
    :cond_2
    cmpg-float v0, v4, v1

    if-gez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/calendar/timely/BackgroundImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v2, v0, v4

    .line 110
    invoke-virtual {p0}, Lcom/android/calendar/timely/BackgroundImageView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/BackgroundImageView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/timely/BackgroundImageView;->mBottomBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 108
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setBottomBackgroundColor(I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImageView;->mBottomBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    return-void
.end method

.method public setClippingTranslationY(F)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/android/calendar/timely/BackgroundImageView;->mTranslationY:F

    .line 54
    invoke-virtual {p0}, Lcom/android/calendar/timely/BackgroundImageView;->invalidate()V

    .line 55
    return-void
.end method

.method public setImageDrawable(Lcom/android/calendar/timely/ListenableBitmapDrawable;)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/calendar/timely/BackgroundImageView;->mDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    .line 38
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImageView;->mDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 39
    return-void
.end method

.method public setInitialTranslationX(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/android/calendar/timely/BackgroundImageView;->mInitialTranslationX:I

    .line 43
    return-void
.end method

.method public setInitialTranslationY(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/android/calendar/timely/BackgroundImageView;->mInitialTranslationY:I

    .line 47
    return-void
.end method

.method public setTopBackgroundColor(I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImageView;->mTopBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImageView;->mDrawable:Lcom/android/calendar/timely/ListenableBitmapDrawable;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
