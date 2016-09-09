.class public abstract Lcom/android/bitmap/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public static calculateCroppedSrcRect(IIIIIIFFZFLandroid/graphics/Rect;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 61
    if-ge p5, v0, :cond_0

    move p5, v0

    .line 65
    :cond_0
    int-to-float v0, p0

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 66
    int-to-float v1, p1

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 67
    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 68
    div-float v0, v1, p9

    .line 73
    :cond_1
    int-to-float v1, p5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 75
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 76
    int-to-float v2, p3

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 77
    int-to-float v3, p4

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 78
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 80
    sub-int v4, p0, v1

    int-to-float v4, v4

    mul-float/2addr v4, p6

    float-to-int v4, v4

    iput v4, p10, Landroid/graphics/Rect;->left:I

    .line 81
    iget v4, p10, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v4

    iput v1, p10, Landroid/graphics/Rect;->right:I

    .line 84
    if-eqz p8, :cond_2

    .line 86
    sub-int v0, p1, v3

    .line 87
    int-to-float v1, p1

    mul-float/2addr v1, p7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 93
    :goto_0
    div-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    iput v0, p10, Landroid/graphics/Rect;->top:I

    .line 94
    iget v0, p10, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iput v0, p10, Landroid/graphics/Rect;->bottom:I

    .line 95
    return-void

    .line 89
    :cond_2
    sub-int v0, p1, v0

    .line 90
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p7

    int-to-float v1, v3

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method
