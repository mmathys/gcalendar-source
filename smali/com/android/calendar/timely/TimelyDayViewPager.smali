.class public Lcom/android/calendar/timely/TimelyDayViewPager;
.super Lcom/android/calendar/timely/DisablableViewPager;
.source "TimelyDayViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/android/calendar/NewEventTimeChangedListenerHolder$OnCreateNewEventTimeChangedListener;
.implements Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessibilityEnabled:Z

.field private mDayViewPagerAdapter:Lcom/android/calendar/timely/DayViewPagerAdapter;

.field private mInternalPageScroll:Z

.field private mLastFocusedPosition:I

.field private mTimeToday:Lcom/android/calendar/time/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/TimelyDayViewPager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/DisablableViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/DayViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mDayViewPagerAdapter:Lcom/android/calendar/timely/DayViewPagerAdapter;

    .line 58
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mDayViewPagerAdapter:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 59
    return-void
.end method

.method private focusNewPositionForA11y(I)V
    .locals 2

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mAccessibilityEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getCurrentView()Lcom/android/calendar/timely/PagedDayView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getCurrentView()Lcom/android/calendar/timely/PagedDayView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getActiveDayHeaderView()Landroid/view/View;

    move-result-object v0

    .line 171
    iput p1, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mLastFocusedPosition:I

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 174
    new-instance v1, Lcom/android/calendar/timely/TimelyDayViewPager$1;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/timely/TimelyDayViewPager$1;-><init>(Lcom/android/calendar/timely/TimelyDayViewPager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 181
    :cond_0
    return-void
.end method

.method public static getPosition(Lcom/android/calendar/time/Time;)I
    .locals 4

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    .line 109
    const v1, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v0, v1

    .line 110
    return v0
.end method

.method private getVisibleChildren()[Lcom/android/calendar/timely/PagedDayView;
    .locals 4

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getChildCount()I

    move-result v2

    .line 216
    new-array v3, v2, [Lcom/android/calendar/timely/PagedDayView;

    .line 217
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 218
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelyDayViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PagedDayView;

    aput-object v0, v3, v1

    .line 217
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 221
    :cond_0
    return-object v3
.end method


# virtual methods
.method public getChildAtPosition(I)Lcom/android/calendar/timely/PagedDayView;
    .locals 5

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getVisibleChildren()[Lcom/android/calendar/timely/PagedDayView;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 130
    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getTimelyDayView()Lcom/android/calendar/timely/TimelyDayView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/timely/TimelyDayView;->getPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 135
    :goto_1
    return-object v0

    .line 129
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCurrentView()Lcom/android/calendar/timely/PagedDayView;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getChildAtPosition(I)Lcom/android/calendar/timely/PagedDayView;

    move-result-object v0

    return-object v0
.end method

.method public goTo(Lcom/android/calendar/time/Time;ZZI)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-static {p1}, Lcom/android/calendar/timely/TimelyDayViewPager;->getPosition(Lcom/android/calendar/time/Time;)I

    move-result v0

    .line 72
    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelyDayViewPager;->setFocusPosition(I)V

    .line 74
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mDayViewPagerAdapter:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-virtual {v1, v0, v3}, Lcom/android/calendar/timely/DayViewPagerAdapter;->refresh(IZ)V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mTimeToday:Lcom/android/calendar/time/Time;

    if-nez v1, :cond_1

    .line 78
    new-instance v1, Lcom/android/calendar/time/Time;

    invoke-direct {v1}, Lcom/android/calendar/time/Time;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mTimeToday:Lcom/android/calendar/time/Time;

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mTimeToday:Lcom/android/calendar/time/Time;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/time/Time;->switchTimezone(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mTimeToday:Lcom/android/calendar/time/Time;

    invoke-virtual {v1}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 83
    packed-switch p4, :pswitch_data_0

    .line 99
    sget-object v1, Lcom/android/calendar/timely/TimelyDayViewPager;->TAG:Ljava/lang/String;

    const-string v2, "Unknown scroll type."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 103
    :cond_2
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v0, p3}, Lcom/android/calendar/timely/TimelyDayViewPager;->setCurrentItem(IZ)V

    .line 104
    return-void

    .line 86
    :pswitch_1
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mTimeToday:Lcom/android/calendar/time/Time;

    invoke-static {v1}, Lcom/android/calendar/timely/TimelyDayViewPager;->getPosition(Lcom/android/calendar/time/Time;)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 88
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mTimeToday:Lcom/android/calendar/time/Time;

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/TimelyDayViewPager;->setScrollPositionManually(ILcom/android/calendar/time/Time;)V

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-virtual {p0, v0, p1}, Lcom/android/calendar/timely/TimelyDayViewPager;->setScrollPositionManually(ILcom/android/calendar/time/Time;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public initialize(Lcom/android/calendar/timely/DataFactory;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/OnTimelineModeChangedListener;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mDayViewPagerAdapter:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/calendar/timely/DayViewPagerAdapter;->initialize(Lcom/android/calendar/timely/DataFactory;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/OnTimelineModeChangedListener;)V

    .line 64
    invoke-virtual {p1, p0}, Lcom/android/calendar/timely/DataFactory;->registerOnAllEventsDataReadyListener(Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mAccessibilityEnabled:Z

    .line 66
    return-void
.end method

.method public onAllEventsDataReady()V
    .locals 6

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getVisibleChildren()[Lcom/android/calendar/timely/PagedDayView;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 141
    iget-object v4, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mDayViewPagerAdapter:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-virtual {v3}, Lcom/android/calendar/timely/PagedDayView;->getTimelyDayView()Lcom/android/calendar/timely/TimelyDayView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/timely/TimelyDayView;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/calendar/timely/DayViewPagerAdapter;->updateView(ILcom/android/calendar/timely/PagedDayView;)Lcom/android/calendar/timely/MonthData;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public onCreateNewEventTimeChanged(J)V
    .locals 5

    .prologue
    .line 115
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getVisibleChildren()[Lcom/android/calendar/timely/PagedDayView;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 118
    invoke-virtual {v3}, Lcom/android/calendar/timely/PagedDayView;->removeCreateNewEventView()V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mDayViewPagerAdapter:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/DayViewPagerAdapter;->notifyDataSetChanged()V

    .line 122
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mInternalPageScroll:Z

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mInternalPageScroll:Z

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/timely/DisablableViewPager;->onPageScrolled(IFI)V

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mInternalPageScroll:Z

    .line 163
    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mLastFocusedPosition:I

    if-eq v0, p1, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayViewPager;->focusNewPositionForA11y(I)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelyDayViewPager;->setFocusPosition(I)V

    .line 148
    return-void
.end method

.method public refresh(Lcom/android/calendar/time/Time;)V
    .locals 3

    .prologue
    .line 231
    invoke-static {p1}, Lcom/android/calendar/timely/TimelyDayViewPager;->getPosition(Lcom/android/calendar/time/Time;)I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mDayViewPagerAdapter:Lcom/android/calendar/timely/DayViewPagerAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/timely/DayViewPagerAdapter;->refresh(IZ)V

    .line 233
    return-void
.end method

.method public setActive(Z)V
    .locals 4

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelyDayViewPager;->setEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mDayViewPagerAdapter:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/DayViewPagerAdapter;->setEnabled(Z)V

    .line 209
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getVisibleChildren()[Lcom/android/calendar/timely/PagedDayView;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 210
    invoke-virtual {v3, p1}, Lcom/android/calendar/timely/PagedDayView;->setEnabled(Z)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/DisablableViewPager;->setCurrentItem(IZ)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/TimelyDayViewPager;->focusNewPositionForA11y(I)V

    .line 187
    return-void
.end method

.method public setFocusPosition(I)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mDayViewPagerAdapter:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/DayViewPagerAdapter;->setFocusPosition(I)V

    .line 237
    return-void
.end method

.method public setNextScrollPositionManually()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mDayViewPagerAdapter:Lcom/android/calendar/timely/DayViewPagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/DayViewPagerAdapter;->setNextScrollPositionManually(Z)V

    .line 191
    return-void
.end method

.method public setScrollPositionManually(ILcom/android/calendar/time/Time;)V
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/TimelyDayViewPager;->getChildAtPosition(I)Lcom/android/calendar/timely/PagedDayView;

    move-result-object v0

    .line 199
    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mDayViewPagerAdapter:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/timely/DayViewPagerAdapter;->rememberPositionToScrollTo(ILcom/android/calendar/time/Time;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyDayViewPager;->mDayViewPagerAdapter:Lcom/android/calendar/timely/DayViewPagerAdapter;

    invoke-virtual {v1, v0, p2}, Lcom/android/calendar/timely/DayViewPagerAdapter;->manuallySetScrollPosition(Lcom/android/calendar/timely/PagedDayView;Lcom/android/calendar/time/Time;)V

    goto :goto_0
.end method
