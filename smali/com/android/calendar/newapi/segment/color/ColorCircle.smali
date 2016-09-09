.class public Lcom/android/calendar/newapi/segment/color/ColorCircle;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "ColorCircle.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 19
    sget v0, Lcom/android/calendar/R$dimen;->edit_color_swatch_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/color/ColorCircle;->setIntrinsicHeight(I)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/calendar/newapi/segment/color/ColorCircle;->setIntrinsicWidth(I)V

    .line 22
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/color/ColorCircle;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->edit_color_swatch_stroke_width:I

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/newapi/segment/color/ColorCircle;->setColor(IZ)V

    .line 28
    return-void
.end method

.method public setColor(IZ)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/color/ColorCircle;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    invoke-virtual {p0}, Lcom/android/calendar/newapi/segment/color/ColorCircle;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    if-eqz p2, :cond_0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    return-void

    .line 32
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0
.end method
