.class public abstract Lcom/android/datetimepicker/date/MonthView;
.super Landroid/view/View;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;,
        Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;
    }
.end annotation


# instance fields
.field protected DAY_SELECTED_CIRCLE_SIZE:I

.field protected MINI_DAY_NUMBER_TEXT_SIZE:I

.field protected MONTH_DAY_LABEL_TEXT_SIZE:I

.field protected MONTH_HEADER_SIZE:I

.field protected MONTH_LABEL_TEXT_SIZE:I

.field protected mActiveLaunchDayRunnable:Ljava/lang/Runnable;

.field private final mCalendar:Ljava/util/Calendar;

.field protected mController:Lcom/android/datetimepicker/date/DatePickerController;

.field protected final mDayLabelCalendar:Ljava/util/Calendar;

.field private mDayOfWeekStart:I

.field private mDayOfWeekTypeface:Ljava/lang/String;

.field protected mDayTextColor:I

.field protected mDisabledDayTextColor:I

.field protected mEdgePadding:I

.field protected mFirstJulianDay:I

.field protected mFirstMonth:I

.field private final mFormatter:Ljava/util/Formatter;

.field protected mHasToday:Z

.field private mIsRtl:Z

.field protected mLastMonth:I

.field private mLockAccessibilityDelegate:Z

.field protected mMonth:I

.field protected mMonthDayLabelPaint:Landroid/graphics/Paint;

.field protected mMonthNumPaint:Landroid/graphics/Paint;

.field protected mMonthTitleBGColor:I

.field protected mMonthTitleBGPaint:Landroid/graphics/Paint;

.field protected mMonthTitleColor:I

.field protected mMonthTitlePaint:Landroid/graphics/Paint;

.field private mMonthTitleTypeface:Ljava/lang/String;

.field protected mNumCells:I

.field protected mNumDays:I

.field protected mNumRows:I

.field protected mOnDayClickListener:Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;

.field protected mRowHeight:I

.field private mRtlEnabled:Z

.field protected mSelectedCirclePaint:Landroid/graphics/Paint;

.field protected mSelectedDay:I

.field protected mSelectedLeft:I

.field protected mSelectedRight:I

.field protected mSelector:Landroid/graphics/drawable/Drawable;

.field protected mSelectorHasRipples:Z

.field protected final mSelectorRect:Landroid/graphics/Rect;

.field protected mShowWeekNumbers:Z

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private mTimezone:Ljava/lang/String;

.field protected mToday:I

.field protected mTodayNumberColor:I

.field protected final mTouchHelper:Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;

.field protected mWeekNumPaint:Landroid/graphics/Paint;

.field protected mWeekNumsColWidth:I

.field protected mWeekNumsPadding:I

.field protected mWeekStart:I

.field protected mWidth:I

.field protected mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/datetimepicker/date/MonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    iput v2, p0, Lcom/android/datetimepicker/date/MonthView;->mEdgePadding:I

    .line 136
    iput v2, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekNumsPadding:I

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorRect:Landroid/graphics/Rect;

    .line 161
    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->mFirstJulianDay:I

    .line 163
    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->mFirstMonth:I

    .line 165
    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->mLastMonth:I

    .line 175
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    .line 177
    iput-boolean v2, p0, Lcom/android/datetimepicker/date/MonthView;->mHasToday:Z

    .line 179
    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectedDay:I

    .line 181
    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->mToday:I

    .line 183
    iput v4, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekStart:I

    .line 185
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    .line 187
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mNumCells:I

    .line 189
    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectedLeft:I

    .line 191
    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectedRight:I

    .line 202
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mNumRows:I

    .line 222
    iput-boolean v2, p0, Lcom/android/datetimepicker/date/MonthView;->mRtlEnabled:Z

    .line 507
    iput v2, p0, Lcom/android/datetimepicker/date/MonthView;->mDayOfWeekStart:I

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 233
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/date/MonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    .line 234
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    .line 236
    sget v1, Lcom/android/datetimepicker/R$string;->day_of_week_label_typeface:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/date/MonthView;->mDayOfWeekTypeface:Ljava/lang/String;

    .line 237
    sget v1, Lcom/android/datetimepicker/R$string;->sans_serif:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitleTypeface:Ljava/lang/String;

    .line 239
    sget v1, Lcom/android/datetimepicker/R$color;->date_picker_text_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->mDayTextColor:I

    .line 240
    sget v1, Lcom/android/datetimepicker/R$color;->blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->mTodayNumberColor:I

    .line 241
    sget v1, Lcom/android/datetimepicker/R$color;->date_picker_text_disabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->mDisabledDayTextColor:I

    .line 242
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitleColor:I

    .line 243
    sget v1, Lcom/android/datetimepicker/R$color;->circle_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitleBGColor:I

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/android/datetimepicker/date/MonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 246
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/datetimepicker/date/MonthView;->mFormatter:Ljava/util/Formatter;

    .line 248
    sget v1, Lcom/android/datetimepicker/R$dimen;->day_number_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    .line 249
    sget v1, Lcom/android/datetimepicker/R$dimen;->month_label_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->MONTH_LABEL_TEXT_SIZE:I

    .line 250
    sget v1, Lcom/android/datetimepicker/R$dimen;->month_day_label_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    .line 251
    sget v1, Lcom/android/datetimepicker/R$dimen;->month_list_item_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->MONTH_HEADER_SIZE:I

    .line 252
    sget v1, Lcom/android/datetimepicker/R$dimen;->day_number_select_circle_radius:I

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->DAY_SELECTED_CIRCLE_SIZE:I

    .line 255
    sget v1, Lcom/android/datetimepicker/R$dimen;->date_picker_week_number_column_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekNumsColWidth:I

    .line 256
    sget v1, Lcom/android/datetimepicker/R$dimen;->date_picker_view_animator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 257
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    .line 260
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getMonthViewTouchHelper()Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mTouchHelper:Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;

    .line 261
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mTouchHelper:Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 262
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 263
    iput-boolean v4, p0, Lcom/android/datetimepicker/date/MonthView;->mLockAccessibilityDelegate:Z

    .line 265
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/datetimepicker/date/MonthView;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/datetimepicker/date/MonthView;->mIsRtl:Z

    .line 268
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->initView()V

    .line 269
    return-void
.end method

.method static synthetic access$000(Lcom/android/datetimepicker/date/MonthView;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/date/MonthView;->onDayClick(I)V

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 990
    :cond_0
    return-void
.end method

.method private getMonthAndYearString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 641
    const/16 v6, 0x34

    .line 643
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 644
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 645
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthView;->mFormatter:Ljava/util/Formatter;

    .line 646
    invoke-direct {p0}, Lcom/android/datetimepicker/date/MonthView;->getTimezone()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    .line 645
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 646
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    return-object v0
.end method

.method private getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mTimezone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mTimezone:Ljava/lang/String;

    goto :goto_0
.end method

.method private isAfterMax(III)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 936
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    if-nez v2, :cond_1

    .line 961
    :cond_0
    :goto_0
    return v0

    .line 941
    :cond_1
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v2}, Lcom/android/datetimepicker/date/DatePickerController;->getMaxDate()Ljava/util/Calendar;

    move-result-object v2

    .line 942
    if-eqz v2, :cond_0

    .line 946
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-le p1, v3, :cond_2

    move v0, v1

    .line 947
    goto :goto_0

    .line 948
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 952
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-le p2, v3, :cond_3

    move v0, v1

    .line 953
    goto :goto_0

    .line 954
    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 958
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le p3, v2, :cond_0

    move v0, v1

    .line 959
    goto :goto_0
.end method

.method private isBeforeMin(III)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 906
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    if-nez v2, :cond_1

    .line 931
    :cond_0
    :goto_0
    return v0

    .line 909
    :cond_1
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v2}, Lcom/android/datetimepicker/date/DatePickerController;->getMinDate()Ljava/util/Calendar;

    move-result-object v2

    .line 910
    if-eqz v2, :cond_0

    .line 916
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge p1, v3, :cond_2

    move v0, v1

    .line 917
    goto :goto_0

    .line 918
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 922
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge p2, v3, :cond_3

    move v0, v1

    .line 923
    goto :goto_0

    .line 924
    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-gt p2, v3, :cond_0

    .line 928
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge p3, v2, :cond_0

    move v0, v1

    .line 929
    goto :goto_0
.end method

.method private static isLayoutDirectionRtl(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 273
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_0

    .line 277
    :goto_0
    return v1

    .line 276
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private onDayClick(I)V
    .locals 4

    .prologue
    .line 877
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mYear:I

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mMonth:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/datetimepicker/date/MonthView;->isOutOfRange(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    :goto_0
    return-void

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mOnDayClickListener:Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mOnDayClickListener:Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;

    new-instance v1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->mYear:I

    iget v3, p0, Lcom/android/datetimepicker/date/MonthView;->mMonth:I

    invoke-direct {v1, v2, v3, p1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;-><init>(III)V

    invoke-interface {v0, p0, v1}, Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;->onDayClick(Lcom/android/datetimepicker/date/MonthView;Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mTouchHelper:Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    goto :goto_0
.end method

.method private sameDay(ILandroid/text/format/Time;)Z
    .locals 2

    .prologue
    .line 606
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mYear:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonth:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/text/format/Time;->monthDay:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSelectorState()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 994
    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 996
    :cond_0
    return-void

    .line 994
    :cond_1
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getDrawableState()[I

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected calculateNumRows()I
    .locals 3

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->findDayOffset()I

    move-result v0

    .line 600
    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mNumCells:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    div-int/2addr v1, v2

    .line 601
    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->mNumCells:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    rem-int/2addr v0, v2

    .line 602
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAccessibilityFocus()V
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mTouchHelper:Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->clearFocusedVirtualView()V

    .line 1033
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mTouchHelper:Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract drawMonthDay(Landroid/graphics/Canvas;IIIIIIIII)V
.end method

.method protected drawMonthDayLabels(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x7

    .line 656
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v0

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 657
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mWidth:I

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getEdgePadding()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    mul-int/lit8 v2, v2, 0x2

    div-int v2, v0, v2

    .line 659
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    if-ge v0, v3, :cond_0

    .line 660
    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/MonthView;->getRtlCompatibleColumnIndex(I)I

    move-result v3

    .line 661
    iget v4, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekStart:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    rem-int/2addr v3, v4

    .line 662
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getInternalStartPadding()I

    move-result v5

    add-int/2addr v4, v5

    .line 663
    iget-object v5, p0, Lcom/android/datetimepicker/date/MonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 664
    iget-object v3, p0, Lcom/android/datetimepicker/date/MonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    .line 665
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 664
    invoke-virtual {v3, v7, v5, v6}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 665
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    .line 664
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_0
    return-void
.end method

.method protected drawMonthNums(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    .line 731
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 732
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v1

    add-int v6, v0, v1

    .line 733
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mWidth:I

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getEdgePadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float v12, v0, v1

    .line 734
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->findDayOffset()I

    move-result v0

    .line 735
    const/4 v4, 0x1

    move v11, v0

    :goto_0
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mNumCells:I

    if-gt v4, v0, :cond_1

    .line 736
    invoke-virtual {p0, v11}, Lcom/android/datetimepicker/date/MonthView;->getRtlCompatibleColumnIndex(I)I

    move-result v0

    .line 737
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v12

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getInternalStartPadding()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v5, v0

    .line 739
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 741
    int-to-float v1, v5

    sub-float/2addr v1, v12

    float-to-int v7, v1

    .line 742
    int-to-float v1, v5

    add-float/2addr v1, v12

    float-to-int v8, v1

    .line 743
    sub-int v9, v6, v0

    .line 744
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    add-int v10, v9, v0

    .line 746
    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->mYear:I

    iget v3, p0, Lcom/android/datetimepicker/date/MonthView;->mMonth:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/datetimepicker/date/MonthView;->drawMonthDay(Landroid/graphics/Canvas;IIIIIIIII)V

    .line 748
    add-int/lit8 v0, v11, 0x1

    .line 749
    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    if-ne v0, v1, :cond_0

    .line 750
    const/4 v0, 0x0

    .line 751
    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    add-int/2addr v6, v1

    .line 735
    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v11, v0

    goto :goto_0

    .line 754
    :cond_1
    return-void
.end method

.method protected drawMonthTitle(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 650
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mWidth:I

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getEdgePadding()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 651
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v1

    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->MONTH_LABEL_TEXT_SIZE:I

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 652
    invoke-direct {p0}, Lcom/android/datetimepicker/date/MonthView;->getMonthAndYearString()Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 653
    return-void
.end method

.method protected drawWeekNum(Landroid/graphics/Canvas;IIIIII)V
    .locals 4

    .prologue
    .line 719
    sub-int v0, p6, p4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    .line 720
    add-int v1, p5, p7

    div-int/lit8 v1, v1, 0x2

    .line 721
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 722
    return-void
.end method

.method protected drawWeekNums(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    .line 676
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 677
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v1

    add-int/2addr v1, v0

    .line 678
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v9, v0, -0x1

    .line 680
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekNumsColWidth:I

    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekNumsPadding:I

    add-int/2addr v0, v2

    .line 681
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->useRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 682
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/datetimepicker/date/MonthView;->mEdgePadding:I

    sub-int/2addr v2, v3

    sub-int v4, v2, v0

    .line 684
    :goto_0
    add-int v6, v4, v0

    .line 686
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mFirstJulianDay:I

    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekStart:I

    .line 687
    invoke-static {v2}, Lcom/android/datetimepicker/Utils;->convertDayOfWeekFromCalendarToTime(I)I

    move-result v2

    .line 686
    invoke-static {v0, v2}, Lcom/android/datetimepicker/Utils;->getWeekNumberInYear(II)I

    move-result v0

    .line 688
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/android/datetimepicker/date/MonthView;->mNumRows:I

    if-ge v2, v3, :cond_3

    .line 691
    iget v3, p0, Lcom/android/datetimepicker/date/MonthView;->mMonth:I

    const/16 v5, 0xb

    if-ne v3, v5, :cond_0

    iget v3, p0, Lcom/android/datetimepicker/date/MonthView;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/android/datetimepicker/date/MonthView;->mMonth:I

    if-nez v3, :cond_4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 693
    :cond_1
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mFirstJulianDay:I

    mul-int/lit8 v3, v2, 0x7

    add-int/2addr v0, v3

    iget v3, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekStart:I

    .line 694
    invoke-static {v3}, Lcom/android/datetimepicker/Utils;->convertDayOfWeekFromCalendarToTime(I)I

    move-result v3

    .line 693
    invoke-static {v0, v3}, Lcom/android/datetimepicker/Utils;->getWeekNumberInYear(II)I

    move-result v0

    move v3, v0

    .line 697
    :goto_2
    sub-int v5, v1, v9

    .line 698
    add-int v7, v1, v9

    .line 699
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    add-int v8, v1, v0

    move-object v0, p0

    move-object v1, p1

    .line 701
    invoke-virtual/range {v0 .. v7}, Lcom/android/datetimepicker/date/MonthView;->drawWeekNum(Landroid/graphics/Canvas;IIIIII)V

    .line 702
    add-int/lit8 v0, v3, 0x1

    .line 688
    add-int/lit8 v2, v2, 0x1

    move v1, v8

    goto :goto_1

    .line 683
    :cond_2
    iget v4, p0, Lcom/android/datetimepicker/date/MonthView;->mEdgePadding:I

    goto :goto_0

    .line 704
    :cond_3
    return-void

    :cond_4
    move v3, v0

    goto :goto_2
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 1000
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1001
    invoke-direct {p0}, Lcom/android/datetimepicker/date/MonthView;->updateSelectorState()V

    .line 1002
    return-void
.end method

.method protected findDayOffset()I
    .locals 2

    .prologue
    .line 774
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekStart:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mDayOfWeekStart:I

    goto :goto_0
.end method

.method public getAccessibilityFocus()Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;
    .locals 4

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mTouchHelper:Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v1

    .line 1021
    if-ltz v1, :cond_0

    .line 1022
    new-instance v0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->mYear:I

    iget v3, p0, Lcom/android/datetimepicker/date/MonthView;->mMonth:I

    invoke-direct {v0, v2, v3, v1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;-><init>(III)V

    .line 1024
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDayFromLocation(FF)I
    .locals 2

    .prologue
    .line 837
    invoke-virtual {p0, p1, p2}, Lcom/android/datetimepicker/date/MonthView;->getInternalDayFromLocation(FF)I

    move-result v0

    .line 838
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mNumCells:I

    if-le v0, v1, :cond_1

    .line 839
    :cond_0
    const/4 v0, -0x1

    .line 841
    :cond_1
    return v0
.end method

.method protected getEdgePadding()I
    .locals 2

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getInternalStartPadding()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getInternalEndPadding()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getInteralWeekNumberPadding()I
    .locals 2

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/android/datetimepicker/date/MonthView;->mShowWeekNumbers:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekNumsColWidth:I

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekNumsPadding:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getInternalDayFromLocation(FF)I
    .locals 4

    .prologue
    .line 852
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getInternalStartPadding()I

    move-result v0

    .line 853
    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mWidth:I

    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getInternalEndPadding()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 854
    :cond_0
    const/4 v0, -0x1

    .line 864
    :goto_0
    return v0

    .line 857
    :cond_1
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    div-int/2addr v1, v2

    .line 858
    int-to-float v2, v0

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/datetimepicker/date/MonthView;->mWidth:I

    sub-int v0, v3, v0

    .line 859
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getInternalEndPadding()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-int v0, v0

    .line 860
    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/MonthView;->getRtlCompatibleColumnIndex(I)I

    move-result v0

    .line 862
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->findDayOffset()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 863
    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 864
    goto :goto_0
.end method

.method protected getInternalEndPadding()I
    .locals 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getInteralWeekNumberPadding()I

    move-result v0

    .line 798
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->useRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mEdgePadding:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mEdgePadding:I

    goto :goto_0
.end method

.method protected getInternalStartPadding()I
    .locals 2

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getInteralWeekNumberPadding()I

    move-result v0

    .line 790
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->useRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mEdgePadding:I

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mEdgePadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonth:I

    return v0
.end method

.method protected getMonthHeaderSize()I
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->MONTH_HEADER_SIZE:I

    return v0
.end method

.method protected getMonthViewTouchHelper()Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;
    .locals 1

    .prologue
    .line 320
    new-instance v0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;-><init>(Lcom/android/datetimepicker/date/MonthView;Landroid/view/View;)V

    return-object v0
.end method

.method protected getRtlCompatibleColumnIndex(I)I
    .locals 5

    .prologue
    .line 821
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    if-lt p1, v0, :cond_1

    .line 822
    :cond_0
    const-string v0, "MonthView"

    const-string v1, "Unexpected column index %d. Expected index in range of 0 <= x < %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 823
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    .line 824
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 822
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_1
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->useRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_2
    return p1
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mYear:I

    return v0
.end method

.method protected initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 449
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    .line 450
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->MONTH_LABEL_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 453
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitleTypeface:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 454
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mDayTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 456
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 458
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    .line 459
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitleBGColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 462
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 463
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthTitleBGPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 465
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    .line 466
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mTodayNumberColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 470
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 471
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectedCirclePaint:Landroid/graphics/Paint;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 473
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    .line 474
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 475
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->MONTH_DAY_LABEL_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 476
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mDayTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 477
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthView;->mDayOfWeekTypeface:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 478
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 479
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 480
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 482
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 483
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 485
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 486
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 487
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 489
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekNumPaint:Landroid/graphics/Paint;

    .line 490
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 491
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 492
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 493
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 494
    return-void
.end method

.method protected isOutOfRange(III)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 896
    invoke-direct {p0, p1, p2, p3}, Lcom/android/datetimepicker/date/MonthView;->isBeforeMin(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 902
    :cond_0
    :goto_0
    return v0

    .line 898
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/datetimepicker/date/MonthView;->isAfterMax(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 902
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1006
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1007
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1008
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mActiveLaunchDayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthView;->mActiveLaunchDayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mActiveLaunchDayRunnable:Ljava/lang/Runnable;

    .line 441
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 442
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/date/MonthView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/datetimepicker/date/MonthView;->drawMonthTitle(Landroid/graphics/Canvas;)V

    .line 500
    invoke-virtual {p0, p1}, Lcom/android/datetimepicker/date/MonthView;->drawMonthDayLabels(Landroid/graphics/Canvas;)V

    .line 501
    invoke-virtual {p0, p1}, Lcom/android/datetimepicker/date/MonthView;->drawMonthNums(Landroid/graphics/Canvas;)V

    .line 502
    iget-boolean v0, p0, Lcom/android/datetimepicker/date/MonthView;->mShowWeekNumbers:Z

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0, p1}, Lcom/android/datetimepicker/date/MonthView;->drawWeekNums(Landroid/graphics/Canvas;)V

    .line 505
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 613
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    iget v2, p0, Lcom/android/datetimepicker/date/MonthView;->mNumRows:I

    mul-int/2addr v1, v2

    .line 614
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v2

    add-int/2addr v1, v2

    .line 613
    invoke-virtual {p0, v0, v1}, Lcom/android/datetimepicker/date/MonthView;->setMeasuredDimension(II)V

    .line 615
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 619
    iput p1, p0, Lcom/android/datetimepicker/date/MonthView;->mWidth:I

    .line 622
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mTouchHelper:Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 623
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 432
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 356
    :pswitch_0
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorRect:Landroid/graphics/Rect;

    .line 357
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 359
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getInternalEndPadding()I

    move-result v3

    .line 360
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getInternalStartPadding()I

    move-result v4

    .line 361
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v5

    .line 364
    int-to-float v6, v4

    cmpg-float v6, v0, v6

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/android/datetimepicker/date/MonthView;->mWidth:I

    sub-int/2addr v6, v3

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-gtz v6, :cond_0

    int-to-float v6, v5

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_0

    .line 369
    iget v6, p0, Lcom/android/datetimepicker/date/MonthView;->mWidth:I

    sub-int/2addr v6, v4

    sub-int v3, v6, v3

    int-to-float v3, v3

    iget v6, p0, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    div-float/2addr v3, v6

    .line 370
    int-to-float v6, v4

    int-to-float v4, v4

    sub-float v4, v0, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v4, v6

    float-to-int v4, v4

    .line 372
    int-to-float v6, v5

    sub-float v6, v1, v6

    iget v7, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 375
    int-to-float v6, v4

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget v6, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    add-int/2addr v6, v5

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 378
    iget-object v3, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 379
    iget-object v3, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 380
    invoke-direct {p0}, Lcom/android/datetimepicker/date/MonthView;->updateSelectorState()V

    .line 381
    iget-boolean v2, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorHasRipples:Z

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorRect:Landroid/graphics/Rect;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 392
    invoke-direct {p0}, Lcom/android/datetimepicker/date/MonthView;->updateSelectorState()V

    goto/16 :goto_0

    .line 397
    :cond_1
    iget-boolean v2, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorHasRipples:Z

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    goto/16 :goto_0

    .line 402
    :pswitch_2
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorRect:Landroid/graphics/Rect;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 407
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 408
    invoke-direct {p0}, Lcom/android/datetimepicker/date/MonthView;->updateSelectorState()V

    goto/16 :goto_0

    .line 412
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/datetimepicker/date/MonthView;->getDayFromLocation(FF)I

    move-result v2

    .line 413
    if-ltz v2, :cond_0

    .line 416
    iget-boolean v3, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorHasRipples:Z

    if-eqz v3, :cond_3

    .line 417
    iget-object v3, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 419
    new-instance v0, Lcom/android/datetimepicker/date/MonthView$1;

    invoke-direct {v0, p0, v2}, Lcom/android/datetimepicker/date/MonthView$1;-><init>(Lcom/android/datetimepicker/date/MonthView;I)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mActiveLaunchDayRunnable:Ljava/lang/Runnable;

    .line 426
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mActiveLaunchDayRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/datetimepicker/date/MonthView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 428
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/date/MonthView;->onDayClick(I)V

    goto/16 :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public restoreAccessibilityFocus(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)Z
    .locals 2

    .prologue
    .line 1043
    iget v0, p1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mYear:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mMonth:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->day:I

    iget v1, p0, Lcom/android/datetimepicker/date/MonthView;->mNumCells:I

    if-le v0, v1, :cond_1

    .line 1044
    :cond_0
    const/4 v0, 0x0

    .line 1047
    :goto_0
    return v0

    .line 1046
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mTouchHelper:Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;

    iget v1, p1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->day:I

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->setFocusedVirtualView(I)V

    .line 1047
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reuse()V
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mNumRows:I

    .line 595
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->requestLayout()V

    .line 596
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/datetimepicker/date/MonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_0

    .line 328
    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 330
    :cond_0
    return-void
.end method

.method public setDatePickerController(Lcom/android/datetimepicker/date/DatePickerController;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/datetimepicker/date/MonthView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    .line 317
    return-void
.end method

.method public setMonthParams(Ljava/util/HashMap;)V
    .locals 6
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
    const/16 v3, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 537
    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "year"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "You must specify month and year for this view"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/datetimepicker/date/MonthView;->setTag(Ljava/lang/Object;)V

    .line 542
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    .line 544
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    if-ge v0, v3, :cond_1

    .line 545
    iput v3, p0, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    .line 548
    :cond_1
    const-string v0, "selected_day"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    const-string v0, "selected_day"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectedDay:I

    .line 551
    :cond_2
    const-string v0, "show_wk_num"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "show_wk_num"

    .line 552
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/datetimepicker/date/MonthView;->mShowWeekNumbers:Z

    .line 555
    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonth:I

    .line 556
    const-string v0, "year"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mYear:I

    .line 559
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {p0}, Lcom/android/datetimepicker/date/MonthView;->getTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 561
    iput-boolean v2, p0, Lcom/android/datetimepicker/date/MonthView;->mHasToday:Z

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mToday:I

    .line 564
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/datetimepicker/date/MonthView;->mMonth:I

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 565
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    iget v4, p0, Lcom/android/datetimepicker/date/MonthView;->mYear:I

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 566
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 567
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mDayOfWeekStart:I

    .line 569
    const-string v0, "week_start"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 570
    const-string v0, "week_start"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekStart:I

    .line 575
    :goto_1
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mMonth:I

    iget v4, p0, Lcom/android/datetimepicker/date/MonthView;->mYear:I

    invoke-static {v0, v4}, Lcom/android/datetimepicker/Utils;->getDaysInMonth(II)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mNumCells:I

    .line 576
    :goto_2
    iget v0, p0, Lcom/android/datetimepicker/date/MonthView;->mNumCells:I

    if-ge v2, v0, :cond_6

    .line 577
    add-int/lit8 v0, v2, 0x1

    .line 578
    invoke-direct {p0, v0, v3}, Lcom/android/datetimepicker/date/MonthView;->sameDay(ILandroid/text/format/Time;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 579
    iput-boolean v1, p0, Lcom/android/datetimepicker/date/MonthView;->mHasToday:Z

    .line 580
    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mToday:I

    .line 576
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    .line 552
    goto/16 :goto_0

    .line 572
    :cond_5
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mWeekStart:I

    goto :goto_1

    .line 583
    :cond_6
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView;->calculateNumRows()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/MonthView;->mNumRows:I

    .line 586
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mTouchHelper:Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 587
    return-void
.end method

.method public setOnDayClickListener(Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/datetimepicker/date/MonthView;->mOnDayClickListener:Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;

    .line 334
    return-void
.end method

.method public setRtlEnabled(Z)V
    .locals 0

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/android/datetimepicker/date/MonthView;->mRtlEnabled:Z

    .line 313
    return-void
.end method

.method public setSelectedDay(I)V
    .locals 0

    .prologue
    .line 590
    iput p1, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectedDay:I

    .line 591
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 966
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 967
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 968
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/datetimepicker/date/MonthView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 970
    :cond_0
    if-eqz p1, :cond_2

    .line 971
    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/MonthView;->setClickable(Z)V

    .line 972
    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/MonthView;->setFocusable(Z)V

    .line 973
    iput-object p1, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 974
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 975
    invoke-direct {p0}, Lcom/android/datetimepicker/date/MonthView;->updateSelectorState()V

    .line 976
    invoke-static {}, Lcom/android/datetimepicker/Utils;->isRunningLOrLater()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorHasRipples:Z

    .line 983
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 976
    goto :goto_0

    .line 978
    :cond_2
    iput-object v3, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 979
    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/MonthView;->setClickable(Z)V

    .line 980
    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/MonthView;->setFocusable(Z)V

    .line 981
    iput-boolean v1, p0, Lcom/android/datetimepicker/date/MonthView;->mSelectorHasRipples:Z

    goto :goto_1
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/datetimepicker/date/MonthView;->mTimezone:Ljava/lang/String;

    .line 516
    return-void
.end method

.method protected useRtl()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/android/datetimepicker/date/MonthView;->mRtlEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/datetimepicker/date/MonthView;->mIsRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
