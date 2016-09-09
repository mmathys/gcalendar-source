.class public Lcom/android/calendar/timely/MonthFragment;
.super Lcom/android/calendar/timely/ViewPagerFragment;
.source "MonthFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/MonthFragment$OnLaunchDayDetailsHandler;
    }
.end annotation


# instance fields
.field private mMonthViewPager:Landroid/support/v4/view/ViewPager;

.field private mMonthViewPagerAdapter:Lcom/android/calendar/timely/MonthPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/android/calendar/R$layout;->month_pager:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/ViewPagerFragment;-><init>(I)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getFirstJulianDay(I)I
    .locals 2

    .prologue
    .line 109
    invoke-static {p1}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->getDayFromPosition(I)Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getYear()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->getJulianFirstDayFromMonth(II)I

    move-result v0

    return v0
.end method

.method protected getItemPositionFromTime(Lcom/android/calendar/time/Time;Landroid/app/Activity;)I
    .locals 4

    .prologue
    .line 102
    new-instance v0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;-><init>()V

    .line 103
    iget v1, p1, Lcom/android/calendar/time/Time;->year:I

    iget v2, p1, Lcom/android/calendar/time/Time;->month:I

    iget v3, p1, Lcom/android/calendar/time/Time;->monthDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->setDay(III)V

    .line 104
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->getPositionFromDay(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)I

    move-result v0

    return v0
.end method

.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "MonthView"

    return-object v0
.end method

.method protected getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/timely/MonthFragment;->mMonthViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method protected getViewPagerAdapter()Lcom/android/calendar/timely/MonthPagerAdapter;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/calendar/timely/MonthFragment;->mMonthViewPagerAdapter:Lcom/android/calendar/timely/MonthPagerAdapter;

    return-object v0
.end method

.method protected bridge synthetic getViewPagerAdapter()Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthFragment;->getViewPagerAdapter()Lcom/android/calendar/timely/MonthPagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public hasMinimonth()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public isMiniMonthToggleable(Z)Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/ViewPagerFragment;->onCalendarPropertyChanged(ILjava/lang/Object;)V

    .line 119
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthFragment;->getViewPagerAdapter()Lcom/android/calendar/timely/MonthPagerAdapter;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthPagerAdapter;->updateVisibleViews()V

    .line 126
    :cond_1
    return-void
.end method

.method public onDayClick(Lcom/android/datetimepicker/date/MonthView;Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/timely/MonthFragment$OnLaunchDayDetailsHandler;

    if-eqz v0, :cond_1

    .line 170
    iget-boolean v0, p0, Lcom/android/calendar/timely/MonthFragment;->mIsTabletConfig:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/calendar/timely/MonthFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {p2}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getDay()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getMonth()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getYear()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/time/Time;->set(III)V

    .line 172
    iget-object v0, p0, Lcom/android/calendar/timely/MonthFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->normalizeSafe()V

    .line 173
    iget-object v0, p0, Lcom/android/calendar/timely/MonthFragment;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/timely/MonthFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/MonthFragment$OnLaunchDayDetailsHandler;

    .line 177
    invoke-virtual {p2}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getYear()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getMonth()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getDay()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/timely/MonthFragment$OnLaunchDayDetailsHandler;->onLaunchDayDetails(III)V

    .line 179
    :cond_1
    return-void
.end method

.method public onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/android/calendar/timely/MonthPagerAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/MonthFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/MonthPagerAdapter;-><init>(Landroid/app/Activity;Lcom/android/calendar/timely/ChipRecycler;)V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthFragment;->mMonthViewPagerAdapter:Lcom/android/calendar/timely/MonthPagerAdapter;

    .line 65
    iget-object v0, p0, Lcom/android/calendar/timely/MonthFragment;->mMonthViewPagerAdapter:Lcom/android/calendar/timely/MonthPagerAdapter;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/MonthPagerAdapter;->setOnDayClickListener(Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;)V

    .line 66
    sget v0, Lcom/android/calendar/R$id;->view_pager:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/calendar/timely/MonthFragment;->mMonthViewPager:Landroid/support/v4/view/ViewPager;

    .line 68
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/ViewPagerFragment;->onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 69
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/calendar/timely/ViewPagerFragment;->onPageScrollStateChanged(I)V

    .line 85
    if-nez p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/calendar/timely/MonthFragment;->mMonthViewPagerAdapter:Lcom/android/calendar/timely/MonthPagerAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthPagerAdapter;->scheduleRequestInitialAccessibilityFocus()V

    .line 88
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/calendar/timely/ViewPagerFragment;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/android/calendar/timely/MonthFragment;->mMonthViewPagerAdapter:Lcom/android/calendar/timely/MonthPagerAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthPagerAdapter;->scheduleRequestInitialAccessibilityFocus()V

    .line 80
    return-void
.end method

.method protected updatePage(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, Lcom/android/calendar/timely/CalendarMonthView;

    invoke-virtual {p1}, Lcom/android/calendar/timely/CalendarMonthView;->updateView()V

    .line 131
    return-void
.end method

.method public updateTitle(I)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 135
    invoke-static {p1}, Lcom/android/calendar/timely/TimelyMonthPagerAdapter;->getDayFromPosition(I)Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    move-result-object v0

    .line 137
    new-instance v2, Lcom/android/calendar/time/Time;

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getMonth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getYear()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/calendar/time/Time;->set(III)V

    .line 139
    invoke-virtual {v2, v5}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 141
    new-instance v3, Lcom/android/calendar/time/Time;

    invoke-virtual {p0}, Lcom/android/calendar/timely/MonthFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getYear()I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/datetimepicker/Utils;->getDaysInMonth(II)I

    move-result v1

    .line 143
    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getMonth()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getYear()I

    move-result v0

    .line 142
    invoke-virtual {v3, v1, v4, v0}, Lcom/android/calendar/time/Time;->set(III)V

    .line 144
    invoke-virtual {v3, v5}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 150
    iget-boolean v0, p0, Lcom/android/calendar/timely/MonthFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_0

    .line 151
    const-wide/16 v6, 0x34

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/MonthFragment;->mController:Lcom/android/calendar/CalendarController;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/CalendarController;->updateVisibleRange(Ljava/lang/Object;Lcom/android/calendar/time/Time;Lcom/android/calendar/time/Time;Lcom/android/calendar/time/Time;ZJ)V

    .line 164
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/MonthFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->year:I

    iget v1, p0, Lcom/android/calendar/timely/MonthFragment;->mTodayYear:I

    if-eq v0, v1, :cond_1

    .line 153
    const-wide/32 v6, 0x10034

    goto :goto_0

    .line 155
    :cond_1
    const-wide/16 v6, 0x30

    goto :goto_0
.end method
