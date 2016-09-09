.class public Lcom/android/calendar/timely/TimelyMonthViewPager;
.super Lcom/android/calendar/ListenableViewPager;
.source "TimelyMonthViewPager.java"

# interfaces
.implements Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/calendar/timely/TimelyMonthPagerAdapter;

.field private mAnimatedMonthHeightChanges:Z

.field private mCurrentDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

.field private final mDefaultWidth:I

.field private final mIsTabletConfig:Z

.field private final mLeftPaddingWithoutWeekNumbers:I

.field private final mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/calendar/timely/TimelyMonthViewPager;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/TimelyMonthViewPager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/ListenableViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mDefaultWidth:I

    .line 56
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mLeftPaddingWithoutWeekNumbers:I

    .line 59
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mOrientation:I

    .line 60
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mIsTabletConfig:Z

    .line 61
    return-void
.end method


# virtual methods
.method public getCurrentDay()Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mCurrentDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    return-object v0
.end method

.method public getCurrentMonthHeight()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mAnimatedMonthHeightChanges:Z

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getHeight()I

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 157
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 159
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mAdapter:Lcom/android/calendar/timely/TimelyMonthPagerAdapter;

    invoke-virtual {v3, v2}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->getViewPosition(Landroid/view/View;)I

    move-result v3

    .line 160
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getCurrentItem()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 161
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    .line 157
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_2
    sget-object v0, Lcom/android/calendar/timely/TimelyMonthViewPager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to find visible child while calculating month height."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 167
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public goTo(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mCurrentDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    .line 84
    invoke-static {p1}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->getPositionFromDay(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)I

    move-result v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->setCurrentItem(I)V

    .line 86
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mAdapter:Lcom/android/calendar/timely/TimelyMonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->setSelectedDay(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 87
    return-void
.end method

.method public initialize(Lcom/android/calendar/timely/DataFactory;Lcom/android/calendar/timely/TimelyMonthPagerAdapter$OnDayOfMonthSelectedListener;)V
    .locals 2

    .prologue
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$bool;->animate_minimonth_height_changes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mAnimatedMonthHeightChanges:Z

    .line 77
    invoke-virtual {p1, p0}, Lcom/android/calendar/timely/DataFactory;->registerOnAllEventsDataReadyListener(Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;)V

    .line 78
    new-instance v1, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;-><init>(Landroid/app/Activity;Lcom/android/calendar/timely/DataFactory;Lcom/android/calendar/timely/TimelyMonthPagerAdapter$OnDayOfMonthSelectedListener;)V

    iput-object v1, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mAdapter:Lcom/android/calendar/timely/TimelyMonthPagerAdapter;

    .line 79
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mAdapter:Lcom/android/calendar/timely/TimelyMonthPagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 80
    return-void
.end method

.method public onAllEventsDataReady()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mAdapter:Lcom/android/calendar/timely/TimelyMonthPagerAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->notifyDataSetChanged()V

    .line 110
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/calendar/ListenableViewPager;->onAttachedToWindow()V

    .line 67
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getBooleanProperty(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->updateWeekNumber(Z)V

    .line 70
    return-void
.end method

.method public onDatePickerVisibilityChanged(Z)V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mAdapter:Lcom/android/calendar/timely/TimelyMonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->onDatePickerVisibilityChanged(Z)V

    .line 137
    if-eqz p1, :cond_1

    .line 138
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 140
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mAdapter:Lcom/android/calendar/timely/TimelyMonthPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->getViewPosition(Landroid/view/View;)I

    move-result v2

    .line 141
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getCurrentItem()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 142
    check-cast v0, Lcom/android/calendar/timely/TimelyColorMonthView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->requestInitialAccessibilityFocus()V

    .line 138
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 146
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mIsTabletConfig:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getBooleanProperty(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 99
    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mLeftPaddingWithoutWeekNumbers:I

    .line 100
    :goto_0
    iget v1, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mDefaultWidth:I

    sub-int v0, v1, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Lcom/android/calendar/ListenableViewPager;->onMeasure(II)V

    .line 105
    :goto_1
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/calendar/ListenableViewPager;->onMeasure(II)V

    goto :goto_1
.end method

.method public updateFirstDayOfWeek(I)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mAdapter:Lcom/android/calendar/timely/TimelyMonthPagerAdapter;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mAdapter:Lcom/android/calendar/timely/TimelyMonthPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->updateFirstDayOfWeek(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public updateWeekNumber(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mIsTabletConfig:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 116
    if-nez p1, :cond_2

    iget v1, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mLeftPaddingWithoutWeekNumbers:I

    .line 117
    :goto_0
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mAdapter:Lcom/android/calendar/timely/TimelyMonthPagerAdapter;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyMonthViewPager;->mAdapter:Lcom/android/calendar/timely/TimelyMonthPagerAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->updateVisibleMonths()V

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->requestLayout()V

    .line 125
    return-void

    :cond_2
    move v1, v2

    .line 116
    goto :goto_0
.end method
