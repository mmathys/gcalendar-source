.class public Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;
.super Lcom/android/bitmap/drawable/BasicBitmapDrawable;
.source "ExtendedBitmapDrawable.java"

# interfaces
.implements Lcom/android/bitmap/DecodeAggregator$Callback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;,
        Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;,
        Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;
    }
.end annotation


# static fields
.field private static final RECT_F:Landroid/graphics/RectF;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlpha:I

.field private final mHandler:Landroid/os/Handler;

.field private mLoadState:I

.field private final mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

.field private mParallaxFraction:F

.field private mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

.field private mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

.field private mProgressDelayMs:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->RECT_F:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Z)V

    .line 71
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mParallaxFraction:F

    .line 74
    iput v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mLoadState:I

    .line 78
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mAlpha:I

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mHandler:Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mResources:Landroid/content/res/Resources;

    .line 86
    if-nez p4, :cond_0

    .line 87
    new-instance p4, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    invoke-direct {p4, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;-><init>(I)V

    .line 89
    :cond_0
    iput-object p4, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    .line 91
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->onOptsChanged()V

    .line 92
    return-void
.end method

.method static synthetic access$101(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->onDecodeComplete(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)V

    return-void
.end method

.method private getDecodeAggregator()Lcom/android/bitmap/DecodeAggregator;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget-object v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeAggregator:Lcom/android/bitmap/DecodeAggregator;

    return-object v0
.end method

.method private setLoadState(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 437
    const-string v0, "set load state"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 438
    packed-switch p1, :pswitch_data_0

    .line 473
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 475
    iput p1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mLoadState:I

    .line 476
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-virtual {v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    :cond_2
    return-void

    .line 443
    :pswitch_0
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->reset()V

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-virtual {v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->reset()V

    goto :goto_0

    .line 447
    :pswitch_1
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    if-eqz v0, :cond_4

    .line 448
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {v0, v2}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->setPulseEnabled(Z)V

    .line 449
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {v0, v2}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->setVisible(Z)Z

    .line 451
    :cond_4
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-virtual {v0, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->setVisible(Z)Z

    goto :goto_0

    .line 454
    :pswitch_2
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->setVisible(Z)Z

    .line 459
    :cond_5
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-virtual {v0, v2}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->setVisible(Z)Z

    goto :goto_0

    .line 462
    :pswitch_3
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->setVisible(Z)Z

    .line 463
    :cond_6
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-virtual {v0, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->setVisible(Z)Z

    goto :goto_0

    .line 466
    :pswitch_4
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    if-eqz v0, :cond_7

    .line 467
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {v0, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->setPulseEnabled(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {v0, v2}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->setVisible(Z)Z

    .line 470
    :cond_7
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-virtual {v0, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->setVisible(Z)Z

    goto/16 :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 303
    :cond_0
    const-string v0, "ext"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->onDraw(Landroid/graphics/Canvas;)V

    .line 310
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    iget v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->setAlpha(I)V

    .line 312
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-virtual {p0, p1, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->onDrawPlaceholderOrProgress(Landroid/graphics/Canvas;Lcom/android/bitmap/drawable/TileDrawable;)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    iget v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->setAlpha(I)V

    .line 316
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {p0, p1, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->onDrawPlaceholderOrProgress(Landroid/graphics/Canvas;Lcom/android/bitmap/drawable/TileDrawable;)V

    .line 318
    :cond_2
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mAlpha:I

    return v0
.end method

.method protected getDecodeHorizontalCenter()F
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeHorizontalCenter:F

    return v0
.end method

.method protected getDecodeVerticalCenter()F
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeVerticalCenter:F

    return v0
.end method

.method public getDrawHorizontalCenter()F
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->parallaxDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 256
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mParallaxFraction:F

    .line 258
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->getDrawHorizontalCenter()F

    move-result v0

    goto :goto_0
.end method

.method public getDrawVerticalCenter()F
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->parallaxDirection:I

    if-nez v0, :cond_0

    .line 264
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mParallaxFraction:F

    .line 266
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->getDrawVerticalCenter()F

    move-result v0

    goto :goto_0
.end method

.method protected final getDrawVerticalOffsetMultiplier()F
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->parallaxSpeedMultiplier:F

    return v0
.end method

.method public getExtendedOptions()Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    return-object v0
.end method

.method protected loadFileDescriptorFactoryOrByteArray()V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->shouldExecuteStateChange()Z

    move-result v0

    .line 230
    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mDecodeWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mDecodeHeight:I

    if-nez v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    if-eqz v0, :cond_2

    .line 235
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->setLoadState(I)V

    .line 238
    :cond_2
    invoke-super {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->loadFileDescriptorFactoryOrByteArray()V

    goto :goto_0
.end method

.method public onBecomeFirstExpected(Lcom/android/bitmap/RequestKey;)V
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgressDelayMs:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public bridge synthetic onBecomeFirstExpected(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 54
    check-cast p1, Lcom/android/bitmap/RequestKey;

    invoke-virtual {p0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->onBecomeFirstExpected(Lcom/android/bitmap/RequestKey;)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 360
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 361
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {v0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->setBounds(Landroid/graphics/Rect;)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-virtual {v0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->setBounds(Landroid/graphics/Rect;)V

    .line 363
    :cond_1
    return-void
.end method

.method public onDecodeBegin(Lcom/android/bitmap/RequestKey;)V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->getDecodeAggregator()Lcom/android/bitmap/DecodeAggregator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->getDecodeAggregator()Lcom/android/bitmap/DecodeAggregator;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/bitmap/DecodeAggregator;->expect(Ljava/lang/Object;Lcom/android/bitmap/ContiguousFIFOAggregator$Callback;)V

    .line 372
    :goto_0
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->onDecodeBegin(Lcom/android/bitmap/RequestKey;)V

    .line 373
    return-void

    .line 370
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->onBecomeFirstExpected(Lcom/android/bitmap/RequestKey;)V

    goto :goto_0
.end method

.method public onDecodeCancel(Lcom/android/bitmap/RequestKey;)V
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->getDecodeAggregator()Lcom/android/bitmap/DecodeAggregator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->getDecodeAggregator()Lcom/android/bitmap/DecodeAggregator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bitmap/DecodeAggregator;->forget(Ljava/lang/Object;)V

    .line 416
    :cond_0
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->onDecodeCancel(Lcom/android/bitmap/RequestKey;)V

    .line 417
    return-void
.end method

.method public onDecodeComplete(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)V
    .locals 2

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->getDecodeAggregator()Lcom/android/bitmap/DecodeAggregator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->getDecodeAggregator()Lcom/android/bitmap/DecodeAggregator;

    move-result-object v0

    new-instance v1, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$1;-><init>(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/bitmap/DecodeAggregator;->execute(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->onDecodeComplete(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)V

    goto :goto_0
.end method

.method protected onDecodeFailed()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->onDecodeFailed()V

    .line 245
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->setLoadState(I)V

    .line 246
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 325
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 326
    return-void
.end method

.method protected onDrawPlaceholderOrProgress(Landroid/graphics/Canvas;Lcom/android/bitmap/drawable/TileDrawable;)V
    .locals 0

    .prologue
    .line 332
    invoke-virtual {p2, p1}, Lcom/android/bitmap/drawable/TileDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 333
    return-void
.end method

.method public onOptsChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 99
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    # invokes: Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->validate()V
    invoke-static {v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->access$000(Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 102
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->features:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/bitmap/R$integer;->bitmap_fade_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 104
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/bitmap/R$integer;->bitmap_progress_animation_delay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgressDelayMs:I

    .line 108
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/bitmap/R$dimen;->placeholder_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 109
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/bitmap/R$dimen;->placeholder_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 110
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget-object v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->placeholder:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 111
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget-object v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    iget-object v2, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget-object v2, v2, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 124
    :cond_0
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    move v3, v1

    move-object v1, v0

    .line 131
    :goto_2
    new-instance v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    iget-object v2, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mResources:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    invoke-direct/range {v0 .. v6}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIILcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    iput-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    .line 133
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {v0, p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 134
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->setBounds(Landroid/graphics/Rect;)V

    .line 137
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget-object v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->progressBar:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/bitmap/R$dimen;->progress_bar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 139
    new-instance v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget-object v1, v1, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->progressBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mResources:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;IIILcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    iput-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    .line 141
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-virtual {v0, p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 142
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->setBounds(Landroid/graphics/Rect;)V

    .line 148
    :cond_1
    :goto_3
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mLoadState:I

    invoke-direct {p0, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->setLoadState(I)V

    .line 149
    return-void

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget-object v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->placeholder:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_1

    .line 126
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v2, v6, :cond_6

    .line 127
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    move v3, v1

    move-object v1, v0

    goto :goto_2

    .line 144
    :cond_5
    iput-object v7, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    goto :goto_3

    :cond_6
    move v3, v1

    move-object v1, v0

    goto :goto_2

    :cond_7
    move v3, v1

    move-object v1, v7

    goto :goto_2
.end method

.method public run()V
    .locals 2

    .prologue
    .line 387
    iget v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mLoadState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 388
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->setLoadState(I)V

    .line 390
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->getAlpha()I

    move-result v0

    .line 338
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->setAlpha(I)V

    .line 339
    iput p1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mAlpha:I

    .line 340
    if-eq p1, v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->invalidateSelf()V

    .line 343
    :cond_0
    return-void
.end method

.method protected setBitmap(Lcom/android/bitmap/ReusableBitmap;)V
    .locals 1

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->setLoadState(I)V

    .line 224
    :goto_0
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->setBitmap(Lcom/android/bitmap/ReusableBitmap;)V

    .line 225
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->onDecodeFailed()V

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 353
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mPlaceholder:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;

    invoke-virtual {v0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Placeholder;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mProgress:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;

    invoke-virtual {v0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$Progress;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->invalidateSelf()V

    .line 356
    return-void
.end method

.method public setDecodeDimensions(II)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->parallaxDirection:I

    if-nez v0, :cond_0

    .line 190
    int-to-float v0, p2

    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget v1, v1, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->parallaxSpeedMultiplier:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, p1, v0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->setDecodeDimensions(II)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mOpts:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    iget v1, v1, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->parallaxSpeedMultiplier:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->setDecodeDimensions(II)V

    goto :goto_0
.end method

.method protected setImage(Lcom/android/bitmap/RequestKey;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->getDecodeAggregator()Lcom/android/bitmap/DecodeAggregator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->getDecodeAggregator()Lcom/android/bitmap/DecodeAggregator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    invoke-virtual {v0, v1}, Lcom/android/bitmap/DecodeAggregator;->forget(Ljava/lang/Object;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->setLoadState(I)V

    .line 209
    invoke-super {p0, p1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->setImage(Lcom/android/bitmap/RequestKey;)V

    .line 211
    if-nez p1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->showStaticPlaceholder()V

    .line 214
    :cond_1
    return-void
.end method

.method public setParallaxFraction(F)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->mParallaxFraction:F

    .line 154
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->invalidateSelf()V

    .line 155
    return-void
.end method

.method protected shouldExecuteStateChange()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public showStaticPlaceholder()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->setLoadState(I)V

    .line 171
    return-void
.end method
