.class Lcom/android/calendar/event/ImageHelper$EventBitmapDrawable;
.super Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;
.source "ImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/ImageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventBitmapDrawable"
.end annotation


# instance fields
.field private mIsRtl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/bitmap/drawable/ExtendedBitmapDrawable$ExtendedOptions;)V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/ImageHelper$EventBitmapDrawable;->mIsRtl:Z

    .line 314
    invoke-static {p1}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/ImageHelper$EventBitmapDrawable;->mIsRtl:Z

    .line 315
    return-void
.end method


# virtual methods
.method protected onDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/calendar/event/ImageHelper$EventBitmapDrawable;->requireImageMirroring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 335
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 336
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 338
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 339
    invoke-super {p0, p1, p2, p3}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->onDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/bitmap/drawable/ExtendedBitmapDrawable;->onDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected requireImageMirroring()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/android/calendar/event/ImageHelper$EventBitmapDrawable;->getKey()Lcom/android/bitmap/RequestKey;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/timely/EventImageRequestKey;

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return v1

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/ImageHelper$EventBitmapDrawable;->getKey()Lcom/android/bitmap/RequestKey;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/EventImageRequestKey;

    .line 328
    iget-boolean v2, p0, Lcom/android/calendar/event/ImageHelper$EventBitmapDrawable;->mIsRtl:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/calendar/timely/EventImageRequestKey;->getImageType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
