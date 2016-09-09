.class public Lcom/android/calendar/timely/BackgroundImagesFrame;
.super Landroid/widget/FrameLayout;
.source "BackgroundImagesFrame.java"

# interfaces
.implements Lcom/android/calendar/timely/ListenableBitmapDrawable$OnLoadCompleteListener;
.implements Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;


# instance fields
.field private mBackgroundDrawableSize:I

.field private mBackgroundMonth:I

.field private mBackgroundOffsetFromLeftPortrait:I

.field private mBackgroundOffsetFromTopLandscape:I

.field private mBackgroundOffsetFromTopPortrait:I

.field private mCache:Lcom/android/bitmap/BitmapCache;

.field private mDoingFade:Z

.field private mHemisphereOffset:I

.field private final mMonthBackgrounds:Lcom/android/calendar/timely/MonthBackgrounds;

.field private mOrientation:I

.field private mPendingMonth:Z

.field private mPrimaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

.field private mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

.field private mSelectedViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/android/calendar/timely/MonthBackgrounds;->getInstance(Landroid/content/res/Resources;)Lcom/android/calendar/timely/MonthBackgrounds;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mMonthBackgrounds:Lcom/android/calendar/timely/MonthBackgrounds;

    .line 70
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mHemisphereOffset:I

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/BackgroundImagesFrame;)Lcom/android/calendar/timely/BackgroundImageView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/timely/BackgroundImagesFrame;Lcom/android/calendar/timely/BackgroundImageView;)Lcom/android/calendar/timely/BackgroundImageView;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/BackgroundImagesFrame;)Lcom/android/calendar/timely/BackgroundImageView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mPrimaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/calendar/timely/BackgroundImagesFrame;Lcom/android/calendar/timely/BackgroundImageView;)Lcom/android/calendar/timely/BackgroundImageView;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mPrimaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/BackgroundImagesFrame;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mPendingMonth:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/calendar/timely/BackgroundImagesFrame;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mPendingMonth:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/BackgroundImagesFrame;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->loadSelectedMonth()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/calendar/timely/BackgroundImagesFrame;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mDoingFade:Z

    return p1
.end method

.method private getInitialTranslations()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 274
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 276
    iget v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 277
    iget v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundOffsetFromLeftPortrait:I

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 278
    iget v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundOffsetFromTopPortrait:I

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 288
    :cond_0
    :goto_0
    return-object v0

    .line 283
    :cond_1
    iget v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSelectedViewId:I

    sget v2, Lcom/android/calendar/R$id;->agenda_view:I

    if-eq v1, v2, :cond_0

    .line 284
    iget v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundOffsetFromTopLandscape:I

    neg-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private instantiateBackgroundDrawable()Lcom/android/calendar/timely/ListenableBitmapDrawable;
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->instantiateBackgroundDrawable(I)Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private instantiateBackgroundDrawable(I)Lcom/android/calendar/timely/ListenableBitmapDrawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 300
    const/4 v0, 0x0

    .line 301
    if-eqz p1, :cond_0

    .line 302
    new-instance v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;-><init>(I)V

    .line 304
    iput p1, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    .line 307
    :cond_0
    new-instance v1, Lcom/android/calendar/timely/ListenableBitmapDrawable;

    .line 308
    invoke-virtual {p0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mCache:Lcom/android/bitmap/BitmapCache;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/calendar/timely/ListenableBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 309
    iget v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundDrawableSize:I

    iget v2, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundDrawableSize:I

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setDecodeDimensions(II)V

    .line 310
    iget v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundDrawableSize:I

    iget v2, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundDrawableSize:I

    invoke-virtual {v1, v4, v4, v0, v2}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setBounds(IIII)V

    .line 312
    return-object v1
.end method

.method private loadSelectedMonth()V
    .locals 9

    .prologue
    .line 228
    iget v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundMonth:I

    iget v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mHemisphereOffset:I

    add-int/2addr v0, v1

    rem-int/lit8 v2, v0, 0xc

    .line 230
    invoke-direct {p0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->getInitialTranslations()Landroid/graphics/Point;

    move-result-object v0

    .line 231
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 232
    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 233
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mMonthBackgrounds:Lcom/android/calendar/timely/MonthBackgrounds;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/MonthBackgrounds;->getMonthTopColor(I)I

    move-result v5

    .line 234
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mMonthBackgrounds:Lcom/android/calendar/timely/MonthBackgrounds;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/MonthBackgrounds;->getMonthBottomColor(I)I

    move-result v6

    .line 240
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mPrimaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/BackgroundImageView;->hasDrawable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mMonthBackgrounds:Lcom/android/calendar/timely/MonthBackgrounds;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/MonthBackgrounds;->getMonthTopColor(I)I

    move-result v0

    .line 243
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->instantiateBackgroundDrawable(I)Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v1

    .line 244
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mPrimaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/BackgroundImageView;->setImageDrawable(Lcom/android/calendar/timely/ListenableBitmapDrawable;)V

    .line 246
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mPrimaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    .line 262
    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/BackgroundImageView;->setInitialTranslationX(I)V

    .line 263
    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/BackgroundImageView;->setInitialTranslationY(I)V

    .line 264
    invoke-virtual {v0, v5}, Lcom/android/calendar/timely/BackgroundImageView;->setTopBackgroundColor(I)V

    .line 265
    invoke-virtual {v0, v6}, Lcom/android/calendar/timely/BackgroundImageView;->setBottomBackgroundColor(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v2}, Lcom/android/calendar/timely/MonthBackgrounds;->getMonthBackgroundDrawableResId(I)I

    move-result v2

    .line 268
    invoke-static {v0, v2}, Lcom/android/bitmap/ResourceRequestKey;->from(Landroid/content/res/Resources;I)Lcom/android/bitmap/ResourceRequestKey;

    move-result-object v0

    .line 270
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 271
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/BackgroundImageView;->hasDrawable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->instantiateBackgroundDrawable()Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Lcom/android/calendar/timely/BackgroundImageView;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/BackgroundImageView;->setImageDrawable(Lcom/android/calendar/timely/ListenableBitmapDrawable;)V

    .line 257
    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/ListenableBitmapDrawable;->setOnLoadCompleteListener(Lcom/android/calendar/timely/ListenableBitmapDrawable$OnLoadCompleteListener;)V

    .line 258
    iget-object v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/BackgroundImageView;->getDrawable()Lcom/android/calendar/timely/ListenableBitmapDrawable;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getTimelineOffsetFromTopLandscape()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundOffsetFromTopLandscape:I

    return v0
.end method

.method public initialize(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mOrientation:I

    .line 94
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getBackgroundImageCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mCache:Lcom/android/bitmap/BitmapCache;

    .line 96
    sget v0, Lcom/android/calendar/R$id;->primary_background_image_view:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/BackgroundImageView;

    iput-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mPrimaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    .line 98
    sget v0, Lcom/android/calendar/R$id;->secondary_background_image_view:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/BackgroundImageView;

    iput-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundMonth:I

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/android/calendar/Utils;->getMaximumDisplayDimension(Landroid/view/Display;)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundDrawableSize:I

    .line 109
    invoke-static {v0}, Lcom/android/calendar/Utils;->getMinimumDisplayDimension(Landroid/view/Display;)I

    move-result v0

    .line 110
    iget v2, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundDrawableSize:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    iput v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundOffsetFromLeftPortrait:I

    .line 114
    sget v0, Lcom/android/calendar/R$dimen;->background_offset_top_portrait:I

    .line 115
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 116
    iget v2, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundDrawableSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v2, v0

    iput v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundOffsetFromTopPortrait:I

    .line 121
    sget v0, Lcom/android/calendar/R$dimen;->background_offset_top_landscape:I

    .line 122
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 123
    iget v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundDrawableSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int v0, v1, v0

    iput v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundOffsetFromTopLandscape:I

    .line 125
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 78
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 80
    return-void
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 317
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mHemisphereOffset:I

    .line 318
    invoke-direct {p0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->loadSelectedMonth()V

    .line 319
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 85
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 87
    return-void
.end method

.method public onLoadComplete(Lcom/android/calendar/timely/ListenableBitmapDrawable;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    iget-object v1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mPrimaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/BackgroundImageView;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mDoingFade:Z

    .line 222
    :goto_0
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mDoingFade:Z

    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/android/calendar/timely/BackgroundImagesFrame$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/BackgroundImagesFrame$1;-><init>(Lcom/android/calendar/timely/BackgroundImagesFrame;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    new-instance v1, Lcom/android/calendar/timely/BackgroundImagesFrame$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/BackgroundImagesFrame$2;-><init>(Lcom/android/calendar/timely/BackgroundImagesFrame;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 221
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 179
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setBackgroundMonth(II)V
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundMonth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSelectedViewId:I

    if-ne v0, p2, :cond_0

    .line 153
    :goto_0
    return-void

    .line 137
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSelectedViewId:I

    if-eq v0, p2, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/BackgroundImageView;->setClippingTranslationY(F)V

    .line 140
    :cond_1
    iput p1, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mBackgroundMonth:I

    .line 141
    iput p2, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSelectedViewId:I

    .line 144
    iget-boolean v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mDoingFade:Z

    if-eqz v0, :cond_2

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mPendingMonth:Z

    goto :goto_0

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/timely/BackgroundImagesFrame;->loadSelectedMonth()V

    goto :goto_0
.end method

.method public setClippingTranslationY(F)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mPrimaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/BackgroundImageView;->setClippingTranslationY(F)V

    .line 161
    iget-object v0, p0, Lcom/android/calendar/timely/BackgroundImagesFrame;->mSecondaryBackgroundImageView:Lcom/android/calendar/timely/BackgroundImageView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/BackgroundImageView;->setClippingTranslationY(F)V

    .line 162
    return-void
.end method
