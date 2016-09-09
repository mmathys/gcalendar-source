.class public Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;
.super Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;
.source "StyledCornersBitmapDrawable.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sRectF:Landroid/graphics/RectF;


# instance fields
.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mBorderWidth:F

.field private mBottomEndCornerStyle:I

.field private mBottomLeftCornerStyle:I

.field private mBottomRightCornerStyle:I

.field private mBottomStartCornerStyle:I

.field private final mClipPath:Landroid/graphics/Path;

.field private final mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

.field private final mCompatibilityModePath:Landroid/graphics/Path;

.field private final mCornerFlapSide:F

.field private final mCornerRoundRadius:F

.field private mEatInvalidates:Z

.field private final mFlapPaint:Landroid/graphics/Paint;

.field private mIsCompatibilityMode:Z

.field private mScrimColor:I

.field private mTopEndCornerStyle:I

.field private mTopLeftCornerStyle:I

.field private mTopRightCornerStyle:I

.field private mTopStartCornerStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->sRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;FF)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mFlapPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    .line 61
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    .line 65
    iput v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopLeftCornerStyle:I

    .line 66
    iput v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopRightCornerStyle:I

    .line 67
    iput v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomRightCornerStyle:I

    .line 68
    iput v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomLeftCornerStyle:I

    .line 70
    iput v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopStartCornerStyle:I

    .line 71
    iput v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopEndCornerStyle:I

    .line 72
    iput v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomEndCornerStyle:I

    .line 73
    iput v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomStartCornerStyle:I

    .line 88
    iput p5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    .line 89
    iput p6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    .line 91
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mFlapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mFlapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mFlapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iput v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mScrimColor:I

    .line 105
    return-void
.end method

.method private pauseInvalidate()V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mEatInvalidates:Z

    .line 387
    return-void
.end method

.method private recalculatePath()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 394
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    :goto_0
    return-void

    .line 401
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderWidth:F

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    .line 402
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderWidth:F

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    .line 403
    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    .line 404
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderWidth:F

    div-float/2addr v4, v7

    sub-float/2addr v0, v4

    .line 405
    sget-object v4, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->sRectF:Landroid/graphics/RectF;

    .line 406
    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    mul-float/2addr v5, v7

    iget v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v9, v9, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 407
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 409
    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopLeftCornerStyle:I

    packed-switch v5, :pswitch_data_0

    .line 423
    :goto_1
    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopRightCornerStyle:I

    packed-switch v5, :pswitch_data_1

    .line 437
    :goto_2
    iget v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomRightCornerStyle:I

    packed-switch v2, :pswitch_data_2

    .line 452
    :goto_3
    iget v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomLeftCornerStyle:I

    packed-switch v2, :pswitch_data_3

    .line 467
    :goto_4
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 411
    :pswitch_0
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 414
    :pswitch_1
    invoke-virtual {v4, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 415
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {v5, v4, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_1

    .line 418
    :pswitch_2
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    sub-float v6, v2, v6

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 419
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    add-float/2addr v6, v1

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 425
    :pswitch_3
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 428
    :pswitch_4
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float v5, v3, v5

    invoke-virtual {v4, v5, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 429
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v2, v4, v5, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_2

    .line 432
    :pswitch_5
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    sub-float v6, v3, v6

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 433
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    add-float/2addr v2, v6

    invoke-virtual {v5, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 439
    :pswitch_6
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 442
    :pswitch_7
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v2, v3, v2

    .line 443
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v3, v0, v3

    .line 442
    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 444
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_3

    .line 447
    :pswitch_8
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    sub-float v5, v0, v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 448
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    sub-float/2addr v3, v5

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3

    .line 454
    :pswitch_9
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    .line 457
    :pswitch_a
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v4, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 458
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v8, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto/16 :goto_4

    .line 461
    :pswitch_b
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    add-float/2addr v3, v1

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 462
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    sub-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 423
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 437
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 452
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private resolveCornerStyles()V
    .locals 5

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->getLayoutDirectionLocal()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v4, v0

    .line 472
    :goto_0
    if-eqz v4, :cond_1

    .line 473
    iget v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopStartCornerStyle:I

    move v3, v0

    :goto_1
    if-eqz v4, :cond_2

    .line 474
    iget v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopEndCornerStyle:I

    move v2, v0

    :goto_2
    if-eqz v4, :cond_3

    .line 475
    iget v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomEndCornerStyle:I

    move v1, v0

    :goto_3
    if-eqz v4, :cond_4

    .line 476
    iget v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomStartCornerStyle:I

    .line 472
    :goto_4
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->setCornerStyles(IIII)V

    .line 477
    return-void

    .line 471
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    .line 473
    :cond_1
    iget v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopEndCornerStyle:I

    move v3, v0

    goto :goto_1

    .line 474
    :cond_2
    iget v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopStartCornerStyle:I

    move v2, v0

    goto :goto_2

    .line 475
    :cond_3
    iget v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomStartCornerStyle:I

    move v1, v0

    goto :goto_3

    .line 476
    :cond_4
    iget v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomEndCornerStyle:I

    goto :goto_4
.end method

.method private resumeInvalidate()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mEatInvalidates:Z

    .line 391
    return-void
.end method

.method private setCornerStyles(IIII)V
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopLeftCornerStyle:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopRightCornerStyle:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomRightCornerStyle:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomLeftCornerStyle:I

    if-eq v0, p4, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 486
    :goto_0
    iput p1, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopLeftCornerStyle:I

    .line 487
    iput p2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopRightCornerStyle:I

    .line 488
    iput p3, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomRightCornerStyle:I

    .line 489
    iput p4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomLeftCornerStyle:I

    .line 491
    if-eqz v0, :cond_1

    .line 492
    invoke-direct {p0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->recalculatePath()V

    .line 494
    :cond_1
    return-void

    .line 481
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    .line 229
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->pauseInvalidate()V

    .line 237
    iget-boolean v1, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mIsCompatibilityMode:Z

    if-nez v1, :cond_1

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 239
    iget-object v1, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 243
    :cond_1
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 246
    iget v1, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mScrimColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 249
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderWidth:F

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 250
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderWidth:F

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    .line 251
    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderWidth:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 252
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderWidth:F

    div-float/2addr v4, v5

    sub-float/2addr v0, v4

    .line 253
    sget-object v4, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->sRectF:Landroid/graphics/RectF;

    .line 254
    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    iget v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    iget v7, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v9, v9, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 257
    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopLeftCornerStyle:I

    if-ne v5, v8, :cond_2

    .line 258
    invoke-virtual {v4, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 259
    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    iget v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    iget-object v7, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mFlapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 262
    :cond_2
    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopRightCornerStyle:I

    if-ne v5, v8, :cond_3

    .line 263
    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    sub-float v5, v3, v5

    invoke-virtual {v4, v5, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 264
    iget v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    iget-object v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mFlapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 267
    :cond_3
    iget v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomRightCornerStyle:I

    if-ne v2, v8, :cond_4

    .line 268
    iget v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    sub-float v2, v3, v2

    iget v3, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    sub-float v3, v0, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 269
    iget v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    iget v3, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mFlapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 272
    :cond_4
    iget v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomLeftCornerStyle:I

    if-ne v2, v8, :cond_5

    .line 273
    iget v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    sub-float/2addr v0, v2

    invoke-virtual {v4, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 274
    iget v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    iget v1, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mFlapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 278
    :cond_5
    iget-boolean v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mIsCompatibilityMode:Z

    if-nez v0, :cond_6

    .line 279
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 282
    :cond_6
    iget-boolean v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mIsCompatibilityMode:Z

    if-eqz v0, :cond_7

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->drawFakeCornersForCompatibilityMode(Landroid/graphics/Canvas;)V

    .line 287
    :cond_7
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 289
    invoke-direct {p0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->resumeInvalidate()V

    goto/16 :goto_0
.end method

.method protected drawFakeCornersForCompatibilityMode(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, -0x3d4c0000    # -90.0f

    .line 302
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 304
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 305
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 306
    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    .line 307
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    .line 310
    sget-object v4, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->sRectF:Landroid/graphics/RectF;

    .line 311
    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    mul-float/2addr v5, v11

    iget v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    mul-float/2addr v6, v11

    invoke-virtual {v4, v10, v10, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 312
    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopLeftCornerStyle:I

    if-ne v5, v8, :cond_0

    .line 313
    invoke-virtual {v4, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 314
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 315
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 316
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    add-float/2addr v6, v1

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 317
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {v5, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 318
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 319
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 321
    :cond_0
    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopRightCornerStyle:I

    if-ne v5, v8, :cond_1

    .line 322
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float v5, v3, v5

    invoke-virtual {v4, v5, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 323
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 324
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 325
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    add-float/2addr v6, v2

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 326
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v5, v4, v10, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 327
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 328
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 330
    :cond_1
    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomRightCornerStyle:I

    if-ne v5, v8, :cond_2

    .line 332
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float v5, v3, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float v6, v0, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 333
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 334
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 335
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    sub-float v6, v3, v6

    invoke-virtual {v5, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 336
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {v5, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 337
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 338
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 340
    :cond_2
    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomLeftCornerStyle:I

    if-ne v5, v8, :cond_3

    .line 341
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float v5, v0, v5

    invoke-virtual {v4, v1, v5}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 342
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 343
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 344
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget v6, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerRoundRadius:F

    sub-float v6, v0, v6

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 345
    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {v5, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 346
    iget-object v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 347
    iget-object v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 351
    :cond_3
    iget v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopLeftCornerStyle:I

    if-ne v4, v9, :cond_4

    .line 352
    iget-object v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 353
    iget-object v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 354
    iget-object v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    add-float/2addr v5, v1

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 355
    iget-object v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    add-float/2addr v5, v2

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 356
    iget-object v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 357
    iget-object v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 359
    :cond_4
    iget v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopRightCornerStyle:I

    if-ne v4, v9, :cond_5

    .line 360
    iget-object v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 361
    iget-object v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 362
    iget-object v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    add-float/2addr v5, v2

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 363
    iget-object v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget v5, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    sub-float v5, v3, v5

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 364
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 365
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 367
    :cond_5
    iget v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomRightCornerStyle:I

    if-ne v2, v9, :cond_6

    .line 368
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 369
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 370
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    sub-float v4, v3, v4

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 371
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget v4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    sub-float v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 372
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 373
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 375
    :cond_6
    iget v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomLeftCornerStyle:I

    if-ne v2, v9, :cond_7

    .line 376
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 377
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 378
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    sub-float v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 379
    iget-object v2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCornerFlapSide:F

    add-float/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 380
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 381
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 383
    :cond_7
    return-void
.end method

.method public invalidateSelf()V
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mEatInvalidates:Z

    if-nez v0, :cond_0

    .line 295
    invoke-super {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->invalidateSelf()V

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    sget-object v0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->TAG:Ljava/lang/String;

    const-string v1, "Skipping invalidate."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 220
    invoke-direct {p0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->recalculatePath()V

    .line 221
    return-void
.end method

.method public onLayoutDirectionChangeLocal(I)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->resolveCornerStyles()V

    .line 144
    return-void
.end method

.method public setCompatibilityMode(Z)V
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mIsCompatibilityMode:Z

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 195
    :goto_0
    iput-boolean p1, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mIsCompatibilityMode:Z

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->invalidateSelf()V

    .line 200
    :cond_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCompatibilityModeBackgroundColor(I)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mCompatibilityModeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->invalidateSelf()V

    .line 214
    :cond_0
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCornerStylesRelative(IIII)V
    .locals 0

    .prologue
    .line 134
    iput p1, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopStartCornerStyle:I

    .line 135
    iput p2, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mTopEndCornerStyle:I

    .line 136
    iput p3, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomEndCornerStyle:I

    .line 137
    iput p4, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mBottomStartCornerStyle:I

    .line 138
    invoke-direct {p0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->resolveCornerStyles()V

    .line 139
    return-void
.end method

.method public setFlapColor(I)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mFlapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->mFlapPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/StyledCornersBitmapDrawable;->invalidateSelf()V

    .line 165
    :cond_0
    return-void

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
