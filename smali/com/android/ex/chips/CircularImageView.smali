.class public Lcom/android/ex/chips/CircularImageView;
.super Landroid/widget/ImageView;
.source "CircularImageView.java"


# static fields
.field private static circularImageBorder:F


# instance fields
.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final borderPaint:Landroid/graphics/Paint;

.field private final destination:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private final source:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/ex/chips/CircularImageView;->circularImageBorder:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/ex/chips/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/ex/chips/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/CircularImageView;->matrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/CircularImageView;->source:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/CircularImageView;->destination:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/CircularImageView;->bitmapPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/android/ex/chips/CircularImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/ex/chips/CircularImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/ex/chips/CircularImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/ex/chips/CircularImageView;->borderPaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/android/ex/chips/CircularImageView;->borderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcom/android/ex/chips/CircularImageView;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/android/ex/chips/CircularImageView;->borderPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/ex/chips/CircularImageView;->circularImageBorder:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v0, p0, Lcom/android/ex/chips/CircularImageView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    return-void
.end method


# virtual methods
.method public drawBitmapWithCircleOnCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 98
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 100
    iget-object v1, p0, Lcom/android/ex/chips/CircularImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 103
    iget-object v1, p0, Lcom/android/ex/chips/CircularImageView;->matrix:Landroid/graphics/Matrix;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, p3, p4, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 105
    iget-object v1, p0, Lcom/android/ex/chips/CircularImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 106
    iget-object v1, p0, Lcom/android/ex/chips/CircularImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 107
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/android/ex/chips/CircularImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 112
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v4

    sget v3, Lcom/android/ex/chips/CircularImageView;->circularImageBorder:F

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/ex/chips/CircularImageView;->borderPaint:Landroid/graphics/Paint;

    .line 111
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 113
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/android/ex/chips/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 61
    const/4 v2, 0x0

    .line 63
    instance-of v0, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 64
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 71
    :goto_0
    if-nez v0, :cond_2

    .line 84
    :cond_0
    :goto_1
    return-void

    .line 68
    :cond_1
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v1

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/ex/chips/CircularImageView;->source:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 80
    iget-object v1, p0, Lcom/android/ex/chips/CircularImageView;->destination:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/ex/chips/CircularImageView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/ex/chips/CircularImageView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/ex/chips/CircularImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/ex/chips/CircularImageView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 81
    invoke-virtual {p0}, Lcom/android/ex/chips/CircularImageView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/ex/chips/CircularImageView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 80
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 83
    iget-object v1, p0, Lcom/android/ex/chips/CircularImageView;->source:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/ex/chips/CircularImageView;->destination:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/ex/chips/CircularImageView;->drawBitmapWithCircleOnCanvas(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method
