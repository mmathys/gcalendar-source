.class public Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;
.super Landroid/view/View;
.source "WeekHeaderLabelsView.java"


# static fields
.field private static final ROBOTO_REGULAR:Landroid/graphics/Typeface;


# instance fields
.field private mAlternateCalendarPref:I

.field private mCountOfDays:I

.field private final mDayHeaderFutureColor:I

.field private final mDayHeaderPastColor:I

.field private mDayNumberLabel:[Ljava/lang/String;

.field private mDayWeekLabel:[Ljava/lang/String;

.field private mFirstJulianDay:I

.field private final mGridlineStrokeWidth:I

.field private final mHeaderDayNumberBottomMargin:I

.field private final mHeaderDayWeekBottomMargin:I

.field private final mHeaderLabelColor:I

.field private final mHeaderLabelLeftMargin:I

.field private final mHeaderNumberSize:I

.field private final mHeaderTextSize:I

.field private final mIsRtl:Z

.field private final mLineColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRobotoMediumTypeface:Landroid/graphics/Typeface;

.field private final mTodayColor:I

.field private mTodayIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mAlternateCalendarPref:I

    .line 76
    invoke-static {p1}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mIsRtl:Z

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    sget v1, Lcom/android/calendar/R$dimen;->week_day_header_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderTextSize:I

    .line 80
    sget v1, Lcom/android/calendar/R$dimen;->week_day_number_header_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderNumberSize:I

    .line 81
    sget v1, Lcom/android/calendar/R$color;->calendar_hour_label:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderLabelColor:I

    .line 82
    sget v1, Lcom/android/calendar/R$dimen;->week_header_text_left_margin:I

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 84
    sget v2, Lcom/android/calendar/R$dimen;->week_header_day_number_bottom_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderDayNumberBottomMargin:I

    .line 86
    sget v2, Lcom/android/calendar/R$dimen;->week_header_day_week_bottom_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderDayWeekBottomMargin:I

    .line 88
    sget v2, Lcom/android/calendar/R$dimen;->gridline_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mGridlineStrokeWidth:I

    .line 89
    sget v2, Lcom/android/calendar/R$color;->week_day_header_past:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mDayHeaderPastColor:I

    .line 90
    sget v2, Lcom/android/calendar/R$color;->week_day_header_future:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mDayHeaderFutureColor:I

    .line 91
    sget v2, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mTodayColor:I

    .line 92
    sget v2, Lcom/android/calendar/R$color;->grids_line:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mLineColor:I

    .line 95
    sget-object v0, Lcom/android/calendar/R$styleable;->AllDayHeaderView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    sget v2, Lcom/android/calendar/R$styleable;->AllDayHeaderView_count_days:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mCountOfDays:I

    .line 100
    sget v2, Lcom/android/calendar/R$styleable;->AllDayHeaderView_label_marginStart:I

    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderLabelLeftMargin:I

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    .line 110
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 111
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mIsRtl:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mTodayIndex:I

    .line 115
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mRobotoMediumTypeface:Landroid/graphics/Typeface;

    .line 117
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mFirstJulianDay:I

    .line 118
    return-void

    .line 105
    :cond_0
    iput v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mCountOfDays:I

    .line 106
    iput v1, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderLabelLeftMargin:I

    goto :goto_0

    .line 111
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_1
.end method

.method private getTextX(Landroid/graphics/Canvas;)I
    .locals 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mIsRtl:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderLabelLeftMargin:I

    sub-int/2addr v0, v1

    .line 124
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderLabelLeftMargin:I

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 130
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->getHeight()I

    move-result v9

    .line 131
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mCountOfDays:I

    int-to-float v2, v2

    div-float v6, v0, v2

    .line 134
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mDayWeekLabel:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderLabelColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->getTextX(Landroid/graphics/Canvas;)I

    move-result v0

    int-to-float v0, v0

    move v2, v0

    move v0, v1

    .line 139
    :goto_0
    iget v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mCountOfDays:I

    if-ge v0, v3, :cond_5

    .line 141
    iget v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mTodayIndex:I

    if-ge v0, v3, :cond_2

    .line 142
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mDayHeaderPastColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderNumberSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mDayNumberLabel:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderDayNumberBottomMargin:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 154
    iget v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mTodayIndex:I

    if-ne v3, v0, :cond_0

    .line 155
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mRobotoMediumTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mDayWeekLabel:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget v4, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mHeaderDayWeekBottomMargin:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    iget v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mTodayIndex:I

    if-ne v3, v0, :cond_1

    .line 165
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 168
    :cond_1
    iget-boolean v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mIsRtl:Z

    if-eqz v3, :cond_4

    neg-float v3, v6

    :goto_2
    add-float/2addr v2, v3

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_2
    iget v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mTodayIndex:I

    if-ne v0, v3, :cond_3

    .line 144
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mTodayColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 146
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mDayHeaderFutureColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_4
    move v3, v6

    .line 168
    goto :goto_2

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mGridlineStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move v1, v6

    move v7, v8

    .line 176
    :goto_3
    iget v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mCountOfDays:I

    int-to-float v0, v0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_6

    .line 178
    const/4 v2, 0x0

    int-to-float v4, v9

    iget-object v5, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 177
    add-float v0, v7, v8

    add-float/2addr v1, v6

    move v7, v0

    goto :goto_3

    .line 180
    :cond_6
    return-void
.end method

.method public setFirstJulianDay(I)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getTodayJulianDay(Landroid/content/Context;)I

    move-result v0

    sub-int v2, v0, p1

    .line 197
    iget v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mTodayIndex:I

    if-ne v2, v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mFirstJulianDay:I

    if-ne p1, v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v3, Lcom/android/calendar/time/Time;

    invoke-direct {v3}, Lcom/android/calendar/time/Time;-><init>()V

    .line 205
    iget v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mFirstJulianDay:I

    if-ne p1, v0, :cond_3

    .line 241
    :cond_1
    iget v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mTodayIndex:I

    if-eq v2, v0, :cond_2

    .line 242
    iput v2, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mTodayIndex:I

    .line 245
    :cond_2
    invoke-virtual {v3, p1}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 246
    iget v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mCountOfDays:I

    if-ne v0, v10, :cond_5

    .line 247
    const-string v0, "EEEE dd MMMM yyyy"

    .line 248
    invoke-virtual {v3, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    .line 247
    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 264
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->invalidate()V

    goto :goto_0

    .line 206
    :cond_3
    iput p1, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mFirstJulianDay:I

    .line 208
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mDayWeekLabel:[Ljava/lang/String;

    if-nez v0, :cond_4

    .line 209
    iget v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mCountOfDays:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mDayWeekLabel:[Ljava/lang/String;

    .line 210
    iget v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mCountOfDays:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mDayNumberLabel:[Ljava/lang/String;

    .line 214
    :cond_4
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v0, "E"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 215
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v0, "d"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 218
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    move v0, v1

    .line 219
    :goto_2
    iget v7, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mCountOfDays:I

    if-ge v0, v7, :cond_1

    .line 220
    iget v7, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mFirstJulianDay:I

    add-int/2addr v7, v0

    .line 221
    invoke-virtual {v3, v7}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 222
    invoke-virtual {v3, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 234
    iget-object v7, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mDayWeekLabel:[Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 236
    iget-object v7, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mDayNumberLabel:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 252
    :cond_5
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x7

    .line 251
    invoke-static {v0, v2}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getBooleanProperty(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 253
    if-eqz v0, :cond_6

    .line 254
    iget v0, p0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->mFirstJulianDay:I

    .line 256
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsTime(Landroid/content/Context;)I

    move-result v2

    .line 254
    invoke-static {v0, v2}, Lcom/android/datetimepicker/Utils;->getWeekNumberInYear(II)I

    move-result v0

    .line 260
    :goto_3
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [I

    iget v5, v3, Lcom/android/calendar/time/Time;->year:I

    aput v5, v4, v1

    iget v1, v3, Lcom/android/calendar/time/Time;->month:I

    aput v1, v4, v10

    const/4 v1, 0x2

    iget v3, v3, Lcom/android/calendar/time/Time;->monthDay:I

    aput v3, v4, v1

    invoke-virtual {v2, v4, v10, v0}, Lcom/android/calendar/DateTimeFormatHelper;->getWeekRangeText([IZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 257
    :cond_6
    const/4 v0, -0x1

    goto :goto_3
.end method
