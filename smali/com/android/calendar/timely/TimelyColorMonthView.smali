.class public Lcom/android/calendar/timely/TimelyColorMonthView;
.super Lcom/android/datetimepicker/date/MonthView;
.source "TimelyColorMonthView.java"

# interfaces
.implements Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;
    }
.end annotation


# instance fields
.field private mAlternateCalendarPref:I

.field private mAlternateDayLineHeight:I

.field private final mAlternateDayStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlternateDayTextColor:I

.field private final mAlternateMonthNumTextSize:F

.field private final mBottomPadding:I

.field private mCirclePaint:Landroid/graphics/Paint;

.field private final mDataFactory:Lcom/android/calendar/timely/DataFactory;

.field private final mDotsColorWithIllustration:I

.field private mDotsColors:[I

.field private final mDotsRadius:F

.field private final mDotsSpacing:F

.field private mInterDayPadding:I

.field private final mIsTabletConfig:Z

.field private mListenerTag:I

.field private final mMonthNumTextSize:F

.field private final mOverflowPlusColor:I

.field private mShowIllustration:Z

.field private final mTextBottomMargin:I

.field private mTime:Lcom/android/calendar/time/Time;

.field private final mTodayCircleColor:I

.field private final mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/DataFactory;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/date/MonthView;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mCirclePaint:Landroid/graphics/Paint;

    .line 75
    iput-boolean v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mShowIllustration:Z

    .line 91
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mIsTabletConfig:Z

    .line 93
    iput-object p2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/R$color;->selected_day_in_month:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mCirclePaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/R$dimen;->date_picker_overflow_plus_stroke_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthNumTextSize:F

    .line 105
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    const-string v2, "Roboto-Medium"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 106
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthNumTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 118
    iput v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateCalendarPref:I

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayStrings:Landroid/util/SparseArray;

    .line 120
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateMonthNumTextSize:F

    .line 121
    iput v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayTextColor:I

    .line 124
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWeekNumPaint:Landroid/graphics/Paint;

    const-string v2, "Roboto-Medium"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 125
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/R$dimen;->date_picker_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 126
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/R$color;->week_in_year_label:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    const-string v2, "Roboto-Medium"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 129
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/R$dimen;->date_picker_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 130
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/R$color;->month_day_of_week_label:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    sget v1, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTodayCircleColor:I

    .line 133
    sget v1, Lcom/android/calendar/R$color;->date_picker_overflow_plus_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mOverflowPlusColor:I

    .line 134
    sget v1, Lcom/android/calendar/R$color;->date_picker_dots_color_with_illustration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsColorWithIllustration:I

    .line 135
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTodayNumberColor:I

    .line 136
    sget v1, Lcom/android/calendar/R$color;->day_with_events_in_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDayTextColor:I

    .line 138
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_circle_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    .line 139
    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWeekNumsColWidth:I

    .line 140
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_dots_diameter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsRadius:F

    .line 141
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_dots_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsSpacing:F

    .line 143
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_edge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mEdgePadding:I

    .line 144
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_week_number_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWeekNumsPadding:I

    .line 145
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_text_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTextBottomMargin:I

    .line 146
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTopPadding:I

    .line 147
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_bottom_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mBottomPadding:I

    .line 149
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->updateRowHeight()V

    .line 151
    invoke-virtual {p0, v4}, Lcom/android/calendar/timely/TimelyColorMonthView;->setRtlEnabled(Z)V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mFirstJulianDay:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mListenerTag:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mInterDayPadding:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/calendar/timely/TimelyColorMonthView;I)I
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mListenerTag:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->findDayOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/timely/TimelyColorMonthView;I)I
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelyColorMonthView;->getRtlCompatibleColumnIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mSelectedDay:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonth:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mYear:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/TimelyColorMonthView;)Lcom/android/calendar/time/Time;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/timely/TimelyColorMonthView;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mHasToday:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mToday:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/timely/TimelyColorMonthView;)Lcom/android/calendar/timely/DataFactory;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/timely/TimelyColorMonthView;)I
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getInternalStartPadding()I

    move-result v0

    return v0
.end method

.method private computeNumDots(I)I
    .locals 3

    .prologue
    .line 548
    const/4 v1, 0x0

    .line 549
    mul-int/lit8 v0, p1, 0x4

    .line 550
    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsColors:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    .line 551
    add-int/lit8 v1, v1, 0x1

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_0
    return v1
.end method

.method private getAlternateDom(III)Ljava/lang/String;
    .locals 5

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateCalendarPref:I

    if-eqz v1, :cond_0

    .line 459
    invoke-static {p1, p2, p3}, Lcom/android/calendar/Utils;->getJulianDay(III)I

    move-result v1

    .line 460
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayStrings:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 461
    if-nez v0, :cond_0

    .line 464
    invoke-static {p1, p2, p3}, Lcom/android/calendar/Utils;->getJulianDay(III)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateCalendarPref:I

    const/4 v4, 0x1

    .line 463
    invoke-static {v0, v2, v3, v4}, Lcom/android/calendar/AlternateCalendarUtils;->getAlternateDayOfMonthString(ILandroid/content/res/Resources;IZ)Ljava/lang/String;

    move-result-object v0

    .line 466
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayStrings:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    :cond_0
    return-object v0
.end method

.method private onAlternateCalendarSettingsChange()V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getAlternateCalendarPref(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateCalendarPref:I

    .line 171
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateCalendarPref:I

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->date_picker_alternate_date_line_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 173
    :goto_0
    iput v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayLineHeight:I

    .line 174
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayStrings:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 175
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->updateRowHeight()V

    .line 176
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->requestLayout()V

    .line 177
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInternalPaddingValues()V
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mIsTabletConfig:Z

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->updateTabletInternalPaddingValues()V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->updatePhoneInternalPaddingValues()V

    goto :goto_0
.end method

.method private updatePhoneInternalPaddingValues()V
    .locals 4

    .prologue
    .line 377
    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I

    .line 378
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWidth:I

    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mEdgePadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 381
    iget-boolean v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mShowWeekNumbers:Z

    if-eqz v2, :cond_0

    .line 382
    add-int/lit8 v1, v1, 0x1

    .line 383
    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWeekNumsColWidth:I

    sub-int/2addr v0, v2

    .line 386
    :cond_0
    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mInterDayPadding:I

    iput v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWeekNumsPadding:I

    .line 387
    return-void
.end method

.method private updateRowHeight()V
    .locals 3

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mIsTabletConfig:Z

    if-eqz v0, :cond_0

    .line 156
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayLineHeight:I

    .line 157
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->date_picker_inter_row_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayLineHeight:I

    .line 162
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->date_picker_min_row_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x14

    .line 164
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I

    goto :goto_0
.end method

.method private updateTabletInternalPaddingValues()V
    .locals 3

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 360
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mShowWeekNumbers:Z

    if-eqz v1, :cond_0

    .line 361
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_inter_day_padding_week_number:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mInterDayPadding:I

    .line 363
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWidth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mInterDayPadding:I

    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWeekNumsPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWeekNumsColWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mEdgePadding:I

    .line 370
    :goto_0
    return-void

    .line 366
    :cond_0
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_inter_day_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mInterDayPadding:I

    .line 367
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWidth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mInterDayPadding:I

    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mEdgePadding:I

    goto :goto_0
.end method


# virtual methods
.method public drawMonthDay(Landroid/graphics/Canvas;IIIIIIIII)V
    .locals 19

    .prologue
    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;

    move/from16 v0, p4

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/calendar/time/Time;->set(III)V

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v4}, Lcom/android/calendar/time/Time;->normalizeSafe()V

    .line 477
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;

    iget-boolean v4, v4, Lcom/android/calendar/time/Time;->allDay:Z

    if-eqz v4, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;

    const/4 v7, 0x0

    iput v7, v6, Lcom/android/calendar/time/Time;->second:I

    iput v7, v5, Lcom/android/calendar/time/Time;->minute:I

    iput v7, v4, Lcom/android/calendar/time/Time;->hour:I

    .line 481
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    add-int v15, p7, v4

    .line 482
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mHasToday:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mToday:I

    move/from16 v0, p4

    if-ne v4, v0, :cond_3

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTodayCircleColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    int-to-float v4, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    add-int v5, v5, p9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayLineHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayLineHeight:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 531
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mHasToday:Z

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mToday:I

    move/from16 v0, p4

    if-ne v4, v0, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTodayNumberColor:I

    :goto_1
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthNumTextSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 533
    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v15

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTextBottomMargin:I

    sub-int v6, p10, v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 536
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateCalendarPref:I

    if-eqz v4, :cond_2

    .line 537
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mHasToday:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mToday:I

    move/from16 v0, p4

    if-ne v4, v0, :cond_9

    .line 538
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTodayNumberColor:I

    .line 537
    :goto_2
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateMonthNumTextSize:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 540
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/timely/TimelyColorMonthView;->getAlternateDom(III)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v15

    move/from16 v0, p10

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 542
    :cond_2
    return-void

    .line 488
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mSelectedDay:I

    move/from16 v0, p4

    if-ne v4, v0, :cond_4

    .line 490
    int-to-float v4, v15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    add-int v5, v5, p9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayLineHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayLineHeight:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 497
    :cond_4
    add-int/lit8 v4, p4, -0x1

    mul-int/lit8 v16, v4, 0x4

    .line 498
    add-int/lit8 v4, p4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/calendar/timely/TimelyColorMonthView;->computeNumDots(I)I

    move-result v17

    .line 499
    if-lez v17, :cond_1

    .line 500
    const/4 v4, 0x3

    move/from16 v0, v17

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 501
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsRadius:F

    mul-float/2addr v4, v5

    move/from16 v0, v18

    int-to-float v5, v0

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsSpacing:F

    add-int/lit8 v6, v18, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 504
    int-to-float v5, v15

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float v4, v5, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsRadius:F

    add-float/2addr v5, v4

    .line 505
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTextBottomMargin:I

    sub-int v4, p10, v4

    int-to-float v4, v4

    const/high16 v6, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsRadius:F

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayLineHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    .line 507
    const/4 v4, 0x0

    move v13, v4

    move v14, v5

    :goto_3
    move/from16 v0, v18

    if-ge v13, v0, :cond_1

    .line 509
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mIsTabletConfig:Z

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mShowIllustration:Z

    if-eqz v4, :cond_5

    .line 510
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsColorWithIllustration:I

    .line 514
    :goto_4
    const/4 v5, 0x2

    if-ne v13, v5, :cond_7

    const/4 v5, 0x3

    move/from16 v0, v17

    if-le v0, v5, :cond_7

    .line 515
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mIsTabletConfig:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mShowIllustration:Z

    if-eqz v4, :cond_6

    .line 516
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsColorWithIllustration:I

    .line 515
    :goto_5
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 517
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsRadius:F

    sub-float v5, v14, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsRadius:F

    add-float v7, v14, v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v8, v6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 519
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsRadius:F

    sub-float v9, v6, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsRadius:F

    add-float v11, v6, v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v8, v14

    move v10, v14

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 525
    :goto_6
    const/high16 v4, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsRadius:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsSpacing:F

    add-float/2addr v4, v5

    add-float v5, v14, v4

    .line 507
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    move v14, v5

    goto :goto_3

    .line 510
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsColors:[I

    add-int v5, v16, v13

    aget v4, v4, v5

    goto :goto_4

    .line 516
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mOverflowPlusColor:I

    goto :goto_5

    .line 522
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 523
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsRadius:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v6, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 531
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDayTextColor:I

    goto/16 :goto_1

    .line 538
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayTextColor:I

    goto/16 :goto_2
.end method

.method protected drawMonthDayLabels(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 413
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTopPadding:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTextBottomMargin:I

    sub-int v2, v0, v1

    .line 415
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 416
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I

    if-ge v0, v1, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getInternalStartPadding()I

    move-result v1

    iget v4, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mInterDayPadding:I

    iget v5, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    add-int/2addr v4, v1

    .line 421
    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWeekStart:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getRtlCompatibleColumnIndex(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 422
    iget v5, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I

    if-le v1, v5, :cond_0

    .line 423
    iget v5, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I

    rem-int/2addr v1, v5

    .line 425
    :cond_0
    iget-object v5, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 426
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 428
    invoke-static {v3}, Lcom/android/calendar/Utils;->getShortDayOfWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 429
    int-to-float v4, v4

    int-to-float v5, v2

    iget-object v6, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_1
    return-void
.end method

.method protected drawMonthNums(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 435
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTopPadding:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getMonthHeaderSize()I

    move-result v1

    add-int v6, v0, v1

    .line 436
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->findDayOffset()I

    move-result v0

    .line 437
    const/4 v4, 0x1

    move v11, v0

    :goto_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumCells:I

    if-gt v4, v0, :cond_1

    .line 438
    invoke-virtual {p0, v11}, Lcom/android/calendar/timely/TimelyColorMonthView;->getRtlCompatibleColumnIndex(I)I

    move-result v0

    .line 439
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getInternalStartPadding()I

    move-result v1

    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mInterDayPadding:I

    iget v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/2addr v0, v2

    add-int v5, v1, v0

    .line 442
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int v8, v5, v0

    .line 444
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int v10, v6, v0

    .line 446
    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mYear:I

    iget v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonth:I

    move-object v0, p0

    move-object v1, p1

    move v7, v5

    move v9, v6

    invoke-virtual/range {v0 .. v10}, Lcom/android/calendar/timely/TimelyColorMonthView;->drawMonthDay(Landroid/graphics/Canvas;IIIIIIIII)V

    .line 448
    add-int/lit8 v0, v11, 0x1

    .line 449
    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I

    if-ne v0, v1, :cond_0

    .line 450
    const/4 v0, 0x0

    .line 451
    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I

    add-int/2addr v6, v1

    .line 437
    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v11, v0

    goto :goto_0

    .line 454
    :cond_1
    return-void
.end method

.method protected drawMonthTitle(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method protected drawWeekNum(Landroid/graphics/Canvas;IIIIII)V
    .locals 6

    .prologue
    .line 571
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    .line 572
    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    .line 574
    add-int/2addr v1, p4

    div-int/lit8 v1, v1, 0x2

    .line 575
    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v1, v1

    iget v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTextBottomMargin:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 577
    return-void
.end method

.method public getDayFromLocation(FF)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 581
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getInternalStartPadding()I

    move-result v0

    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mInterDayPadding:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 582
    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I

    iget v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 584
    cmpg-float v3, p2, v2

    if-ltz v3, :cond_0

    cmpg-float v3, p1, v0

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mWidth:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getInternalEndPadding()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    :cond_0
    move v0, v1

    .line 597
    :cond_1
    :goto_0
    return v0

    .line 588
    :cond_2
    sub-float v2, p2, v2

    iget v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 589
    sub-float v0, p1, v0

    iget v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mInterDayPadding:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 590
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getRtlCompatibleColumnIndex(I)I

    move-result v0

    .line 592
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->findDayOffset()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    .line 593
    iget v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 594
    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumCells:I

    if-le v0, v2, :cond_1

    :cond_3
    move v0, v1

    .line 595
    goto :goto_0
.end method

.method public getDesiredHeight()I
    .locals 3

    .prologue
    .line 403
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mTopPadding:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I

    iget v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumRows:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getMonthHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mBottomPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected getMonthHeaderSize()I
    .locals 2

    .prologue
    .line 399
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mAlternateDayLineHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getMonthViewTouchHelper()Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;
    .locals 1

    .prologue
    .line 602
    new-instance v0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;-><init>(Lcom/android/calendar/timely/TimelyColorMonthView;Landroid/view/View;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/16 v1, 0xb

    .line 181
    invoke-super {p0}, Lcom/android/datetimepicker/date/MonthView;->onAttachedToWindow()V

    .line 183
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getBooleanProperty(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mShowIllustration:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(Landroid/content/Context;ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 197
    return-void
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 609
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 610
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mShowIllustration:Z

    .line 611
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->invalidate()V

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->onAlternateCalendarSettingsChange()V

    .line 614
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->invalidate()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/datetimepicker/date/MonthView;->onDetachedFromWindow()V

    .line 202
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(Landroid/content/Context;ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 208
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 340
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getDesiredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/TimelyColorMonthView;->setMeasuredDimension(II)V

    .line 341
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 391
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/datetimepicker/date/MonthView;->onSizeChanged(IIII)V

    .line 392
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->updateInternalPaddingValues()V

    .line 393
    return-void
.end method

.method public onUpdateData(Lcom/android/calendar/timely/MonthData;)V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsColors:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 214
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "preferences_birthdays_color"

    const v3, -0x6d1e40

    .line 220
    invoke-static {v0, v1, v3}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 219
    invoke-static {v0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v6

    .line 226
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    move v3, v2

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsColors:[I

    array-length v0, v0

    if-ge v3, v0, :cond_0

    .line 228
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mFirstJulianDay:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/MonthData;->getItems(I)Ljava/util/List;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 227
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 234
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v2

    move v5, v2

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 239
    instance-of v9, v0, Lcom/android/calendar/timely/TimelineBirthday;

    if-eqz v9, :cond_5

    .line 240
    const/4 v0, 0x1

    move v5, v0

    .line 241
    goto :goto_2

    .line 244
    :cond_5
    instance-of v9, v0, Lcom/android/calendar/timely/TimelineHoliday;

    if-eqz v9, :cond_6

    .line 245
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v0

    move v4, v0

    .line 246
    goto :goto_2

    .line 250
    :cond_6
    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v0

    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 252
    iget-object v9, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsColors:[I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v3

    aput v0, v9, v10

    .line 254
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v11, :cond_4

    .line 263
    :cond_7
    if-eqz v5, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v11, :cond_8

    .line 264
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 265
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsColors:[I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v3

    aput v6, v0, v5

    .line 266
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_8
    if-eqz v4, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v11, :cond_2

    .line 272
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsColors:[I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v3

    aput v4, v0, v5

    goto/16 :goto_1
.end method

.method public requestInitialAccessibilityFocus()V
    .locals 2

    .prologue
    .line 619
    invoke-static {}, Lcom/android/calendar/A11yHelper;->getInstance()Lcom/android/calendar/A11yHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/A11yHelper;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Lcom/android/calendar/timely/TimelyColorMonthView$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/TimelyColorMonthView$2;-><init>(Lcom/android/calendar/timely/TimelyColorMonthView;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->post(Ljava/lang/Runnable;)Z

    .line 630
    :cond_0
    return-void
.end method

.method public reuse()V
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mFirstJulianDay:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/DataFactory;->getDataAllowNull(I)Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    .line 561
    if-eqz v0, :cond_0

    .line 562
    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mFirstJulianDay:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/MonthData;->unregisterListener(II)Z

    .line 565
    :cond_0
    invoke-super {p0}, Lcom/android/datetimepicker/date/MonthView;->reuse()V

    .line 566
    return-void
.end method

.method public setMonthParams(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/android/datetimepicker/date/MonthView;->setMonthParams(Ljava/util/HashMap;)V

    .line 282
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mNumCells:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDotsColors:[I

    .line 284
    iget v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mMonth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mYear:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getJulianFirstDayFromMonth(II)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mFirstJulianDay:I

    .line 287
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mFirstJulianDay:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    .line 288
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->onUpdateData(Lcom/android/calendar/timely/MonthData;)V

    .line 289
    iget v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView;->mFirstJulianDay:I

    new-instance v2, Lcom/android/calendar/timely/TimelyColorMonthView$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/TimelyColorMonthView$1;-><init>(Lcom/android/calendar/timely/TimelyColorMonthView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/MonthData;->registerListener(ILcom/android/calendar/timely/DataFactory$OnUpdateListener;)V

    .line 335
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyColorMonthView;->updateInternalPaddingValues()V

    .line 336
    return-void
.end method
