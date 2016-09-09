.class public Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;
.super Landroid/widget/FrameLayout;
.source "AllDayHeaderArrow.java"

# interfaces
.implements Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;


# instance fields
.field private final mArrowBottomMargin:I

.field private mArrowState:I

.field private mArrowView:Landroid/widget/ImageView;

.field private final mArrowWidth:I

.field private final mGridlineStrokeWidth:I

.field private final mHeaderDayWeekBottom:I

.field private mMonthLabel:Ljava/lang/String;

.field private final mMonthLabelColor:I

.field private final mMonthLabelSize:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShouldDrawMonthLabel:Z

.field private mShouldDrawWeekNumber:Z

.field private final mWeekInYearBottom:I

.field private final mWeekInYearLabelColor:I

.field private final mWeekInYearLabelSize:I

.field private mWeekLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    sget v1, Lcom/android/calendar/R$dimen;->gridline_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mGridlineStrokeWidth:I

    .line 75
    sget v1, Lcom/android/calendar/R$dimen;->week_header_day_week_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mHeaderDayWeekBottom:I

    .line 77
    sget v1, Lcom/android/calendar/R$dimen;->week_in_year_label_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mWeekInYearBottom:I

    .line 78
    sget v1, Lcom/android/calendar/R$dimen;->allday_arrow_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowWidth:I

    .line 79
    sget v1, Lcom/android/calendar/R$dimen;->week_arrow_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowBottomMargin:I

    .line 80
    sget v1, Lcom/android/calendar/R$color;->week_month_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mMonthLabelColor:I

    .line 81
    sget v1, Lcom/android/calendar/R$color;->week_in_year_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mWeekInYearLabelColor:I

    .line 83
    sget v1, Lcom/android/calendar/R$dimen;->week_month_header_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mMonthLabelSize:I

    .line 84
    sget v1, Lcom/android/calendar/R$dimen;->week_in_year_label_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mWeekInYearLabelSize:I

    .line 87
    sget-object v0, Lcom/android/calendar/R$styleable;->AllDayHeaderArrow:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    sget v1, Lcom/android/calendar/R$styleable;->AllDayHeaderArrow_draw_month_label:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mShouldDrawMonthLabel:Z

    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    :goto_0
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    .line 99
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mShouldDrawWeekNumber:Z

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mPaint:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mGridlineStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 106
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 108
    return-void

    .line 94
    :cond_0
    iput-boolean v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mShouldDrawMonthLabel:Z

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mShouldDrawMonthLabel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mMonthLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mMonthLabelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mMonthLabelSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mMonthLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mHeaderDayWeekBottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 155
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mShouldDrawWeekNumber:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mWeekLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mWeekInYearLabelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mWeekInYearLabelSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 158
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mWeekLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mWeekInYearBottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 160
    :cond_1
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowState:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 130
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    .line 131
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 132
    return-void
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 208
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mShouldDrawWeekNumber:Z

    .line 209
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->invalidate()V

    .line 211
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 138
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    .line 139
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 140
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 122
    sget v0, Lcom/android/calendar/R$id;->arrow_view:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowView:Landroid/widget/ImageView;

    .line 123
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 112
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 113
    sub-int v0, p4, p2

    iget v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 114
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowView:Landroid/widget/ImageView;

    add-int v2, p2, v0

    iget v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowBottomMargin:I

    sub-int v3, p5, v3

    iget v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowWidth:I

    sub-int/2addr v3, v4

    sub-int v0, p4, v0

    iget v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowBottomMargin:I

    sub-int v4, p5, v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 116
    return-void
.end method

.method public setJulianDay(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 163
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 166
    new-instance v1, Lcom/android/calendar/time/Time;

    invoke-direct {v1}, Lcom/android/calendar/time/Time;-><init>()V

    .line 167
    invoke-virtual {v1, p1}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 168
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 169
    invoke-virtual {v1, v6}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 170
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mMonthLabel:Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsTime(Landroid/content/Context;)I

    move-result v0

    .line 173
    invoke-static {p1, v0}, Lcom/android/datetimepicker/Utils;->getWeekNumberInYear(II)I

    move-result v0

    .line 175
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mWeekLabel:Ljava/lang/String;

    .line 179
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mShouldDrawMonthLabel:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->week_in_year_string:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mWeekLabel:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mWeekLabel:Ljava/lang/String;

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->invalidate()V

    .line 184
    return-void
.end method

.method public setState(I)V
    .locals 2

    .prologue
    .line 191
    iput p1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowState:I

    .line 193
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowView:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowState:I

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 199
    :cond_0
    :goto_1
    return-void

    .line 193
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :cond_2
    iget v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->mArrowView:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1
.end method
