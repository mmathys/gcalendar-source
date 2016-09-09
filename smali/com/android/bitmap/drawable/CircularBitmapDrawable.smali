.class public Lcom/android/bitmap/drawable/CircularBitmapDrawable;
.super Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;
.source "CircularBitmapDrawable.java"


# instance fields
.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderWidth:F

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mRect:Landroid/graphics/Rect;

.field private mShaderBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Z)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/bitmap/drawable/CircularBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 57
    iget-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    iget-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    return-void
.end method


# virtual methods
.method protected onDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->getBitmap()Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    iget-object v1, v0, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->onDrawCircularBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 96
    return-void
.end method

.method protected onDrawCircularBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    .line 124
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->onDrawCircularBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 125
    return-void
.end method

.method protected onDrawCircularBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 134
    iget-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapShader;

    .line 135
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mShaderBitmap:Landroid/graphics/Bitmap;

    if-eq v1, p1, :cond_1

    .line 136
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 137
    iput-object p1, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mShaderBitmap:Landroid/graphics/Bitmap;

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 142
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 143
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 142
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 144
    iget-object v2, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 146
    iget-object v1, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mMatrix:Landroid/graphics/Matrix;

    iget v2, p4, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p4, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 147
    iget-object v1, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 148
    iget-object v1, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 150
    iget-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    mul-float/2addr v2, p5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 152
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 154
    iget-object v1, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 158
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBorderWidth:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 157
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    return-void
.end method

.method protected onDrawPlaceholderOrProgress(Landroid/graphics/Canvas;Lcom/android/bitmap/drawable/TileDrawable;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 101
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 102
    invoke-virtual {p2}, Lcom/android/bitmap/drawable/TileDrawable;->getInnerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p2}, Lcom/android/bitmap/drawable/TileDrawable;->getInnerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 105
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v5, v0, v2

    .line 107
    iget-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 108
    iget-object v3, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mRect:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->onDrawCircularBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 114
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    .line 115
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v3, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBorderWidth:F

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 114
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 116
    return-void

    .line 110
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->onDrawPlaceholderOrProgress(Landroid/graphics/Canvas;Lcom/android/bitmap/drawable/TileDrawable;)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->setAlpha(I)V

    .line 165
    iget-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    if-eq p1, v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->invalidateSelf()V

    .line 170
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 175
    iget-object v0, p0, Lcom/android/bitmap/drawable/CircularBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 176
    return-void
.end method
