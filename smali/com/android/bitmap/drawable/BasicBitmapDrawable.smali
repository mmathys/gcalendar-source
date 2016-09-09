.class public Lcom/android/bitmap/drawable/BasicBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BasicBitmapDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lcom/android/bitmap/DecodeTask$DecodeCallback;
.implements Lcom/android/bitmap/RequestKey$Callback;


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmap:Lcom/android/bitmap/ReusableBitmap;

.field private final mCache:Lcom/android/bitmap/BitmapCache;

.field private mCreateFileDescriptorFactoryOrByteArrayTask:Lcom/android/bitmap/RequestKey$Cancelable;

.field protected mCurrKey:Lcom/android/bitmap/RequestKey;

.field protected mDecodeHeight:I

.field protected mDecodeWidth:I

.field private final mDensity:F

.field private mLayoutDirection:I

.field private final mLimitDensity:Z

.field protected final mPaint:Landroid/graphics/Paint;

.field protected mPrevKey:Lcom/android/bitmap/RequestKey;

.field private final mRect:Landroid/graphics/Rect;

.field private mTask:Lcom/android/bitmap/DecodeTask;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 80
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->CPU_COUNT:I

    .line 81
    sget v0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->CORE_POOL_SIZE:I

    .line 82
    sget v0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->MAXIMUM_POOL_SIZE:I

    .line 84
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->CORE_POOL_SIZE:I

    sget v3, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/android/bitmap/NamedThreadFactory;

    const-string v0, "decode"

    invoke-direct {v8, v0}, Lcom/android/bitmap/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 87
    sget-object v0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->SMALL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 94
    const-class v0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 98
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mRect:Landroid/graphics/Rect;

    .line 99
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mDensity:F

    .line 100
    iput-object p2, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCache:Lcom/android/bitmap/BitmapCache;

    .line 101
    iput-boolean p3, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mLimitDensity:Z

    .line 102
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 105
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/bitmap/RequestKey;)V
    .locals 1

    .prologue
    .line 176
    const-string v0, "bind"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->setImage(Lcom/android/bitmap/RequestKey;)V

    .line 182
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_0
.end method

.method public byteArrayCreated(Lcom/android/bitmap/RequestKey;[B)V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->fileDescriptorFactoryOrByteArrayCreated(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/RequestKey$FileDescriptorFactory;[B)V

    .line 298
    return-void
.end method

.method protected decode(Lcom/android/bitmap/RequestKey$FileDescriptorFactory;[B)V
    .locals 8

    .prologue
    .line 325
    const-string v0, "decode"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 328
    iget-boolean v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mLimitDensity:Z

    if-eqz v0, :cond_1

    .line 329
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3fc00000    # 1.5f

    iget v2, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mDensity:F

    div-float/2addr v1, v2

    .line 330
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 332
    iget v1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mDecodeWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 333
    iget v2, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mDecodeHeight:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    invoke-virtual {v0}, Lcom/android/bitmap/DecodeTask;->cancel()V

    .line 342
    :cond_0
    new-instance v0, Lcom/android/bitmap/DecodeTask$DecodeOptions;

    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->getDecodeHorizontalCenter()F

    move-result v3

    .line 343
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->getDecodeVerticalCenter()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->getDecodeStrategy()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/bitmap/DecodeTask$DecodeOptions;-><init>(IIFFI)V

    .line 344
    new-instance v1, Lcom/android/bitmap/DecodeTask;

    iget-object v2, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    iget-object v7, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCache:Lcom/android/bitmap/BitmapCache;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/bitmap/DecodeTask;-><init>(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/DecodeTask$DecodeOptions;Lcom/android/bitmap/RequestKey$FileDescriptorFactory;[BLcom/android/bitmap/DecodeTask$DecodeCallback;Lcom/android/bitmap/BitmapCache;)V

    iput-object v1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    .line 345
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/bitmap/DecodeTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 346
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 347
    return-void

    .line 335
    :cond_1
    iget v1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mDecodeWidth:I

    .line 336
    iget v2, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mDecodeHeight:I

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 390
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 391
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->hasBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 397
    invoke-virtual {v0}, Lcom/android/bitmap/ReusableBitmap;->getLogicalWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {v1}, Lcom/android/bitmap/ReusableBitmap;->getLogicalHeight()I

    move-result v1

    .line 398
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 399
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    const v5, 0x7fffffff

    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->getDrawHorizontalCenter()F

    move-result v6

    .line 400
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->getDrawVerticalCenter()F

    move-result v7

    .line 401
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->getDrawVerticalOffsetMultiplier()F

    move-result v9

    iget-object v10, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mRect:Landroid/graphics/Rect;

    .line 396
    invoke-static/range {v0 .. v10}, Lcom/android/bitmap/util/BitmapUtils;->calculateCroppedSrcRect(IIIIIIFFZFLandroid/graphics/Rect;)V

    .line 403
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {v0}, Lcom/android/bitmap/ReusableBitmap;->getOrientation()I

    move-result v0

    .line 407
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 408
    invoke-virtual {v2}, Lcom/android/bitmap/ReusableBitmap;->getLogicalWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {v3}, Lcom/android/bitmap/ReusableBitmap;->getLogicalHeight()I

    move-result v3

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mRect:Landroid/graphics/Rect;

    .line 407
    invoke-static {v0, v1, v2}, Lcom/android/bitmap/util/RectUtils;->rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 412
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 413
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-static {v0, v2, v3, v1}, Lcom/android/bitmap/util/RectUtils;->rotateRect(IIILandroid/graphics/Rect;)V

    .line 416
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 417
    int-to-float v0, v0

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 418
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->onDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 419
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected fileDescriptorFactoryOrByteArrayCreated(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/RequestKey$FileDescriptorFactory;[B)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCreateFileDescriptorFactoryOrByteArrayTask:Lcom/android/bitmap/RequestKey$Cancelable;

    if-nez v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->onDecodeFailed()V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCreateFileDescriptorFactoryOrByteArrayTask:Lcom/android/bitmap/RequestKey$Cancelable;

    .line 309
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0, p2, p3}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->decode(Lcom/android/bitmap/RequestKey$FileDescriptorFactory;[B)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method protected getBitmap()Lcom/android/bitmap/ReusableBitmap;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method protected getDecodeHorizontalCenter()F
    .locals 1

    .prologue
    .line 377
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method protected getDecodeStrategy()I
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method protected getDecodeVerticalCenter()F
    .locals 1

    .prologue
    .line 385
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method protected getDrawHorizontalCenter()F
    .locals 1

    .prologue
    .line 365
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method protected getDrawVerticalCenter()F
    .locals 1

    .prologue
    .line 361
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method protected getDrawVerticalOffsetMultiplier()F
    .locals 1

    .prologue
    .line 369
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getKey()Lcom/android/bitmap/RequestKey;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    return-object v0
.end method

.method public getLayoutDirectionLocal()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mLayoutDirection:I

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->hasBitmap()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    iget-object v0, v0, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    .line 465
    :cond_0
    const/4 v0, -0x3

    .line 464
    :goto_0
    return v0

    .line 465
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getPreviousKey()Lcom/android/bitmap/RequestKey;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPrevKey:Lcom/android/bitmap/RequestKey;

    return-object v0
.end method

.method protected hasBitmap()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    iget-object v0, v0, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->invalidateSelf()V

    .line 490
    return-void
.end method

.method protected loadFileDescriptorFactoryOrByteArray()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mDecodeWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mDecodeHeight:I

    if-nez v0, :cond_2

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->onDecodeFailed()V

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    iget-object v1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    .line 282
    invoke-interface {v0, v1, p0}, Lcom/android/bitmap/RequestKey;->createFileDescriptorFactoryOrByteArrayAsync(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/RequestKey$Callback;)Lcom/android/bitmap/RequestKey$Cancelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCreateFileDescriptorFactoryOrByteArrayTask:Lcom/android/bitmap/RequestKey$Cancelable;

    .line 283
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCreateFileDescriptorFactoryOrByteArrayTask:Lcom/android/bitmap/RequestKey$Cancelable;

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p0, v2, v2}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->decode(Lcom/android/bitmap/RequestKey$FileDescriptorFactory;[B)V

    goto :goto_0
.end method

.method public onDecodeBegin(Lcom/android/bitmap/RequestKey;)V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public onDecodeCancel(Lcom/android/bitmap/RequestKey;)V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public onDecodeComplete(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {p0, p2}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->setBitmap(Lcom/android/bitmap/ReusableBitmap;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    if-eqz p2, :cond_0

    .line 479
    invoke-virtual {p2}, Lcom/android/bitmap/ReusableBitmap;->releaseReference()V

    goto :goto_0
.end method

.method protected onDecodeFailed()V
    .locals 0

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->invalidateSelf()V

    .line 319
    return-void
.end method

.method protected onDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->hasBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    iget-object v0, v0, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 435
    :cond_0
    return-void
.end method

.method public onLayoutDirectionChangeLocal(I)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 495
    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 440
    iget-object v1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 441
    if-eq p1, v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->invalidateSelf()V

    .line 444
    :cond_0
    return-void
.end method

.method protected setBitmap(Lcom/android/bitmap/ReusableBitmap;)V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->hasBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {v0}, Lcom/android/bitmap/ReusableBitmap;->releaseReference()V

    .line 268
    :cond_0
    iput-object p1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 269
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->invalidateSelf()V

    .line 270
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 454
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->invalidateSelf()V

    .line 455
    return-void
.end method

.method public setDecodeDimensions(II)V
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mDecodeWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mDecodeHeight:I

    if-nez v0, :cond_1

    .line 127
    :cond_0
    iput p1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mDecodeWidth:I

    .line 128
    iput p2, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mDecodeHeight:I

    .line 129
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    invoke-virtual {p0, v0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->setImage(Lcom/android/bitmap/RequestKey;)V

    .line 131
    :cond_1
    return-void
.end method

.method protected setImage(Lcom/android/bitmap/RequestKey;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    const-string v0, "set image"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 219
    const-string v0, "release reference"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {v0}, Lcom/android/bitmap/ReusableBitmap;->releaseReference()V

    .line 222
    iput-object v1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mBitmap:Lcom/android/bitmap/ReusableBitmap;

    .line 224
    :cond_0
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 226
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    iput-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPrevKey:Lcom/android/bitmap/RequestKey;

    .line 227
    iput-object p1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    .line 229
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    invoke-virtual {v0}, Lcom/android/bitmap/DecodeTask;->cancel()V

    .line 231
    iput-object v1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mTask:Lcom/android/bitmap/DecodeTask;

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCreateFileDescriptorFactoryOrByteArrayTask:Lcom/android/bitmap/RequestKey$Cancelable;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCreateFileDescriptorFactoryOrByteArrayTask:Lcom/android/bitmap/RequestKey$Cancelable;

    invoke-interface {v0}, Lcom/android/bitmap/RequestKey$Cancelable;->cancel()V

    .line 235
    iput-object v1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCreateFileDescriptorFactoryOrByteArrayTask:Lcom/android/bitmap/RequestKey$Cancelable;

    .line 238
    :cond_2
    if-nez p1, :cond_3

    .line 239
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->onDecodeFailed()V

    .line 240
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 259
    :goto_0
    return-void

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mCache:Lcom/android/bitmap/BitmapCache;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/bitmap/BitmapCache;->get(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bitmap/ReusableBitmap;

    .line 246
    if-eqz v0, :cond_4

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->setBitmap(Lcom/android/bitmap/ReusableBitmap;)V

    .line 258
    :goto_1
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_0

    .line 252
    :cond_4
    invoke-virtual {p0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->loadFileDescriptorFactoryOrByteArray()V

    goto :goto_1
.end method

.method public setLayoutDirectionLocal(I)V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 142
    iput p1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mLayoutDirection:I

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->onLayoutDirectionChangeLocal(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->unbind(Z)V

    .line 195
    return-void
.end method

.method public unbind(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 206
    const-string v0, "unbind"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, v1}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->setImage(Lcom/android/bitmap/RequestKey;)V

    .line 208
    if-nez p1, :cond_0

    .line 209
    iput-object v1, p0, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->mPrevKey:Lcom/android/bitmap/RequestKey;

    .line 211
    :cond_0
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 212
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 499
    invoke-virtual {p0, p2}, Lcom/android/bitmap/drawable/BasicBitmapDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 500
    return-void
.end method
