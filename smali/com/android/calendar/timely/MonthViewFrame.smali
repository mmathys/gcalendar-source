.class public Lcom/android/calendar/timely/MonthViewFrame;
.super Lcom/android/datetimepicker/date/MonthView;
.source "MonthViewFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final ROBOTO_REGULAR:Landroid/graphics/Typeface;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlternateCalendarPreference:I

.field private final mAlternateDateStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChipVerticalMargin:I

.field private final mDate:Ljava/util/Date;

.field private mDayDarkTextColor:I

.field private final mDayHeaderHeight:I

.field private mDayLightTextColor:I

.field private mDayNumberBottomPosition:I

.field private final mDayNumberStartMargin:I

.field private mDisplayOverlfowDots:Z

.field private final mDotDistance:I

.field private final mDotRadius:F

.field private final mDotTopOffset:I

.field private final mEventChipHeight:I

.field private final mIsTabletConfig:Z

.field private final mLineColor:I

.field private mMaxNumChipsPerDay:I

.field private final mMonthHeaderBottomPosition:I

.field private final mMonthHeaderHeight:I

.field private final mNeighborsMonthsPaint:Landroid/graphics/Paint;

.field private mNumHiddenChips:[I

.field private mOverflowOffsetY:I

.field private mOwner:Lcom/android/calendar/timely/CalendarMonthView;

.field private mPrevMonthNumsDays:I

.field private final mRecycleTimeUtc:Lcom/android/calendar/time/Time;

.field private final mResources:Landroid/content/res/Resources;

.field private final mRobotoMedium:Landroid/graphics/Typeface;

.field private final mTodayCircleRadius:I

.field private mTodayJulianDay:I

.field private final mTodayWeekdayLabelColor:I

.field private mXMoreLabelOffsetY:I

.field private final mXMoreLabelPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-class v0, Lcom/android/calendar/timely/MonthViewFrame;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/MonthViewFrame;->TAG:Ljava/lang/String;

    .line 50
    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/MonthViewFrame;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/datetimepicker/date/MonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDate:Ljava/util/Date;

    .line 106
    new-instance v0, Lcom/android/calendar/time/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRecycleTimeUtc:Lcom/android/calendar/time/Time;

    .line 111
    iput-boolean v3, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDisplayOverlfowDots:Z

    .line 119
    iput v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mAlternateCalendarPreference:I

    .line 124
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mIsTabletConfig:Z

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    .line 128
    new-array v0, v3, [I

    const v1, 0x101030e

    aput v1, v0, v4

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/MonthViewFrame;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->month_view_dot_diameter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDotRadius:F

    .line 134
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->month_view_dot_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDotDistance:I

    .line 135
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->month_view_dot_top_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDotTopOffset:I

    .line 137
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$color;->month_view_day_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayTextColor:I

    .line 138
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$color;->month_view_past_day_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayLightTextColor:I

    .line 139
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$color;->month_view_future_day_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayDarkTextColor:I

    .line 140
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->month_view_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthHeaderHeight:I

    .line 141
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->month_view_header_bottom_position:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthHeaderBottomPosition:I

    .line 143
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->month_view_day_number_left_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayNumberStartMargin:I

    .line 145
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->month_view_week_number_column_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mWeekNumsColWidth:I

    .line 148
    iput v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayNumberColor:I

    .line 149
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayWeekdayLabelColor:I

    .line 151
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/calendar/timely/MonthViewFrame;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 152
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mWeekNumPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$color;->week_in_year_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mWeekNumPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$dimen;->week_in_year_label_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 156
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 157
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthNumPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$dimen;->month_view_day_number_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 159
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 160
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/calendar/timely/MonthViewFrame;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 161
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$dimen;->month_view_day_label_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 165
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mSelectedCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mSelectedCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayWeekdayLabelColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->month_view_today_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayCircleRadius:I

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNeighborsMonthsPaint:Landroid/graphics/Paint;

    .line 171
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNeighborsMonthsPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$color;->month_view_neighbors_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNeighborsMonthsPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mXMoreLabelPaint:Landroid/graphics/Paint;

    .line 175
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mXMoreLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 176
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mXMoreLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mXMoreLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$color;->month_view_more_events_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mXMoreLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$dimen;->default_event_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 180
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mXMoreLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/calendar/timely/MonthViewFrame;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mAlternateDateStrings:Landroid/util/SparseArray;

    .line 188
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$color;->grids_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mLineColor:I

    .line 189
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->month_view_chip_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mEventChipHeight:I

    .line 190
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mEventChipHeight:I

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayHeaderHeight:I

    .line 191
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->month_view_chip_vertical_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mChipVerticalMargin:I

    .line 194
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/calendar/R$dimen;->month_view_horizontal_paddings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mEdgePadding:I

    .line 196
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRobotoMedium:Landroid/graphics/Typeface;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/MonthViewFrame;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/MonthViewFrame;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/MonthViewFrame;->onNeighborDayClick(I)V

    return-void
.end method

.method static synthetic access$1000(II)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/android/calendar/timely/MonthViewFrame;->maybeIndexFromId(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/timely/MonthViewFrame;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/timely/MonthViewFrame;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mActiveLaunchDayRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/MonthViewFrame;)Lcom/android/calendar/timely/CalendarMonthView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/MonthViewFrame;Lcom/android/calendar/timely/TimelyChip;I)I
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/MonthViewFrame;->makeChipVirtualId(Lcom/android/calendar/timely/TimelyChip;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/MonthViewFrame;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumCells:I

    return v0
.end method

.method static synthetic access$600(III)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/android/calendar/timely/MonthViewFrame;->idFromIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/timely/MonthViewFrame;)[I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumHiddenChips:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/timely/MonthViewFrame;I)Lcom/android/calendar/timely/TimelyChip;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/MonthViewFrame;->maybeGetChipById(I)Lcom/android/calendar/timely/TimelyChip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(I)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/calendar/timely/MonthViewFrame;->auxIndexFromId(I)I

    move-result v0

    return v0
.end method

.method private static auxIndexFromId(I)I
    .locals 1

    .prologue
    .line 746
    shr-int/lit8 v0, p0, 0x10

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private computeRowHeight(I)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 265
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getMonthHeaderSize()I

    move-result v0

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumRows:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    .line 266
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayHeaderHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mEventChipHeight:I

    iget v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mChipVerticalMargin:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMaxNumChipsPerDay:I

    .line 270
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMaxNumChipsPerDay:I

    iget v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mEventChipHeight:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMaxNumChipsPerDay:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mChipVerticalMargin:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 272
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    sub-float/2addr v1, v2

    .line 273
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayNumberBottomPosition:I

    .line 276
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mXMoreLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 277
    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    iget v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mEventChipHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mXMoreLabelOffsetY:I

    .line 280
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mEventChipHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDotTopOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mOverflowOffsetY:I

    .line 281
    return-void
.end method

.method private drawLines(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getMonthHeaderSize()I

    move-result v0

    iget v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    add-int/2addr v0, v2

    move v6, v0

    move v7, v1

    :goto_0
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumRows:I

    if-ge v7, v0, :cond_0

    .line 471
    const/4 v1, 0x0

    int-to-float v2, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthNumPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 469
    add-int/lit8 v1, v7, 0x1

    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    add-int/2addr v0, v6

    move v6, v0

    move v7, v1

    goto :goto_0

    .line 473
    :cond_0
    return-void
.end method

.method private drawNeighborsMonths(Landroid/graphics/Canvas;)V
    .locals 18

    .prologue
    .line 382
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/timely/MonthViewFrame;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/timely/MonthViewFrame;->getMonthHeaderSize()I

    move-result v2

    add-int v7, v1, v2

    .line 384
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/timely/MonthViewFrame;->getEdgePadding()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/timely/MonthViewFrame;->mNumDays:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float v15, v1, v2

    .line 385
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/timely/MonthViewFrame;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v16, v1, -0x1

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/timely/MonthViewFrame;->findDayOffset()I

    move-result v14

    .line 390
    if-lez v14, :cond_3

    .line 391
    add-int/lit8 v8, v14, -0x1

    .line 394
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mIsTabletConfig:Z

    if-eqz v1, :cond_0

    .line 395
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/timely/MonthViewFrame;->getMonthHeaderSize()I

    move-result v1

    int-to-float v3, v1

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/timely/MonthViewFrame;->getInternalStartPadding()I

    move-result v1

    int-to-float v1, v1

    add-int/lit8 v4, v8, 0x1

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v15

    add-float/2addr v4, v1

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/timely/MonthViewFrame;->getMonthHeaderSize()I

    move-result v1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/timely/MonthViewFrame;->mNeighborsMonthsPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 395
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 401
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mMonth:I

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mYear:I

    add-int/lit8 v3, v1, -0x1

    .line 402
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mMonth:I

    if-nez v1, :cond_2

    const/16 v4, 0xb

    .line 405
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/timely/MonthViewFrame;->mPrevMonthNumsDays:I

    move v13, v8

    :goto_2
    if-ltz v13, :cond_3

    .line 406
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/calendar/timely/MonthViewFrame;->getRtlCompatibleColumnIndex(I)I

    move-result v1

    .line 407
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/timely/MonthViewFrame;->getInternalStartPadding()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 409
    sub-float v2, v1, v15

    .line 410
    add-float v9, v1, v15

    .line 411
    sub-int v10, v7, v16

    .line 412
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    add-int v11, v10, v6

    .line 414
    float-to-int v6, v1

    float-to-int v8, v2

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    sub-int v2, v14, v13

    sub-int v12, v1, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v12}, Lcom/android/calendar/timely/MonthViewFrame;->drawMonthDay(Landroid/graphics/Canvas;IIIIIIIIII)V

    .line 405
    add-int/lit8 v1, v13, -0x1

    add-int/lit8 v5, v5, -0x1

    move v13, v1

    goto :goto_2

    .line 401
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/timely/MonthViewFrame;->mYear:I

    goto :goto_0

    .line 402
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mMonth:I

    add-int/lit8 v4, v1, -0x1

    goto :goto_1

    .line 421
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/timely/MonthViewFrame;->findDayOffset()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/timely/MonthViewFrame;->mNumCells:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/timely/MonthViewFrame;->mNumDays:I

    rem-int v9, v1, v2

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/timely/MonthViewFrame;->calculateNumRows()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-nez v9, :cond_6

    const/4 v1, 0x1

    :goto_3
    add-int v8, v2, v1

    .line 426
    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mNumRows:I

    if-ge v8, v1, :cond_9

    .line 427
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    mul-int/2addr v1, v8

    add-int/2addr v7, v1

    .line 430
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mIsTabletConfig:Z

    if-eqz v1, :cond_5

    .line 431
    mul-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/timely/MonthViewFrame;->getInternalStartPadding()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    sub-int v1, v7, v16

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mWidth:I

    int-to-float v4, v1

    sub-int v1, v7, v16

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/timely/MonthViewFrame;->mNeighborsMonthsPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 437
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mMonth:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mYear:I

    add-int/lit8 v3, v1, 0x1

    .line 438
    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mMonth:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_8

    const/4 v4, 0x0

    .line 441
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/timely/MonthViewFrame;->getEndJulianDay()I

    move-result v17

    .line 442
    const/4 v5, 0x1

    move v13, v8

    move v14, v9

    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mNumRows:I

    if-ge v13, v1, :cond_9

    .line 443
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/calendar/timely/MonthViewFrame;->getRtlCompatibleColumnIndex(I)I

    move-result v1

    .line 444
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/timely/MonthViewFrame;->getInternalStartPadding()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 446
    sub-float v2, v1, v15

    .line 447
    add-float v9, v1, v15

    .line 448
    sub-int v10, v7, v16

    .line 449
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    add-int v11, v10, v6

    .line 451
    float-to-int v6, v1

    float-to-int v8, v2

    float-to-int v9, v9

    add-int v12, v17, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v12}, Lcom/android/calendar/timely/MonthViewFrame;->drawMonthDay(Landroid/graphics/Canvas;IIIIIIIIII)V

    .line 455
    add-int/lit8 v2, v14, 0x1

    .line 456
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mNumDays:I

    if-ne v2, v1, :cond_a

    .line 457
    const/4 v2, 0x0

    .line 458
    add-int/lit8 v1, v13, 0x1

    .line 459
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    add-int/2addr v7, v6

    .line 442
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move v13, v1

    move v14, v2

    goto :goto_6

    .line 422
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 437
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/timely/MonthViewFrame;->mYear:I

    goto :goto_4

    .line 438
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/timely/MonthViewFrame;->mMonth:I

    add-int/lit8 v4, v1, 0x1

    goto :goto_5

    .line 463
    :cond_9
    return-void

    :cond_a
    move v1, v13

    goto :goto_7
.end method

.method private static idFromIndex(III)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 730
    if-lez p1, :cond_0

    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 731
    if-ltz p2, :cond_1

    const/16 v0, 0x20

    if-ge p2, v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 732
    shl-int/lit8 v0, p0, 0x5

    or-int/2addr v0, p2

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, p1

    return v0

    :cond_0
    move v0, v2

    .line 730
    goto :goto_0

    :cond_1
    move v1, v2

    .line 731
    goto :goto_1
.end method

.method private makeChipVirtualId(Lcom/android/calendar/timely/TimelyChip;I)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 753
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;

    invoke-virtual {v1, p1}, Lcom/android/calendar/timely/CalendarMonthView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 754
    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, v1, p2}, Lcom/android/calendar/timely/MonthViewFrame;->idFromIndex(III)I

    move-result v0

    :cond_0
    return v0
.end method

.method private maybeGetChipById(I)Lcom/android/calendar/timely/TimelyChip;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 758
    invoke-static {v3, p1}, Lcom/android/calendar/timely/MonthViewFrame;->maybeIndexFromId(II)I

    move-result v0

    .line 759
    if-ltz v0, :cond_1

    .line 760
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/CalendarMonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 761
    instance-of v1, v0, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v1, :cond_0

    .line 762
    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 767
    :goto_0
    return-object v0

    .line 764
    :cond_0
    sget-object v1, Lcom/android/calendar/timely/MonthViewFrame;->TAG:Ljava/lang/String;

    const-string v2, "Expected a TimelyChip, found %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 767
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static maybeIndexFromId(II)I
    .locals 1

    .prologue
    .line 739
    shr-int/lit8 v0, p1, 0x15

    if-eq v0, p0, :cond_0

    .line 740
    const/4 v0, -0x1

    .line 742
    :goto_0
    return v0

    :cond_0
    const v0, 0xffff

    and-int/2addr v0, p1

    goto :goto_0
.end method

.method private onNeighborDayClick(I)V
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mOnDayClickListener:Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;-><init>()V

    .line 355
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRecycleTimeUtc:Lcom/android/calendar/time/Time;

    invoke-virtual {v1, p1}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 356
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRecycleTimeUtc:Lcom/android/calendar/time/Time;

    iget v1, v1, Lcom/android/calendar/time/Time;->year:I

    iget-object v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRecycleTimeUtc:Lcom/android/calendar/time/Time;

    iget v2, v2, Lcom/android/calendar/time/Time;->month:I

    iget-object v3, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRecycleTimeUtc:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->monthDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->setDay(III)V

    .line 358
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mOnDayClickListener:Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;->onDayClick(Lcom/android/datetimepicker/date/MonthView;Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 360
    :cond_0
    return-void
.end method

.method private setPaintForDay(Landroid/graphics/Paint;IZ)V
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayJulianDay:I

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRobotoMedium:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 590
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayNumberColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 603
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mIsTabletConfig:Z

    if-eqz v0, :cond_2

    .line 595
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayJulianDay:I

    if-le v0, p2, :cond_1

    .line 596
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayLightTextColor:I

    .line 595
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    :goto_2
    sget-object v0, Lcom/android/calendar/timely/MonthViewFrame;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 596
    :cond_1
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayDarkTextColor:I

    goto :goto_1

    .line 598
    :cond_2
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    if-lt p2, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getEndJulianDay()I

    move-result v0

    if-le p2, v0, :cond_4

    .line 599
    :cond_3
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayLightTextColor:I

    .line 598
    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 599
    :cond_4
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayDarkTextColor:I

    goto :goto_3
.end method

.method private shouldDisplayOverflowDots(Landroid/view/Display;I)Z
    .locals 3

    .prologue
    .line 258
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 261
    int-to-float v1, p2

    const/high16 v2, 0x437a0000    # 250.0f

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanAfterUse()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumHiddenChips:[I

    .line 208
    iput-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;

    .line 212
    return-void
.end method

.method public drawMonthDay(Landroid/graphics/Canvas;IIIIIIIII)V
    .locals 12

    .prologue
    .line 483
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    add-int v0, v0, p4

    add-int/lit8 v11, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/calendar/timely/MonthViewFrame;->drawMonthDay(Landroid/graphics/Canvas;IIIIIIIIII)V

    .line 485
    return-void
.end method

.method public drawMonthDay(Landroid/graphics/Canvas;IIIIIIIIII)V
    .locals 9

    .prologue
    .line 519
    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 522
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->useRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayNumberStartMargin:I

    sub-int v1, p8, v1

    .line 523
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthNumPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    move/from16 v0, p11

    invoke-direct {p0, v2, v0, v4}, Lcom/android/calendar/timely/MonthViewFrame;->setPaintForDay(Landroid/graphics/Paint;IZ)V

    .line 525
    iget v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayJulianDay:I

    move/from16 v0, p11

    if-ne v0, v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 528
    iget-object v4, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    iget-object v5, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    .line 529
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->useRtl()Z

    move-result v5

    if-eqz v5, :cond_3

    int-to-float v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    sub-float v2, v5, v2

    .line 530
    :goto_1
    iget v5, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayNumberBottomPosition:I

    add-int v5, v5, p9

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float v4, v5, v4

    iget v5, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayCircleRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/calendar/timely/MonthViewFrame;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 534
    :cond_0
    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayNumberBottomPosition:I

    add-int v2, v2, p9

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 559
    iget-boolean v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDisplayOverlfowDots:Z

    if-eqz v1, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstDayOffset()I

    move-result v2

    .line 561
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumHiddenChips:[I

    iget v3, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    sub-int v3, p11, v3

    add-int/2addr v3, v2

    aget v1, v1, v3

    if-lez v1, :cond_1

    .line 563
    iget-boolean v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mIsTabletConfig:Z

    if-eqz v1, :cond_5

    .line 565
    iget-object v3, p0, Lcom/android/calendar/timely/MonthViewFrame;->mXMoreLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayJulianDay:I

    move/from16 v0, p11

    if-gt v1, v0, :cond_4

    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRobotoMedium:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 568
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/calendar/R$plurals;->invisible_events:I

    iget-object v4, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumHiddenChips:[I

    iget v5, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    sub-int v5, p11, v5

    add-int/2addr v5, v2

    aget v4, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumHiddenChips:[I

    iget v8, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    sub-int v8, p11, v8

    add-int/2addr v2, v8

    aget v2, v7, v2

    .line 570
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    .line 568
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayNumberStartMargin:I

    add-int v2, v2, p7

    int-to-float v2, v2

    iget v3, p0, Lcom/android/calendar/timely/MonthViewFrame;->mXMoreLabelOffsetY:I

    add-int v3, v3, p9

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/calendar/timely/MonthViewFrame;->mXMoreLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 585
    :cond_1
    return-void

    .line 522
    :cond_2
    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayNumberStartMargin:I

    add-int v1, v1, p7

    goto/16 :goto_0

    .line 529
    :cond_3
    int-to-float v5, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v2, v5

    goto :goto_1

    .line 566
    :cond_4
    sget-object v1, Lcom/android/calendar/timely/MonthViewFrame;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    goto :goto_2

    .line 575
    :cond_5
    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayNumberStartMargin:I

    add-int v1, v1, p7

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDotRadius:F

    add-float/2addr v2, v1

    .line 576
    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mOverflowOffsetY:I

    add-int v1, v1, p9

    int-to-float v3, v1

    .line 578
    const/4 v1, 0x0

    :goto_3
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    .line 579
    iget v4, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDotRadius:F

    iget-object v5, p0, Lcom/android/calendar/timely/MonthViewFrame;->mXMoreLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 580
    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDotRadius:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDotDistance:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 578
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method protected drawMonthDayLabels(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v2, 0x7

    .line 607
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mWidth:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getEdgePadding()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    int-to-float v5, v0

    .line 608
    const/4 v0, -0x1

    .line 609
    iget-boolean v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mHasToday:Z

    if-eqz v1, :cond_0

    .line 610
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayJulianDay:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstJulianDay()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->findDayOffset()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumDays:I

    rem-int/2addr v0, v1

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->useRtl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 614
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getInternalStartPadding()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v5

    iget v3, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayNumberStartMargin:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 616
    :goto_0
    const/4 v3, 0x0

    move v4, v1

    :goto_1
    if-ge v3, v2, :cond_6

    .line 618
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/MonthViewFrame;->getRtlCompatibleColumnIndex(I)I

    move-result v6

    .line 620
    if-ne v0, v6, :cond_1

    .line 621
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRobotoMedium:Landroid/graphics/Typeface;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 622
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayWeekdayLabelColor:I

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 626
    :cond_1
    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mWeekStart:I

    add-int/2addr v1, v6

    iget v7, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumDays:I

    rem-int/2addr v1, v7

    .line 627
    if-nez v1, :cond_2

    move v1, v2

    .line 632
    :cond_2
    iget-object v7, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v7, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 633
    iget-boolean v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mIsTabletConfig:Z

    if-eqz v1, :cond_5

    .line 634
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v7, 0x1

    .line 635
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    .line 634
    invoke-virtual {v1, v2, v7, v8}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 641
    :goto_2
    iget v7, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthHeaderBottomPosition:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 644
    if-ne v0, v6, :cond_3

    .line 645
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v6, Lcom/android/calendar/timely/MonthViewFrame;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 646
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayTextColor:I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 616
    :cond_3
    add-int/lit8 v1, v3, 0x1

    add-float v3, v4, v5

    move v4, v3

    move v3, v1

    goto :goto_1

    .line 615
    :cond_4
    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayNumberStartMargin:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getInternalStartPadding()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    goto :goto_0

    .line 637
    :cond_5
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDate:Ljava/util/Date;

    iget-object v7, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 638
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDate:Ljava/util/Date;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getShortDayOfWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 649
    :cond_6
    return-void
.end method

.method protected drawMonthTitle(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method protected drawWeekNum(Landroid/graphics/Canvas;IIIIII)V
    .locals 6

    .prologue
    .line 654
    add-int v0, p4, p6

    div-int/lit8 v0, v0, 0x2

    .line 655
    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDayNumberBottomPosition:I

    add-int/2addr v1, p5

    .line 656
    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/calendar/timely/MonthViewFrame;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 657
    return-void
.end method

.method public getCellPosition(III)Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 368
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    sub-int v0, p1, v0

    .line 369
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->findDayOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mWidth:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getEdgePadding()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumDays:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 372
    iget v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumDays:I

    rem-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/MonthViewFrame;->getRtlCompatibleColumnIndex(I)I

    move-result v2

    .line 373
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getInternalStartPadding()I

    move-result v3

    add-int/2addr v3, p3

    int-to-float v3, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    .line 374
    add-float/2addr v1, v2

    .line 375
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getMonthHeaderSize()I

    move-result v3

    add-int/2addr v3, p2

    iget v4, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumDays:I

    div-int/2addr v0, v4

    iget v4, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    mul-int/2addr v0, v4

    add-int/2addr v0, v3

    .line 376
    iget v3, p0, Lcom/android/calendar/timely/MonthViewFrame;->mRowHeight:I

    add-int/2addr v3, v0

    .line 378
    new-instance v4, Landroid/graphics/Rect;

    float-to-int v2, v2

    float-to-int v1, v1

    invoke-direct {v4, v2, v0, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public getEndJulianDay()I
    .locals 2

    .prologue
    .line 672
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumCells:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getEndVisibleJulianDay()I
    .locals 2

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstVisibleJulianDay()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumRows:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getFirstDayOffset()I
    .locals 1

    .prologue
    .line 680
    invoke-super {p0}, Lcom/android/datetimepicker/date/MonthView;->findDayOffset()I

    move-result v0

    return v0
.end method

.method public getFirstJulianDay()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    return v0
.end method

.method public getFirstVisibleJulianDay()I
    .locals 2

    .prologue
    .line 664
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->findDayOffset()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMaxNumChipsPerDay()I
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMaxNumChipsPerDay:I

    return v0
.end method

.method protected getMonthHeaderSize()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthHeaderHeight:I

    return v0
.end method

.method protected getMonthViewTouchHelper()Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;
    .locals 1

    .prologue
    .line 707
    new-instance v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;-><init>(Lcom/android/calendar/timely/MonthViewFrame;Landroid/view/View;)V

    return-object v0
.end method

.method public hasToday()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mHasToday:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/MonthViewFrame;->drawNeighborsMonths(Landroid/graphics/Canvas;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/MonthViewFrame;->drawLines(Landroid/graphics/Canvas;)V

    .line 287
    invoke-super {p0, p1}, Lcom/android/datetimepicker/date/MonthView;->onDraw(Landroid/graphics/Canvas;)V

    .line 288
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/datetimepicker/date/MonthView;->onSizeChanged(IIII)V

    .line 249
    invoke-direct {p0, p2}, Lcom/android/calendar/timely/MonthViewFrame;->computeRowHeight(I)V

    .line 250
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/calendar/timely/MonthViewFrame;->shouldDisplayOverflowDots(Landroid/view/Display;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mDisplayOverlfowDots:Z

    .line 251
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 343
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/datetimepicker/date/MonthView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 297
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTouchHelper:Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v1

    .line 300
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 301
    invoke-direct {p0, v1}, Lcom/android/calendar/timely/MonthViewFrame;->maybeGetChipById(I)Lcom/android/calendar/timely/TimelyChip;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->launchDetails()Z

    goto :goto_1

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 318
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getMonthHeaderSize()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getInternalStartPadding()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getInternalEndPadding()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/timely/MonthViewFrame;->getInternalDayFromLocation(FF)I

    move-result v1

    .line 325
    if-lt v1, v0, :cond_2

    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumCells:I

    if-le v1, v0, :cond_0

    .line 326
    :cond_2
    iget-boolean v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mSelectorHasRipples:Z

    if-eqz v0, :cond_3

    .line 328
    new-instance v0, Lcom/android/calendar/timely/MonthViewFrame$1;

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/timely/MonthViewFrame$1;-><init>(Lcom/android/calendar/timely/MonthViewFrame;I)V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mActiveLaunchDayRunnable:Ljava/lang/Runnable;

    .line 335
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mActiveLaunchDayRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/calendar/timely/MonthViewFrame;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 337
    :cond_3
    add-int/lit8 v0, v1, -0x1

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/MonthViewFrame;->onNeighborDayClick(I)V

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public requestInitialAccessibilityFocus()V
    .locals 4

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->hasToday()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayJulianDay:I

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 720
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 722
    return-void

    .line 719
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetNumHiddenChips()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 700
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumHiddenChips:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 701
    iget-object v2, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumHiddenChips:[I

    aput v1, v2, v0

    .line 700
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    :cond_0
    return-void
.end method

.method public setMonthParams(Ljava/util/HashMap;)V
    .locals 2
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
    .line 216
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getBooleanProperty(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 218
    const-string v1, "show_wk_num"

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v0, "week_start"

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-super {p0, p1}, Lcom/android/datetimepicker/date/MonthView;->setMonthParams(Ljava/util/HashMap;)V

    .line 225
    iget-boolean v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mIsTabletConfig:Z

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumRows:I

    .line 229
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonth:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mYear:I

    add-int/lit8 v0, v0, -0x1

    .line 230
    :goto_1
    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonth:I

    if-nez v1, :cond_3

    const/16 v1, 0xb

    .line 231
    :goto_2
    invoke-static {v1, v0}, Lcom/android/datetimepicker/Utils;->getDaysInMonth(II)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mPrevMonthNumsDays:I

    .line 232
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonth:I

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mYear:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getJulianFirstDayFromMonth(II)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    .line 234
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumRows:I

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumDays:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumHiddenChips:[I

    .line 235
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getTodayJulianDay(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mTodayJulianDay:I

    .line 237
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/MonthViewFrame;->computeRowHeight(I)V

    .line 243
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 229
    :cond_2
    iget v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mYear:I

    goto :goto_1

    .line 230
    :cond_3
    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonth:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public setNumHiddenChips(II)V
    .locals 3

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame;->mNumHiddenChips:[I

    iget v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mFirstJulianDay:I

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstDayOffset()I

    move-result v2

    add-int/2addr v1, v2

    aput p2, v0, v1

    .line 697
    return-void
.end method

.method public setOwner(Lcom/android/calendar/timely/CalendarMonthView;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;

    .line 712
    return-void
.end method

.method public setRtlEnabled(Z)V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/android/datetimepicker/date/MonthView;->setRtlEnabled(Z)V

    .line 202
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->useRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 203
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthViewFrame;->useRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 204
    return-void

    .line 202
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 203
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_1
.end method
