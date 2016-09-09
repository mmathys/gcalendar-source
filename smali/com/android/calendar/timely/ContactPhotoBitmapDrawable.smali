.class public Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;
.super Lcom/android/calendar/timely/TimelyCircularBitmapDrawable;
.source "ContactPhotoBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/ContactPhotoBitmapDrawable$NoContactPhotoFoundListener;
    }
.end annotation


# static fields
.field private static sDefaultPhoto:Landroid/graphics/Bitmap;


# instance fields
.field private final mListener:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable$NoContactPhotoFoundListener;

.field private final mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Z)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/calendar/timely/ContactPhotoBitmapDrawable$NoContactPhotoFoundListener;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;ZLcom/android/calendar/timely/ContactPhotoBitmapDrawable$NoContactPhotoFoundListener;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/timely/TimelyCircularBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/bitmap/BitmapCache;Z)V

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->mRect:Landroid/graphics/Rect;

    .line 58
    sget-object v0, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->sDefaultPhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 59
    sget v0, Lcom/android/calendar/R$drawable;->ic_no_avatar_large:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->sDefaultPhoto:Landroid/graphics/Bitmap;

    .line 61
    :cond_0
    iput-object p4, p0, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->mListener:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable$NoContactPhotoFoundListener;

    .line 62
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->getBitmap()Lcom/android/bitmap/ReusableBitmap;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->mListener:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable$NoContactPhotoFoundListener;

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/bitmap/ReusableBitmap;->bmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 89
    :cond_2
    sget-object v1, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->sDefaultPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->mRect:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->sDefaultPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->sDefaultPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 91
    sget-object v1, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->sDefaultPhoto:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->onDrawCircularBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 94
    :cond_3
    invoke-super {p0, p1}, Lcom/android/calendar/timely/TimelyCircularBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getBitmap()Lcom/android/bitmap/ReusableBitmap;
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/calendar/timely/TimelyCircularBitmapDrawable;->getBitmap()Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public setBitmap(Lcom/android/bitmap/ReusableBitmap;)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/calendar/timely/TimelyCircularBitmapDrawable;->setBitmap(Lcom/android/bitmap/ReusableBitmap;)V

    .line 67
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->mListener:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable$NoContactPhotoFoundListener;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable;->mListener:Lcom/android/calendar/timely/ContactPhotoBitmapDrawable$NoContactPhotoFoundListener;

    invoke-interface {v0}, Lcom/android/calendar/timely/ContactPhotoBitmapDrawable$NoContactPhotoFoundListener;->onNoContactPhotoFound()V

    .line 72
    :cond_1
    return-void
.end method
