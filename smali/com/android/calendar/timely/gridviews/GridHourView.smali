.class public Lcom/android/calendar/timely/gridviews/GridHourView;
.super Landroid/view/View;
.source "GridHourView.java"

# interfaces
.implements Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;


# instance fields
.field private final mGridlineHeight:I

.field private final mHoursTextSize:I

.field private mIntervalHeight:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/gridviews/GridHourView;->getHoursTextSize(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mHoursTextSize:I

    .line 51
    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getIntProperty(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mIntervalHeight:I

    .line 53
    sget v1, Lcom/android/calendar/R$dimen;->gridline_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mGridlineHeight:I

    .line 55
    sget v1, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/gridviews/GridHourView;->setBackgroundColor(I)V

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mHoursTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mGridlineHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 62
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/R$color;->timegrid_hour_label:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "sans-serif"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 65
    return-void
.end method

.method private getHoursTextSize(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 4

    .prologue
    .line 115
    sget-object v0, Lcom/android/calendar/R$styleable;->GridHourView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_0

    .line 119
    :try_start_0
    sget v0, Lcom/android/calendar/R$styleable;->GridHourView_text_size:I

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$dimen;->hours_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 119
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 123
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    :goto_0
    return v0

    .line 123
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->hours_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 69
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 71
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridHourView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getIntProperty(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/gridviews/GridHourView;->onCalendarPropertyChanged(ILjava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridHourView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(Landroid/content/Context;ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 75
    return-void
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 109
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mIntervalHeight:I

    .line 110
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridHourView;->requestLayout()V

    .line 112
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 80
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridHourView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(Landroid/content/Context;ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 82
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mHoursTextSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mIntervalHeight:I

    iget v2, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mGridlineHeight:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v1, v0

    .line 95
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridHourView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    .line 98
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/DateTimeFormatHelper;->getHoursStrings()Ljava/util/List;

    move-result-object v4

    .line 99
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 101
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 102
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mIntervalHeight:I

    iget v5, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mGridlineHeight:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    add-float/2addr v2, v0

    .line 99
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mIntervalHeight:I

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridHourView;->mGridlineHeight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    .line 87
    float-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 89
    return-void
.end method
