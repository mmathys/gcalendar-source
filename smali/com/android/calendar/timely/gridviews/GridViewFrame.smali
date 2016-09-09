.class public Lcom/android/calendar/timely/gridviews/GridViewFrame;
.super Landroid/widget/LinearLayout;
.source "GridViewFrame.java"

# interfaces
.implements Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;


# instance fields
.field private mFirstJulianDay:I

.field private final mGridlineHeight:I

.field private final mHourColor:I

.field private final mHoursTextSize:I

.field private final mHoursWidth:I

.field private mIntervalHeight:I

.field private final mIsRtl:Z

.field private final mLineColor:I

.field private final mNowLineColor:I

.field private final mNowLineRadius:I

.field private final mNowLineStrokeWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShouldDrawHours:Z

.field private final mShouldIndicateToday:Z

.field private final mTodayBgColor:I

.field private mTodayIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    sget v1, Lcom/android/calendar/R$dimen;->week_hours_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mHoursTextSize:I

    .line 75
    sget v1, Lcom/android/calendar/R$dimen;->min_hours_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mHoursWidth:I

    .line 76
    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getIntProperty(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mIntervalHeight:I

    .line 78
    sget v1, Lcom/android/calendar/R$dimen;->gridline_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mGridlineHeight:I

    .line 79
    sget v1, Lcom/android/calendar/R$color;->week_today_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mTodayBgColor:I

    .line 80
    sget v1, Lcom/android/calendar/R$color;->week_hour_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mHourColor:I

    .line 81
    sget v1, Lcom/android/calendar/R$color;->grids_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mLineColor:I

    .line 82
    sget v1, Lcom/android/calendar/R$dimen;->grids_now_line_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mNowLineRadius:I

    .line 83
    sget v1, Lcom/android/calendar/R$dimen;->grids_now_line_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mNowLineStrokeWidth:I

    .line 84
    sget v1, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mNowLineColor:I

    .line 86
    sget v1, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->setBackgroundColor(I)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mHoursTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 92
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    const-string v1, "sans-serif"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 95
    sget-object v0, Lcom/android/calendar/R$styleable;->GridViewFrame:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    sget v1, Lcom/android/calendar/R$styleable;->GridViewFrame_draw_hours:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mShouldDrawHours:Z

    .line 100
    sget v1, Lcom/android/calendar/R$styleable;->GridViewFrame_indicate_today:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mShouldIndicateToday:Z

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    :goto_0
    invoke-static {p1}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mIsRtl:Z

    .line 109
    return-void

    .line 104
    :cond_0
    iput-boolean v3, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mShouldDrawHours:Z

    .line 105
    iput-boolean v3, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mShouldIndicateToday:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/gridviews/GridViewFrame;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mTodayIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/gridviews/GridViewFrame;)F
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getNowLinePosition()F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/gridviews/GridViewFrame;Lcom/android/calendar/time/Time;)F
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getTimeLinePosition(Lcom/android/calendar/time/Time;)F

    move-result v0

    return v0
.end method

.method private getDayHeight()F
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getHourCellHeight()F

    move-result v0

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getNowLinePosition()F
    .locals 4

    .prologue
    .line 220
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 222
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getTimeLinePosition(Lcom/android/calendar/time/Time;)F

    move-result v0

    return v0
.end method

.method private getTimeLinePosition(Lcom/android/calendar/time/Time;)F
    .locals 2

    .prologue
    .line 226
    iget v0, p1, Lcom/android/calendar/time/Time;->hour:I

    mul-int/lit8 v0, v0, 0x3c

    iget v1, p1, Lcom/android/calendar/time/Time;->minute:I

    add-int/2addr v0, v1

    .line 227
    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getDayHeight()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x44b40000    # 1440.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mNowLineStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private shouldIndicateToday()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mShouldIndicateToday:Z

    return v0
.end method


# virtual methods
.method public autoScroll()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/android/calendar/timely/gridviews/GridViewFrame$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame$1;-><init>(Lcom/android/calendar/timely/gridviews/GridViewFrame;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->post(Ljava/lang/Runnable;)Z

    .line 287
    return-void
.end method

.method public getFirstJulianDay()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mFirstJulianDay:I

    return v0
.end method

.method protected getHorizontalLineEndX()I
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mIsRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected getHorizontalLineMarginStart()I
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mShouldDrawHours:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mHoursWidth:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getHorizontalLineStartX(Landroid/graphics/Canvas;)I
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getHorizontalLineMarginStart()I

    move-result v0

    .line 134
    iget-boolean v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mIsRtl:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    :cond_0
    return v0
.end method

.method public getHourCellHeight()F
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mIntervalHeight:I

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mGridlineHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 113
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 115
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getIntProperty(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->onCalendarPropertyChanged(ILjava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(Landroid/content/Context;ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 119
    return-void
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 303
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 304
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mIntervalHeight:I

    .line 305
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->requestLayout()V

    .line 307
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 124
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(Landroid/content/Context;ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 126
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x1

    .line 143
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->shouldIndicateToday()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildCount()I

    move-result v0

    if-le v0, v7, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mTodayIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mTodayIndex:I

    .line 147
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 148
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mTodayIndex:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mTodayBgColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 155
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mIntervalHeight:I

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mGridlineHeight:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getHorizontalLineStartX(Landroid/graphics/Canvas;)I

    move-result v8

    .line 158
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getHorizontalLineEndX()I

    move-result v6

    .line 161
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mGridlineHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/DateTimeFormatHelper;->getHoursStrings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    iget-boolean v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mShouldDrawHours:Z

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mHourColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mHoursWidth:I

    div-int/lit8 v1, v1, 0x2

    .line 170
    iget-boolean v3, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mIsRtl:Z

    if-eqz v3, :cond_1

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    sub-int v1, v3, v1

    .line 173
    :cond_1
    int-to-float v1, v1

    iget v3, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mHoursTextSize:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object v4, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    int-to-float v1, v8

    int-to-float v3, v6

    iget-object v5, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 181
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mIntervalHeight:I

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mGridlineHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v2, v0

    .line 182
    goto :goto_0

    .line 185
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getHeight()I

    move-result v10

    .line 186
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 187
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mShouldDrawHours:Z

    if-eqz v0, :cond_4

    .line 192
    int-to-float v1, v8

    int-to-float v3, v8

    int-to-float v4, v10

    iget-object v5, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 197
    :cond_4
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mIsRtl:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    move v6, v0

    .line 198
    :goto_1
    invoke-virtual {p0, v11}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/2addr v0, v6

    add-int/2addr v0, v8

    move v8, v7

    move v9, v0

    .line 199
    :goto_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildCount()I

    move-result v0

    if-ge v8, v0, :cond_6

    .line 200
    int-to-float v1, v9

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 201
    invoke-virtual {p0, v8}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/2addr v0, v6

    add-int v1, v9, v0

    .line 199
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v9, v1

    goto :goto_2

    :cond_5
    move v6, v7

    .line 197
    goto :goto_1

    .line 205
    :cond_6
    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->shouldIndicateToday()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mTodayIndex:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mTodayIndex:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 206
    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getNowLinePosition()F

    move-result v2

    .line 207
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mTodayIndex:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 208
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mTodayIndex:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 210
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mNowLineStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mNowLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    int-to-float v1, v6

    add-int v0, v6, v8

    int-to-float v3, v0

    iget-object v5, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 213
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mIsRtl:Z

    if-eqz v0, :cond_8

    add-int v0, v6, v8

    .line 215
    :goto_3
    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mNowLineRadius:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 217
    :cond_7
    return-void

    :cond_8
    move v0, v6

    .line 214
    goto :goto_3
.end method

.method public scrollTo(Lcom/android/calendar/time/Time;)V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0, p1}, Lcom/android/calendar/time/Time;-><init>(Lcom/android/calendar/time/Time;)V

    .line 292
    new-instance v1, Lcom/android/calendar/timely/gridviews/GridViewFrame$2;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame$2;-><init>(Lcom/android/calendar/timely/gridviews/GridViewFrame;Lcom/android/calendar/time/Time;)V

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->post(Ljava/lang/Runnable;)Z

    .line 299
    return-void
.end method

.method public setFirstJulianDay(I)V
    .locals 2

    .prologue
    .line 239
    iput p1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mFirstJulianDay:I

    .line 240
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getTodayJulianDay(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mFirstJulianDay:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/gridviews/GridViewFrame;->mTodayIndex:I

    .line 241
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->invalidate()V

    .line 242
    return-void
.end method
