.class Landroid/support/v4/view/GravityCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "GravityCompatJellybeanMr1.java"


# direct methods
.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0

    .prologue
    .line 31
    invoke-static/range {p0 .. p5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 32
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .locals 1

    .prologue
    .line 26
    invoke-static {p0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method
