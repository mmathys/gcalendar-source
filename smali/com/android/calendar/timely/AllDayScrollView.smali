.class public Lcom/android/calendar/timely/AllDayScrollView;
.super Landroid/widget/ScrollView;
.source "AllDayScrollView.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 24
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/timely/AllDayScrollView;->mPaint:Landroid/graphics/Paint;

    .line 25
    iget-object v1, p0, Lcom/android/calendar/timely/AllDayScrollView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object v1, p0, Lcom/android/calendar/timely/AllDayScrollView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object v1, p0, Lcom/android/calendar/timely/AllDayScrollView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/R$color;->grids_line:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v1, p0, Lcom/android/calendar/timely/AllDayScrollView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/R$dimen;->gridline_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/AllDayScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    .line 38
    invoke-virtual {p0}, Lcom/android/calendar/timely/AllDayScrollView;->getHeight()I

    move-result v8

    .line 39
    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getDayWidth()F

    move-result v7

    .line 40
    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getCountOfDays()I

    move-result v9

    .line 43
    const/4 v0, 0x1

    move v6, v0

    move v1, v7

    :goto_0
    if-ge v6, v9, :cond_0

    .line 44
    const/4 v2, 0x0

    int-to-float v4, v8

    iget-object v5, p0, Lcom/android/calendar/timely/AllDayScrollView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    add-float/2addr v1, v7

    .line 43
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method
