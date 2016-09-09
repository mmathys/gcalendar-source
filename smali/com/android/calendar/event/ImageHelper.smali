.class public Lcom/android/calendar/event/ImageHelper;
.super Ljava/lang/Object;
.source "ImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/ImageHelper$EventBitmapDrawable;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

.field private final mImageCache:Lcom/android/calendar/timely/EventImageCache;

.field private mRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/calendar/event/ImageHelper;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->hasHeadlineImage()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 233
    iput-object p1, p0, Lcom/android/calendar/event/ImageHelper;->mContext:Landroid/content/Context;

    .line 234
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$color;->info_headline_scrim:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 236
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getEventImageCache()Lcom/android/calendar/timely/EventImageCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mImageCache:Lcom/android/calendar/timely/EventImageCache;

    .line 238
    invoke-static {p1, p2}, Lcom/android/calendar/event/ImageHelper;->getBitmapRequestKey(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Lcom/android/calendar/timely/EventImageRequestKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    .line 239
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    if-eqz v0, :cond_2

    .line 241
    new-instance v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;-><init>(I)V

    .line 244
    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v3

    iput v3, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    .line 249
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeHorizontalCenter:F

    .line 250
    const v3, 0x3efae148    # 0.49f

    iput v3, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->decodeVerticalCenter:F

    .line 252
    iget-object v3, p0, Lcom/android/calendar/event/ImageHelper;->mImageCache:Lcom/android/calendar/timely/EventImageCache;

    invoke-virtual {p0, v3, v0}, Lcom/android/calendar/event/ImageHelper;->getExtendedBitmapDrawable(Lcom/android/bitmap/BitmapCache;Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    .line 255
    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->hasAssist()Z

    move-result v3

    .line 256
    if-eqz v3, :cond_0

    const/4 v0, 0x3

    :goto_0
    new-array v4, v0, [Landroid/graphics/drawable/Drawable;

    .line 258
    if-eqz v3, :cond_3

    .line 259
    const/4 v0, 0x1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {p2}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v5

    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v4, v1

    .line 261
    :goto_1
    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lcom/android/calendar/event/ImageHelper;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    aput-object v5, v4, v0

    .line 262
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v0, v4, v3

    .line 263
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    iget-object v2, p0, Lcom/android/calendar/event/ImageHelper;->mRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    invoke-virtual {v2}, Lcom/android/calendar/timely/EventImageRequestKey;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/event/ImageHelper;->mRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    invoke-virtual {v3}, Lcom/android/calendar/timely/EventImageRequestKey;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->setDecodeDimensions(II)V

    .line 264
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/calendar/event/ImageHelper;->getImageLayoutId()I

    move-result v0

    invoke-virtual {p4, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 268
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 269
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mView:Landroid/widget/ImageView;

    .line 270
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    iget-object v1, p0, Lcom/android/calendar/event/ImageHelper;->mRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    invoke-virtual {v0, v1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 282
    :goto_3
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 272
    :cond_1
    iput-object v6, p0, Lcom/android/calendar/event/ImageHelper;->mView:Landroid/widget/ImageView;

    goto :goto_2

    .line 278
    :cond_2
    iput-object v6, p0, Lcom/android/calendar/event/ImageHelper;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    .line 279
    iput-object v6, p0, Lcom/android/calendar/event/ImageHelper;->mView:Landroid/widget/ImageView;

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Lcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/calendar/event/ImageHelper;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 53
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 56
    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/view/ViewGroup;Landroid/view/ViewGroup;ILcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p5, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    aput-object v0, p1, v1

    invoke-direct {p0, v0, p4, p5}, Lcom/android/calendar/event/ImageHelper;-><init>(Landroid/view/ViewGroup;Lcom/android/calendar/timely/TimelineItem;Landroid/view/LayoutInflater;)V

    .line 71
    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    .line 72
    aget-object v0, p1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 74
    :cond_0
    return-void
.end method

.method public static getBitmapRequestKey(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Lcom/android/calendar/timely/EventImageRequestKey;
    .locals 10

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    sget v1, Lcom/android/calendar/R$dimen;->chip_image_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 176
    sget v1, Lcom/android/calendar/R$dimen;->chip_image_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 177
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 179
    if-nez v0, :cond_2

    .line 180
    new-instance v1, Lcom/android/calendar/timely/EventImageRequestKey;

    .line 181
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getCalendarId()I

    move-result v0

    int-to-long v6, v0

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getId()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getLocation()Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/calendar/timely/EventImageRequestKey;-><init>(Landroid/content/Context;IILjava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 182
    instance-of v0, p1, Lcom/android/calendar/groove/TimelineGroove;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 183
    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 184
    iget-object v2, v0, Lcom/android/calendar/groove/TimelineGroove;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 186
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/EventImageRequestKey;->setUrlString(Ljava/lang/String;)V

    .line 197
    :cond_0
    :goto_0
    return-object v1

    .line 189
    :cond_1
    new-instance v2, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;

    invoke-direct {v2, v0}, Lcom/android/calendar/groove/GrooveAsyncImageUrlLoader;-><init>(Lcom/android/calendar/groove/TimelineGroove;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/EventImageRequestKey;->setAsyncImageUrlLoader(Lcom/android/calendar/timely/EventImageRequestKey$AsyncImageUrlLoader;)V

    goto :goto_0

    .line 197
    :cond_2
    new-instance v1, Lcom/android/calendar/timely/EventImageRequestKey;

    invoke-direct {v1, p0, v3, v4, v0}, Lcom/android/calendar/timely/EventImageRequestKey;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public static isImageCached(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-static {p0, p1}, Lcom/android/calendar/event/ImageHelper;->getBitmapRequestKey(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;)Lcom/android/calendar/timely/EventImageRequestKey;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_0

    .line 160
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getEventImageCache()Lcom/android/calendar/timely/EventImageCache;

    move-result-object v2

    .line 161
    invoke-virtual {v2, v1, v0}, Lcom/android/calendar/timely/EventImageCache;->get(Lcom/android/bitmap/RequestKey;Z)Lcom/android/bitmap/ReusableBitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 164
    :cond_0
    return v0
.end method

.method public static shouldHaveImage(Landroid/content/res/Resources;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 149
    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v3, 0x1ea

    if-lt v0, v3, :cond_2

    move v0, v1

    .line 152
    :goto_0
    sget v3, Lcom/android/calendar/R$bool;->show_event_info_full_screen:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    .line 153
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 149
    goto :goto_0

    :cond_3
    move v3, v2

    .line 152
    goto :goto_1
.end method

.method public static shouldHaveImage(Landroid/content/res/Resources;Lcom/android/calendar/timely/TimelineItem;)Z
    .locals 1

    .prologue
    .line 204
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->hasHeadlineImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {p0}, Lcom/android/calendar/event/ImageHelper;->shouldHaveImage(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEventImageCache()Lcom/android/calendar/timely/EventImageCache;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mImageCache:Lcom/android/calendar/timely/EventImageCache;

    return-object v0
.end method

.method protected getExtendedBitmapDrawable(Lcom/android/bitmap/BitmapCache;Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;
    .locals 3

    .prologue
    .line 297
    new-instance v0, Lcom/android/calendar/event/ImageHelper$EventBitmapDrawable;

    iget-object v1, p0, Lcom/android/calendar/event/ImageHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/calendar/event/ImageHelper$EventBitmapDrawable;-><init>(Landroid/content/Context;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    return-object v0
.end method

.method protected getImageLayoutId()I
    .locals 1

    .prologue
    .line 304
    sget v0, Lcom/android/calendar/R$layout;->event_info_image:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRequestKey()Lcom/android/calendar/timely/EventImageRequestKey;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public relocateEditButton(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 108
    sget v0, Lcom/android/calendar/R$id;->info_action_edit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 110
    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 111
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 113
    iget-object v3, p0, Lcom/android/calendar/event/ImageHelper;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$dimen;->timely_info_edit_margin_top_tall:I

    .line 115
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 116
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    :cond_0
    return-void
.end method

.method public resetEditButton(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 124
    sget v0, Lcom/android/calendar/R$id;->info_action_edit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 126
    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 127
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 129
    iget-object v3, p0, Lcom/android/calendar/event/ImageHelper;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$dimen;->info_edit_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 131
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :cond_0
    return-void
.end method

.method public updateEventColor(I)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->getExtendedOptions()Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;

    move-result-object v0

    iput p1, v0, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;->backgroundColor:I

    .line 92
    :cond_0
    return-void
.end method

.method public updateImage(Lcom/android/calendar/timely/EventImageRequestKey;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/calendar/event/ImageHelper;->mDrawable:Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;

    invoke-virtual {v0, p1}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->bind(Lcom/android/bitmap/RequestKey;)V

    .line 100
    iput-object p1, p0, Lcom/android/calendar/event/ImageHelper;->mRequestKey:Lcom/android/calendar/timely/EventImageRequestKey;

    .line 102
    :cond_0
    return-void
.end method
