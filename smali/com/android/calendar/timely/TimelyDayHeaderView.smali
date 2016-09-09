.class public Lcom/android/calendar/timely/TimelyDayHeaderView;
.super Landroid/view/View;
.source "TimelyDayHeaderView.java"

# interfaces
.implements Lcom/android/calendar/timely/TimelineRecyclerView$HeaderViewDescriptor;


# static fields
.field private static final ROBOTO_REGULAR:Landroid/graphics/Typeface;


# instance fields
.field private final MONTH:Ljava/text/SimpleDateFormat;

.field private final WEEKDAY:Ljava/text/SimpleDateFormat;

.field private final mAgendaViewText:Ljava/lang/String;

.field private mAnnounceableDescription:Ljava/lang/CharSequence;

.field private mCurrentTime:Lcom/android/calendar/time/Time;

.field private mDateInfo:[I

.field private final mDayHeaderHeight:I

.field private final mDayHeaderWidth:I

.field private mDayOfMonthString:Ljava/lang/String;

.field private mDayOfMonthTextSize:I

.field private mDayOfMonthYPos:I

.field private mDayOfWeek:I

.field private mDayOfWeekString:Ljava/lang/String;

.field private mDayOfWeekTextSize:I

.field private mDayOfWeekYPos:I

.field private final mDefaultMargin:I

.field private mDisplayedTime:Lcom/android/calendar/time/Time;

.field private final mFutureTextColor:I

.field private final mHourViewText:Ljava/lang/String;

.field private mIsFirstDayOfMonth:Z

.field private mIsFirstDayOfWeek:Z

.field private mIsInAgendaView:Z

.field private mIsPast:Z

.field private final mIsRtl:Z

.field private final mIsTabletConfig:Z

.field private mIsToday:Z

.field private mMonthHeaderSize:I

.field private mMonthString:Ljava/lang/String;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPastTextColor:I

.field private mPosition:I

.field private mRecycleCalendar:Ljava/util/Calendar;

.field private final mRobotoMedium:Landroid/graphics/Typeface;

.field private mShouldDrawMonthText:Z

.field private mShowMonthHeaderImages:Z

.field private final mStartPadding:I

.field private final mTodayTextColor:I

.field private final mWeekHeaderPadding:I

.field private final mWeekHeaderSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/TimelyDayHeaderView;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E"

    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->WEEKDAY:Ljava/text/SimpleDateFormat;

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM"

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->MONTH:Ljava/text/SimpleDateFormat;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    .line 64
    iput-boolean v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsPast:Z

    .line 65
    iput-boolean v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsToday:Z

    .line 66
    iput-boolean v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mShouldDrawMonthText:Z

    .line 101
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mCurrentTime:Lcom/android/calendar/time/Time;

    .line 102
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    .line 108
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRobotoMedium:Landroid/graphics/Typeface;

    .line 110
    invoke-static {p1}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsRtl:Z

    .line 111
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsTabletConfig:Z

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    .line 116
    invoke-static {p1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 118
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->WEEKDAY:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 119
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->MONTH:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 120
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mCurrentTime:Lcom/android/calendar/time/Time;

    iput-object v0, v1, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    iput-object v0, v1, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 125
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 126
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 129
    sget v0, Lcom/android/calendar/R$color;->timeline_past_day_header:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPastTextColor:I

    .line 130
    sget v0, Lcom/android/calendar/R$color;->timeline_future_day_header:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mFutureTextColor:I

    .line 131
    sget v0, Lcom/android/calendar/R$color;->google_blue:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mTodayTextColor:I

    .line 133
    sget v0, Lcom/android/calendar/R$string;->accessibility_show_day_view:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mHourViewText:Ljava/lang/String;

    .line 134
    sget v0, Lcom/android/calendar/R$string;->accessibility_show_agenda_view:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mAgendaViewText:Ljava/lang/String;

    .line 136
    sget v0, Lcom/android/calendar/R$dimen;->timely_day_header_width:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayHeaderWidth:I

    .line 137
    sget v0, Lcom/android/calendar/R$dimen;->timely_day_header_height:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayHeaderHeight:I

    .line 138
    sget v0, Lcom/android/calendar/R$dimen;->timely_day_header_left_padding:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mStartPadding:I

    .line 140
    sget v0, Lcom/android/calendar/R$dimen;->timely_day_of_week_text_size:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfWeekTextSize:I

    .line 141
    sget v0, Lcom/android/calendar/R$dimen;->timely_day_of_month_text_size:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfMonthTextSize:I

    .line 143
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsRtl:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 144
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/calendar/timely/TimelyDayHeaderView;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 147
    sget v0, Lcom/android/calendar/R$dimen;->timely_day_header_spacing:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 148
    iget v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfMonthTextSize:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfWeekTextSize:I

    add-int/2addr v2, v3

    .line 149
    iget v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayHeaderHeight:I

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    .line 150
    iget v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfMonthTextSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfMonthYPos:I

    .line 151
    iget v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfMonthYPos:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfWeekTextSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfWeekYPos:I

    .line 153
    sget v0, Lcom/android/calendar/R$bool;->show_timeline_month_header_images:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mShowMonthHeaderImages:Z

    .line 154
    sget v0, Lcom/android/calendar/R$dimen;->timeline_week_header_height:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mWeekHeaderSize:I

    .line 155
    sget v0, Lcom/android/calendar/R$dimen;->timeline_week_header_padding:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mWeekHeaderPadding:I

    .line 156
    sget v0, Lcom/android/calendar/R$dimen;->day_view_default_margin:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDefaultMargin:I

    .line 157
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mShowMonthHeaderImages:Z

    if-eqz v0, :cond_1

    .line 158
    sget v0, Lcom/android/calendar/R$dimen;->timeline_month_header_height:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDefaultMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mMonthHeaderSize:I

    .line 165
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setFocusable(Z)V

    .line 166
    return-void

    .line 143
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 161
    :cond_1
    sget v0, Lcom/android/calendar/R$dimen;->timeline_month_header_height_no_image:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mMonthHeaderSize:I

    goto :goto_1
.end method

.method private getTextX(Landroid/graphics/Canvas;)I
    .locals 2

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mStartPadding:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mStartPadding:I

    goto :goto_0
.end method


# virtual methods
.method public getAnnounceableDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mAnnounceableDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonthHeaderOffset()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mMonthHeaderSize:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPosition:I

    return v0
.end method

.method public getTime()Lcom/android/calendar/time/Time;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 384
    return-object p0
.end method

.method public getWeekHeaderOffset()I
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mShowMonthHeaderImages:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->isFirstDayOfMonth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mWeekHeaderPadding:I

    .line 187
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mWeekHeaderSize:I

    goto :goto_0
.end method

.method public initializeText()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfWeekTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 230
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfMonthTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 232
    const-string v1, "createDateStrings"

    invoke-static {v1}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDateInfo:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfMonthString:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->MONTH:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mMonthString:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->WEEKDAY:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfWeekString:Ljava/lang/String;

    .line 252
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 254
    const-string v1, "setOffset"

    invoke-static {v1}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 256
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsFirstDayOfMonth:Z

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getMonthHeaderOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 259
    :cond_0
    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsFirstDayOfWeek:Z

    if-eqz v1, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getWeekHeaderOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 262
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setTag(Ljava/lang/Object;)V

    .line 263
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 265
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->invalidate()V

    .line 266
    return-void
.end method

.method public isFirstDayOfMonth()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsFirstDayOfMonth:Z

    return v0
.end method

.method public isFirstDayOfWeek()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsFirstDayOfWeek:Z

    return v0
.end method

.method public isToday()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsToday:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 324
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayHeaderWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayHeaderHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 326
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getTextX(Landroid/graphics/Canvas;)I

    move-result v1

    .line 329
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsToday:Z

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mTodayTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfMonthTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 339
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfMonthString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfMonthString:Ljava/lang/String;

    int-to-float v2, v1

    iget v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfMonthYPos:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfWeekTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 345
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsToday:Z

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRobotoMedium:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 348
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mShouldDrawMonthText:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mMonthString:Ljava/lang/String;

    .line 349
    :goto_1
    if-eqz v0, :cond_2

    .line 350
    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfWeekYPos:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 352
    :cond_2
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsToday:Z

    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/calendar/timely/TimelyDayHeaderView;->ROBOTO_REGULAR:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 355
    :cond_3
    return-void

    .line 331
    :cond_4
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsPast:Z

    if-eqz v0, :cond_5

    .line 332
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPastTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 334
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mFutureTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 348
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfWeekString:Ljava/lang/String;

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->updateContentDescription()V

    .line 273
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 274
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayHeaderWidth:I

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayHeaderHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setMeasuredDimension(II)V

    .line 360
    return-void
.end method

.method public setDateInfo([IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 195
    const-string v0, "setDateInfo"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDateInfo:[I

    .line 198
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDateInfo:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDateInfo:[I

    aget v0, v0, v3

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsFirstDayOfMonth:Z

    .line 200
    iput-boolean p2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsInAgendaView:Z

    .line 201
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    aget v2, p1, v2

    aget v1, p1, v1

    aget v3, p1, v3

    invoke-virtual {v0, v2, v1, v3}, Ljava/util/Calendar;->set(III)V

    .line 202
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 203
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->updateCurrentTime()V

    .line 205
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfWeek:I

    .line 206
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->updateFirstDayOfWeek()V

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 212
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 213
    return-void

    :cond_0
    move v0, v2

    .line 198
    goto :goto_0
.end method

.method public setPosition(I)V
    .locals 0

    .prologue
    .line 371
    iput p1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mPosition:I

    .line 372
    return-void
.end method

.method public setShouldDrawMonthText(Z)V
    .locals 0

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mShouldDrawMonthText:Z

    .line 380
    return-void
.end method

.method public setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/calendar/timely/TimelineInfo;->shouldDrawMonthHeader(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mShowMonthHeaderImages:Z

    .line 217
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mShowMonthHeaderImages:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->timeline_month_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDefaultMargin:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mMonthHeaderSize:I

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->timeline_month_header_height_no_image:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mMonthHeaderSize:I

    goto :goto_0
.end method

.method public updateContentDescription()V
    .locals 4

    .prologue
    .line 277
    const-string v0, "setContentDescription"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    const-string v0, "EEEE dd MMMM yyyy"

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    .line 280
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 279
    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mAnnounceableDescription:Ljava/lang/CharSequence;

    .line 282
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsTabletConfig:Z

    if-nez v0, :cond_0

    .line 284
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsInAgendaView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mHourViewText:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 288
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 289
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mAgendaViewText:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateCurrentTime()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mCurrentTime:Lcom/android/calendar/time/Time;

    iput-object v0, v3, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 294
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    iput-object v0, v3, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 295
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mRecycleCalendar:Ljava/util/Calendar;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 297
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mCurrentTime:Lcom/android/calendar/time/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/calendar/time/Time;->set(J)V

    .line 298
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mCurrentTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->year:I

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->year:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mCurrentTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->month:I

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->month:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mCurrentTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->monthDay:I

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->monthDay:I

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsToday:Z

    .line 301
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mCurrentTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->year:I

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->year:I

    if-gt v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mCurrentTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->year:I

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->year:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mCurrentTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->month:I

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->month:I

    if-gt v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mCurrentTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->year:I

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->year:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mCurrentTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->month:I

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->month:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mCurrentTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->monthDay:I

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDisplayedTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->monthDay:I

    if-le v0, v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsPast:Z

    .line 307
    return-void

    :cond_3
    move v0, v2

    .line 298
    goto :goto_0
.end method

.method public updateFirstDayOfWeek()V
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mDayOfWeek:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayHeaderView;->mIsFirstDayOfWeek:Z

    .line 311
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
