.class public Lcom/android/calendar/timely/EventChipBitmapDrawable;
.super Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;
.source "EventChipBitmapDrawable.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBottomLineHeight:I

.field private final mBottomLinePath:Landroid/graphics/Path;

.field private final mCache:Lcom/android/calendar/timely/EventImageCache;

.field private final mCornerRoundRadius:I

.field private final mIsRtl:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRoundedCornerRectF:Landroid/graphics/RectF;

.field private final mScrimColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/calendar/timely/EventChipBitmapDrawable;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/EventImageCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
    .locals 6

    .prologue
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->bitmap_scrim_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/EventChipBitmapDrawable;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/EventImageCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/EventImageCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;I)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$dimen;->chip_corner_radius:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 83
    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;FF)V

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 72
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mBottomLinePath:Landroid/graphics/Path;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    invoke-static {p1}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mIsRtl:Z

    .line 87
    iput-object p2, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCache:Lcom/android/calendar/timely/EventImageCache;

    .line 88
    sget v1, Lcom/android/calendar/R$dimen;->bitmap_bottom_line_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mBottomLineHeight:I

    .line 89
    sget v1, Lcom/android/calendar/R$dimen;->chip_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCornerRoundRadius:I

    .line 90
    iput p5, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mScrimColor:I

    .line 91
    iget-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mScrimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->setCornerStylesRelative(IIII)V

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCornerRoundRadius:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCornerRoundRadius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mRoundedCornerRectF:Landroid/graphics/RectF;

    .line 98
    return-void
.end method

.method private recalculateBottomLinePath(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 214
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mBottomLineHeight:I

    sub-int/2addr v0, v1

    .line 217
    iget-object v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mBottomLinePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 220
    iget-object v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mBottomLinePath:Landroid/graphics/Path;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 223
    iget-object v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mBottomLinePath:Landroid/graphics/Path;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    iget-object v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mRoundedCornerRectF:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCornerRoundRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 227
    iget-object v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mBottomLinePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mRoundedCornerRectF:Landroid/graphics/RectF;

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 230
    iget-object v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mRoundedCornerRectF:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCornerRoundRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCornerRoundRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 232
    iget-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mBottomLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mRoundedCornerRectF:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 235
    iget-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mBottomLinePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 236
    return-void
.end method


# virtual methods
.method protected copyFromCachedRequestKey()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    instance-of v0, v0, Lcom/android/calendar/timely/EventImageRequestKey;

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCache:Lcom/android/calendar/timely/EventImageCache;

    iget-object v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/EventImageCache;->getKey(Lcom/android/bitmap/RequestKey;)Lcom/android/calendar/timely/EventImageRequestKey;

    move-result-object v1

    .line 110
    iget-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    check-cast v0, Lcom/android/calendar/timely/EventImageRequestKey;

    .line 111
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/EventImageRequestKey;->copyFromRequestKey(Lcom/android/bitmap/RequestKey;)V

    goto :goto_0
.end method

.method protected decode(Lcom/android/bitmap/RequestKey$FileDescriptorFactory;[B)V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCache:Lcom/android/calendar/timely/EventImageCache;

    iget-object v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/EventImageCache;->get(Lcom/android/bitmap/RequestKey;Z)Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->setBitmap(Lcom/android/bitmap/ReusableBitmap;)V

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;->decode(Lcom/android/bitmap/RequestKey$FileDescriptorFactory;[B)V

    goto :goto_0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    instance-of v0, v0, Lcom/android/calendar/timely/EventImageRequestKey;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mCurrKey:Lcom/android/bitmap/RequestKey;

    check-cast v0, Lcom/android/calendar/timely/EventImageRequestKey;

    invoke-virtual {v0}, Lcom/android/calendar/timely/EventImageRequestKey;->getImageType()I

    move-result v0

    goto :goto_0
.end method

.method public hasAlphaFeature()Z
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->getExtendedOptions()Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    move-result-object v0

    iget v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->features:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 181
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->recalculateBottomLinePath(Landroid/graphics/Rect;)V

    .line 182
    return-void
.end method

.method protected onDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->getExtendedOptions()Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    move-result-object v0

    .line 147
    iget v1, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->features:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->requireImageMirroring()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 155
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 156
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 158
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;->onDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 166
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mScrimColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 170
    iget v1, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->features:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget v0, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mBottomLinePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    :cond_1
    return-void

    .line 162
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;->onDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected requireImageMirroring()Z
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/calendar/timely/EventChipBitmapDrawable;->mIsRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->getImageType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setBitmap(Lcom/android/bitmap/ReusableBitmap;)V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/calendar/timely/EventChipBitmapDrawable;->copyFromCachedRequestKey()V

    .line 140
    invoke-super {p0, p1}, Lcom/android/calendar/timely/TimelyStyledCornersBitmapDrawable;->setBitmap(Lcom/android/bitmap/ReusableBitmap;)V

    .line 141
    return-void
.end method
