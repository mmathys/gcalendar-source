.class public abstract Lcom/android/datetimepicker/date/DayPickerView;
.super Landroid/widget/ListView;
.source "DayPickerView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/datetimepicker/date/DatePickerDialog$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;
    }
.end annotation


# static fields
.field public static LIST_TOP_OFFSET:I

.field private static YEAR_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field protected mAdapter:Lcom/android/datetimepicker/date/MonthAdapter;

.field protected mContext:Landroid/content/Context;

.field private mController:Lcom/android/datetimepicker/date/DatePickerController;

.field protected mCurrentMonthDisplayed:I

.field protected mCurrentScrollState:I

.field protected mDaysPerWeek:I

.field protected mFriction:F

.field protected mHandler:Landroid/os/Handler;

.field protected mNumWeeks:I

.field private mPerformingScroll:Z

.field protected mPreviousScrollPosition:J

.field protected mPreviousScrollState:I

.field protected mScrollStateChangedRunnable:Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;

.field protected mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

.field protected mShowWeekNumber:Z

.field protected mTempDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, -0x1

    sput v0, Lcom/android/datetimepicker/date/DayPickerView;->LIST_TOP_OFFSET:I

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/datetimepicker/date/DayPickerView;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/datetimepicker/date/DatePickerController;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mNumWeeks:I

    .line 63
    iput-boolean v1, p0, Lcom/android/datetimepicker/date/DayPickerView;->mShowWeekNumber:Z

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mDaysPerWeek:I

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mFriction:F

    .line 74
    new-instance v0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    .line 77
    new-instance v0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mTempDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    .line 88
    iput v1, p0, Lcom/android/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    .line 90
    iput v1, p0, Lcom/android/datetimepicker/date/DayPickerView;->mCurrentScrollState:I

    .line 295
    new-instance v0, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;

    invoke-direct {v0, p0}, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;-><init>(Lcom/android/datetimepicker/date/DayPickerView;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mScrollStateChangedRunnable:Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/datetimepicker/date/DayPickerView;->init(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/android/datetimepicker/date/DayPickerView;->setController(Lcom/android/datetimepicker/date/DatePickerController;)V

    .line 104
    return-void
.end method

.method private findAccessibilityFocus()Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;
    .locals 4

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DayPickerView;->getChildCount()I

    move-result v3

    .line 393
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 394
    invoke-virtual {p0, v2}, Lcom/android/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 395
    instance-of v0, v1, Lcom/android/datetimepicker/date/MonthView;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 396
    check-cast v0, Lcom/android/datetimepicker/date/MonthView;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthView;->getAccessibilityFocus()Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_1

    .line 398
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 400
    check-cast v1, Lcom/android/datetimepicker/date/MonthView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/date/MonthView;->clearAccessibilityFocus()V

    .line 407
    :cond_0
    :goto_1
    return-object v0

    .line 393
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 407
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static getMonthAndYearString(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 453
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 454
    iget v1, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    iget v2, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    iget v3, p0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->day:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 456
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 457
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v4, v4, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    sget-object v2, Lcom/android/datetimepicker/date/DayPickerView;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private restoreAccessibilityFocus(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 418
    if-nez p1, :cond_0

    move v0, v1

    .line 432
    :goto_0
    return v0

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DayPickerView;->getChildCount()I

    move-result v3

    move v2, v1

    .line 423
    :goto_1
    if-ge v2, v3, :cond_2

    .line 424
    invoke-virtual {p0, v2}, Lcom/android/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 425
    instance-of v4, v0, Lcom/android/datetimepicker/date/MonthView;

    if-eqz v4, :cond_1

    .line 426
    check-cast v0, Lcom/android/datetimepicker/date/MonthView;

    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/date/MonthView;->restoreAccessibilityFocus(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    const/4 v0, 0x1

    goto :goto_0

    .line 423
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 432
    goto :goto_0
.end method


# virtual methods
.method public abstract createMonthAdapter(Landroid/content/Context;Lcom/android/datetimepicker/date/DatePickerController;)Lcom/android/datetimepicker/date/MonthAdapter;
.end method

.method public getMostVisiblePosition()I
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DayPickerView;->getFirstVisiblePosition()I

    move-result v6

    .line 358
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DayPickerView;->getHeight()I

    move-result v7

    move v2, v4

    move v1, v4

    move v0, v4

    move v3, v4

    .line 364
    :goto_0
    if-ge v2, v7, :cond_0

    .line 365
    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 366
    if-nez v2, :cond_1

    .line 377
    :cond_0
    add-int/2addr v0, v6

    return v0

    .line 369
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 370
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v8, v2

    .line 371
    if-le v2, v3, :cond_2

    move v0, v1

    .line 375
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v5

    .line 376
    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public goTo(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;ZZZ)Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v1, 0x0

    .line 193
    if-eqz p3, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->set(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mTempDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->set(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 198
    iget v0, p1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    iget-object v2, p0, Lcom/android/datetimepicker/date/DayPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v2}, Lcom/android/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v2

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0xc

    iget v2, p1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    add-int v3, v0, v2

    move v0, v1

    .line 206
    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 207
    if-nez v0, :cond_6

    .line 218
    :cond_1
    if-eqz v0, :cond_8

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/DayPickerView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 224
    :goto_1
    if-eqz p3, :cond_2

    .line 225
    iget-object v2, p0, Lcom/android/datetimepicker/date/DayPickerView;->mAdapter:Lcom/android/datetimepicker/date/MonthAdapter;

    iget-object v4, p0, Lcom/android/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v2, v4}, Lcom/android/datetimepicker/date/MonthAdapter;->setSelectedDay(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 228
    :cond_2
    const-string v2, "MonthFragment"

    invoke-static {v2, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    const-string v2, "MonthFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x19

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "GoTo position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_3
    if-ne v3, v0, :cond_4

    if-eqz p4, :cond_a

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mTempDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/DayPickerView;->setMonthDisplayed(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 235
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    .line 236
    if-eqz p2, :cond_9

    .line 237
    sget v0, Lcom/android/datetimepicker/date/DayPickerView;->LIST_TOP_OFFSET:I

    const/16 v1, 0xfa

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/datetimepicker/date/DayPickerView;->smoothScrollToPositionFromTop(III)V

    .line 239
    const/4 v1, 0x1

    .line 246
    :cond_5
    :goto_2
    return v1

    .line 210
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 211
    const-string v5, "MonthFragment"

    invoke-static {v5, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 212
    const-string v5, "MonthFragment"

    add-int/lit8 v6, v2, -0x1

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x28

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "child at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has top "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_7
    if-gez v4, :cond_1

    move v0, v2

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 221
    goto :goto_1

    .line 241
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/datetimepicker/date/DayPickerView;->postSetSelection(I)V

    goto :goto_2

    .line 243
    :cond_a
    if-eqz p3, :cond_5

    .line 244
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/DayPickerView;->setMonthDisplayed(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    goto :goto_2
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/DayPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/DayPickerView;->setDrawSelectorOnTop(Z)V

    .line 118
    iput-object p1, p0, Lcom/android/datetimepicker/date/DayPickerView;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DayPickerView;->setUpListView()V

    .line 120
    return-void
.end method

.method protected layoutChildren()V
    .locals 2

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/android/datetimepicker/date/DayPickerView;->findAccessibilityFocus()Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v0

    .line 438
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 439
    iget-boolean v1, p0, Lcom/android/datetimepicker/date/DayPickerView;->mPerformingScroll:Z

    if-eqz v1, :cond_0

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mPerformingScroll:Z

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/DayPickerView;->restoreAccessibilityFocus(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)Z

    goto :goto_0
.end method

.method public onChange()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DayPickerView;->refreshAdapter()V

    .line 124
    return-void
.end method

.method public onDateChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 382
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/DatePickerController;->getSelectedDay()Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/datetimepicker/date/DayPickerView;->goTo(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;ZZZ)Z

    .line 383
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 448
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 449
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 450
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 469
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 470
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 471
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 472
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/date/MonthView;

    .line 269
    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthView;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthView;->getBottom()I

    move-result v0

    sub-int v0, v1, v0

    int-to-long v0, v0

    .line 275
    iput-wide v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mPreviousScrollPosition:J

    .line 276
    iget v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mCurrentScrollState:I

    iput v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mPreviousScrollState:I

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mScrollStateChangedRunnable:Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/date/DayPickerView$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 293
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    const/16 v7, 0x2000

    const/16 v6, 0x1000

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 480
    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    .line 482
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    .line 517
    :goto_0
    return v0

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DayPickerView;->getFirstVisiblePosition()I

    move-result v1

    .line 487
    rem-int/lit8 v2, v1, 0xc

    .line 488
    div-int/lit8 v1, v1, 0xc

    iget-object v3, p0, Lcom/android/datetimepicker/date/DayPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v3}, Lcom/android/datetimepicker/date/DatePickerController;->getMinYear()I

    move-result v3

    add-int/2addr v1, v3

    .line 489
    new-instance v3, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;-><init>(III)V

    .line 492
    if-ne p1, v6, :cond_2

    .line 493
    iget v1, v3, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    .line 494
    iget v1, v3, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 495
    iput v4, v3, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    .line 496
    iget v1, v3, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    .line 514
    :cond_1
    :goto_1
    invoke-static {v3}, Lcom/android/datetimepicker/date/DayPickerView;->getMonthAndYearString(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/datetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {p0, v3, v0, v4, v0}, Lcom/android/datetimepicker/date/DayPickerView;->goTo(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;ZZZ)Z

    .line 516
    iput-boolean v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mPerformingScroll:Z

    goto :goto_0

    .line 498
    :cond_2
    if-ne p1, v7, :cond_1

    .line 499
    invoke-virtual {p0, v4}, Lcom/android/datetimepicker/date/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 502
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt v1, v5, :cond_1

    .line 505
    iget v1, v3, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v3, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    .line 506
    iget v1, v3, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    if-ne v1, v5, :cond_1

    .line 507
    const/16 v1, 0xb

    iput v1, v3, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    .line 508
    iget v1, v3, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v3, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->year:I

    goto :goto_1
.end method

.method public postSetSelection(I)V
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DayPickerView;->clearFocus()V

    .line 251
    new-instance v0, Lcom/android/datetimepicker/date/DayPickerView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/datetimepicker/date/DayPickerView$1;-><init>(Lcom/android/datetimepicker/date/DayPickerView;I)V

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/DayPickerView;->post(Ljava/lang/Runnable;)Z

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/android/datetimepicker/date/DayPickerView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 259
    return-void
.end method

.method protected refreshAdapter()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mAdapter:Lcom/android/datetimepicker/date/MonthAdapter;

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DayPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/date/DayPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-virtual {p0, v0, v1}, Lcom/android/datetimepicker/date/DayPickerView;->createMonthAdapter(Landroid/content/Context;Lcom/android/datetimepicker/date/DatePickerController;)Lcom/android/datetimepicker/date/MonthAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mAdapter:Lcom/android/datetimepicker/date/MonthAdapter;

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mAdapter:Lcom/android/datetimepicker/date/MonthAdapter;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/DayPickerView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mAdapter:Lcom/android/datetimepicker/date/MonthAdapter;

    iget-object v1, p0, Lcom/android/datetimepicker/date/DayPickerView;->mSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/MonthAdapter;->setSelectedDay(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    goto :goto_0
.end method

.method public setController(Lcom/android/datetimepicker/date/DatePickerController;)V
    .locals 1

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/datetimepicker/date/DayPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    .line 108
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mController:Lcom/android/datetimepicker/date/DatePickerController;

    invoke-interface {v0, p0}, Lcom/android/datetimepicker/date/DatePickerController;->registerOnDateChangedListener(Lcom/android/datetimepicker/date/DatePickerDialog$OnDateChangedListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DayPickerView;->refreshAdapter()V

    .line 110
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DayPickerView;->onDateChanged()V

    .line 111
    return-void
.end method

.method protected setMonthDisplayed(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V
    .locals 1

    .prologue
    .line 284
    iget v0, p1, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->month:I

    iput v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mCurrentMonthDisplayed:I

    .line 285
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/DayPickerView;->invalidateViews()V

    .line 286
    return-void
.end method

.method public setRtlEnabled(Z)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mAdapter:Lcom/android/datetimepicker/date/MonthAdapter;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView;->mAdapter:Lcom/android/datetimepicker/date/MonthAdapter;

    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/date/MonthAdapter;->setRtlEnabled(Z)V

    .line 150
    :cond_0
    return-void
.end method

.method protected setUpListView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/DayPickerView;->setCacheColorHint(I)V

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/DayPickerView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/DayPickerView;->setItemsCanFocus(Z)V

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/DayPickerView;->setFastScrollEnabled(Z)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/DayPickerView;->setVerticalScrollBarEnabled(Z)V

    .line 169
    invoke-virtual {p0, p0}, Lcom/android/datetimepicker/date/DayPickerView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/DayPickerView;->setFadingEdgeLength(I)V

    .line 172
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iget v1, p0, Lcom/android/datetimepicker/date/DayPickerView;->mFriction:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/DayPickerView;->setFriction(F)V

    .line 173
    return-void
.end method
