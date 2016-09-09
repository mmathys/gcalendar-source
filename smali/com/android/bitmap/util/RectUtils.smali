.class public Lcom/android/bitmap/util/RectUtils;
.super Ljava/lang/Object;
.source "RectUtils.java"


# direct methods
.method public static rotateRect(IIILandroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 61
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    int-to-float v2, p0

    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 63
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 64
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p3, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    return-void
.end method

.method public static rotateRectForOrientation(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 39
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 42
    neg-int v1, p0

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 43
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 44
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 46
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 49
    iget v3, v1, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 51
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 53
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 55
    iget v0, v2, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, v2, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v3, v2, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {p2, v0, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    return-void
.end method
