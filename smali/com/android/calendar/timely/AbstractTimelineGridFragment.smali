.class public abstract Lcom/android/calendar/timely/AbstractTimelineGridFragment;
.super Lcom/android/calendar/timely/CalendarFragment;
.source "AbstractTimelineGridFragment.java"

# interfaces
.implements Lcom/android/calendar/event/EventInfoFragment$DelayedActionPerformer;
.implements Lcom/android/calendar/timely/OnTimelineModeChangedListener;
.implements Lcom/android/calendar/timely/TimelineRecyclerView$OnTimelinePositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/AbstractTimelineGridFragment$SimpleOnScrollListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentAlternateYearMonthString:Ljava/lang/String;

.field private mCurrentMonth:I

.field private mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

.field private mForceShowInitialDay:Z

.field private mHandler:Landroid/os/Handler;

.field private mJulianDayOnTop:I

.field private mList:Lcom/android/calendar/timely/TimelineRecyclerView;

.field private mPendingModeChangePosition:I

.field private mRecycleCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 86
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/CalendarFragment;-><init>(I)V

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mHandler:Landroid/os/Handler;

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mRecycleCalendar:Ljava/util/Calendar;

    .line 88
    iput v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mJulianDayOnTop:I

    .line 89
    iput v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mCurrentMonth:I

    .line 90
    iput v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mPendingModeChangePosition:I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mMinimonthToggledOpen:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->TAG:Ljava/lang/String;

    const-string v1, "One of either timeline and/or timegrid MUST be implemented."

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)Lcom/android/calendar/timely/TimelineRecyclerView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)Lcom/android/calendar/timely/TimelyDayViewPager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/AbstractTimelineGridFragment;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->onNewDayOnTop(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mPendingModeChangePosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/calendar/timely/AbstractTimelineGridFragment;I)I
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mPendingModeChangePosition:I

    return p1
.end method

.method public static createArgs(JZ)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 216
    invoke-static {p0, p1}, Lcom/android/calendar/timely/CalendarFragment;->createArgs(J)Landroid/os/Bundle;

    move-result-object v0

    .line 217
    const-string v1, "args_in_grid_mode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    return-object v0
.end method

.method public static getJulianDayFromPosition(I)I
    .locals 1

    .prologue
    .line 590
    const v0, 0x253d8c    # 3.419992E-39f

    add-int/2addr v0, p0

    return v0
.end method

.method public static getPositionFromJulianDay(I)I
    .locals 1

    .prologue
    .line 594
    const v0, 0x253d8c    # 3.419992E-39f

    sub-int v0, p0, v0

    return v0
.end method

.method private getScrollType(ZZ)I
    .locals 1

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 409
    :goto_0
    return v0

    .line 406
    :cond_0
    if-eqz p2, :cond_1

    .line 407
    const/4 v0, 0x2

    goto :goto_0

    .line 409
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onNewDayOnTop(I)V
    .locals 4

    .prologue
    .line 503
    iput p1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mJulianDayOnTop:I

    .line 505
    iget v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mJulianDayOnTop:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->updateMiniMonth(I)V

    .line 507
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mJulianDayOnTop:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 508
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 509
    invoke-direct {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->updateTitle()V

    .line 510
    return-void
.end method

.method private updateAlternateMonthRange()V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method private updateTitle()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 513
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v5}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    .line 514
    iget-object v2, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mRecycleCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 515
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mRecycleCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 527
    iget v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mCurrentMonth:I

    if-eq v1, v0, :cond_1

    .line 528
    iput v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mCurrentMonth:I

    .line 540
    :goto_0
    iget-boolean v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mIsTabletConfig:Z

    if-eqz v0, :cond_2

    .line 541
    const-wide/16 v6, 0x34

    .line 547
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mController:Lcom/android/calendar/CalendarController;

    iget-object v2, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget-object v3, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/CalendarController;->updateVisibleRange(Ljava/lang/Object;Lcom/android/calendar/time/Time;Lcom/android/calendar/time/Time;Lcom/android/calendar/time/Time;ZJ)V

    .line 550
    invoke-direct {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->updateAlternateMonthRange()V

    .line 551
    :cond_0
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mCurrentAlternateYearMonthString:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iput-object v4, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mCurrentAlternateYearMonthString:Ljava/lang/String;

    goto :goto_0

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mRecycleCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mTodayYear:I

    if-eq v0, v1, :cond_3

    .line 543
    const-wide/32 v6, 0x10034

    goto :goto_1

    .line 545
    :cond_3
    const-wide/16 v6, 0x30

    goto :goto_1
.end method


# virtual methods
.method protected eventsChanged()V
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->updateHideDeclinedPreference()V

    .line 358
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->logListModeState()V

    .line 367
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->inGridMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyDayViewPager;->refresh(Lcom/android/calendar/time/Time;)V

    .line 376
    :cond_1
    :goto_1
    return-void

    .line 362
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->refresh(Lcom/android/calendar/time/Time;)V

    goto :goto_1
.end method

.method public forceShowInitialDay()V
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mForceShowInitialDay:Z

    .line 572
    return-void
.end method

.method public getMainPosition()I
    .locals 1

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->inGridMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getCurrentItem()I

    move-result v0

    .line 604
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    goto :goto_0
.end method

.method protected goTo(Lcom/android/calendar/time/Time;ZZ)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    if-nez v2, :cond_3

    .line 381
    :cond_1
    sget-object v1, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->TAG:Ljava/lang/String;

    const-string v2, "Tried to goto a time but Views haven\'t been created yet!"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 399
    :cond_2
    :goto_0
    return-void

    .line 385
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/timely/CalendarFragment;->goTo(Lcom/android/calendar/time/Time;ZZ)V

    .line 387
    invoke-direct {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->updateTitle()V

    .line 389
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 390
    iget-boolean v2, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mMinimonthToggledOpen:Z

    if-nez v2, :cond_4

    if-eqz p3, :cond_4

    move v0, v1

    .line 391
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v2, p1, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->goTo(Lcom/android/calendar/time/Time;Z)V

    .line 394
    :cond_5
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    iget-boolean v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mMinimonthToggledOpen:Z

    .line 396
    invoke-direct {p0, v0, p3}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getScrollType(ZZ)I

    move-result v0

    .line 397
    iget-object v2, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v2, p1, v1, p2, v0}, Lcom/android/calendar/timely/TimelyDayViewPager;->goTo(Lcom/android/calendar/time/Time;ZZI)V

    goto :goto_0
.end method

.method public abstract hasTimegrid()Z
.end method

.method public abstract hasTimeline()Z
.end method

.method public inGridMode()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 734
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 735
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v2}, Lcom/android/calendar/timely/TimelineRecyclerView;->inGridMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 746
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 735
    goto :goto_0

    .line 737
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 744
    sget-object v2, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->TAG:Ljava/lang/String;

    const-string v3, "Either timeline or timegrid must be implemented."

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    aput-object v4, v0, v1

    invoke-static {v2, v3, v0}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 746
    goto :goto_0
.end method

.method public isTargetingGridMode()Z
    .locals 5

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_in_grid_mode"

    .line 760
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "preference_key_grid_mode"

    const/4 v4, 0x0

    .line 759
    invoke-static {v2, v3, v4}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 758
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 763
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->inGridMode()Z

    move-result v0

    goto :goto_0
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/CalendarFragment;->onCalendarPropertyChanged(ILjava/lang/Object;)V

    .line 224
    packed-switch p1, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget-boolean v0, v0, Lcom/android/calendar/time/Time;->allDay:Z

    if-ne v0, v2, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iput v1, v0, Lcom/android/calendar/time/Time;->second:I

    .line 231
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iput v1, v0, Lcom/android/calendar/time/Time;->minute:I

    .line 232
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iput v1, v0, Lcom/android/calendar/time/Time;->hour:I

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->normalizeSafe()V

    .line 235
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->goTo(Lcom/android/calendar/time/Time;ZZ)V

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDatePickerVisibilityChanged(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xf

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 258
    invoke-super {p0, p1}, Lcom/android/calendar/timely/CalendarFragment;->onDatePickerVisibilityChanged(Z)V

    .line 259
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->isMinimonthToggleable(Landroid/content/Context;Lcom/android/calendar/timely/CalendarFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    sget-object v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->TAG:Ljava/lang/String;

    const-string v1, "Minimonth visibility changed, but it\'s not  actually toggleable."

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 270
    :cond_1
    if-eqz p1, :cond_5

    .line 271
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/TimelineRecyclerView;->setActive(Z)V

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/TimelyDayViewPager;->setActive(Z)V

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/calendar/timely/AbstractTimelineGridFragment$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment$3;-><init>(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->updateAlternateMonthRange()V

    goto :goto_0

    .line 294
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/calendar/timely/AbstractTimelineGridFragment$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment$4;-><init>(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/TimelineRecyclerView;->setActive(Z)V

    .line 317
    :cond_6
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/TimelyDayViewPager;->setActive(Z)V

    goto :goto_1
.end method

.method public onDayOfMonthSelected(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 576
    const-string v0, "onDayOfMonthSelected"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {p1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getDay()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getYear()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/time/Time;->set(III)V

    .line 578
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->normalizeSafe()V

    .line 579
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1, v4}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 581
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-static {v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->getPosition(Lcom/android/calendar/time/Time;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->setForceShowPosition(I)V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->goTo(Lcom/android/calendar/time/Time;ZZ)V

    .line 586
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 587
    return-void
.end method

.method public onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    sget v0, Lcom/android/calendar/R$id;->timely_list:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineRecyclerView;

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    .line 126
    invoke-static {}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getInstance()Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->registerCreateNewEventTimeListener(Lcom/android/calendar/NewEventTimeChangedListenerHolder$OnCreateNewEventTimeChangedListener;)V

    .line 129
    const/4 v5, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 131
    instance-of v1, v0, Lcom/android/calendar/timely/OnTimelineGestureListener;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Lcom/android/calendar/timely/OnTimelineGestureListener;

    move-object v5, v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    iget-object v2, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/timely/TimelineRecyclerView;->initialize(Lcom/android/calendar/timely/DataFactory;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/OnTimelineModeChangedListener;Lcom/android/calendar/timely/TimelineRecyclerView$OnTimelinePositionChangedListener;Lcom/android/calendar/timely/OnTimelineGestureListener;)V

    .line 136
    iget-boolean v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mForceShowInitialDay:Z

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-static {v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->getPosition(Lcom/android/calendar/time/Time;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->setForceShowPosition(I)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    new-instance v1, Lcom/android/calendar/timely/AbstractTimelineGridFragment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment$1;-><init>(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0, v8}, Lcom/android/calendar/timely/TimelineRecyclerView;->setActive(Z)V

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    sget v0, Lcom/android/calendar/R$id;->timely_day_view_pager:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyDayViewPager;

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    .line 157
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyDayViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 158
    invoke-static {}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getInstance()Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    .line 159
    invoke-virtual {v0, v1}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->registerCreateNewEventTimeListener(Lcom/android/calendar/NewEventTimeChangedListenerHolder$OnCreateNewEventTimeChangedListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    iget-object v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    iget-object v2, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/calendar/timely/TimelyDayViewPager;->initialize(Lcom/android/calendar/timely/DataFactory;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/OnTimelineModeChangedListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    new-instance v1, Lcom/android/calendar/timely/AbstractTimelineGridFragment$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment$2;-><init>(Lcom/android/calendar/timely/AbstractTimelineGridFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyDayViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 183
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->views_margin_between_pages:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyDayViewPager;->setPageMargin(I)V

    .line 185
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v0, v8}, Lcom/android/calendar/timely/TimelyDayViewPager;->setActive(Z)V

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->isTargetingGridMode()Z

    move-result v1

    .line 190
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    iget-object v2, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    if-eqz v1, :cond_6

    move v0, v6

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->setGridMode(Z)V

    .line 194
    :cond_4
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    if-eqz v1, :cond_7

    :goto_1
    invoke-virtual {v0, v7}, Lcom/android/calendar/timely/TimelyDayViewPager;->setVisibility(I)V

    .line 196
    if-eqz v1, :cond_5

    .line 197
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayViewPager;->setNextScrollPositionManually()V

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mRecycleCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 205
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/CalendarFragment;->onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 206
    return-void

    :cond_6
    move v0, v7

    .line 191
    goto :goto_0

    :cond_7
    move v7, v6

    .line 195
    goto :goto_1
.end method

.method public onModeChangeFinished()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 688
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 690
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->TAG:Ljava/lang/String;

    const-string v1, "Timeline/grid mode change finished, but both are not present."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 708
    :cond_1
    :goto_0
    return-void

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->inGridMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/TimelyDayViewPager;->setVisibility(I)V

    .line 701
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasMinimonth()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->isMinimonthToggleable(Landroid/content/Context;Lcom/android/calendar/timely/CalendarFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mMonthViewPagerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mMiniMonthElevation:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationZ(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public onModeChanged(I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 610
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 612
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->TAG:Ljava/lang/String;

    const-string v2, "Timeline/grid mode changed, but both are not present."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 652
    :goto_0
    return-void

    .line 617
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasMinimonth()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mMinimonthToggledOpen:Z

    if-eqz v0, :cond_2

    .line 626
    iput p1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mPendingModeChangePosition:I

    .line 627
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0, p0}, Lcom/android/calendar/CalendarController;->toggleDatePicker(Ljava/lang/Object;)V

    goto :goto_0

    .line 635
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->inGridMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 636
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getCurrentView()Lcom/android/calendar/timely/PagedDayView;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_5

    .line 638
    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getScrollOffset()I

    move-result v3

    .line 639
    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getGridHourStartOffset()I

    move-result v2

    .line 640
    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getAllDayEventsHeight()I

    move-result v1

    .line 641
    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getAllDayEventsScrollPosition()I

    move-result v0

    :goto_1
    move v5, v0

    move v4, v1

    move v6, v2

    move v2, v3

    move v3, v6

    :goto_2
    move-object v0, p0

    move v1, p1

    .line 650
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->onModeChanged(IIIII)V

    goto :goto_0

    .line 644
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyDayView;

    .line 645
    if-eqz v0, :cond_4

    .line 646
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->getTop()I

    move-result v2

    .line 647
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourStartOffset()I

    move-result v3

    move v5, v1

    move v4, v1

    goto :goto_2

    :cond_4
    move v5, v1

    move v4, v1

    move v3, v1

    move v2, v1

    goto :goto_2

    :cond_5
    move v0, v1

    move v2, v1

    move v3, v1

    goto :goto_1
.end method

.method public onModeChanged(IIIII)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 657
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimegrid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 659
    :cond_0
    sget-object v1, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->TAG:Ljava/lang/String;

    const-string v2, "Timeline/grid mode changed, but both are not present."

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    aput-object v3, v0, v6

    invoke-static {v1, v2, v0}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 684
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->inGridMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 666
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "args_in_grid_mode"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 668
    if-nez v0, :cond_3

    .line 670
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0, v6}, Lcom/android/calendar/timely/TimelineRecyclerView;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyDayViewPager;->setVisibility(I)V

    .line 677
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/timely/TimelineRecyclerView;->startGridModeTransition(IIIII)V

    .line 681
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "preference_key_back_to_month"

    invoke-static {v0, v1, v6}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 683
    invoke-static {p1}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getJulianDayFromPosition(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->onNewDayOnTop(I)V

    goto :goto_0

    :cond_2
    move v0, v6

    .line 665
    goto :goto_1

    .line 673
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/calendar/timely/TimelyDayViewPager;->setScrollPositionManually(ILcom/android/calendar/time/Time;)V

    .line 675
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v0, p1, v6}, Lcom/android/calendar/timely/TimelyDayViewPager;->setCurrentItem(IZ)V

    goto :goto_2
.end method

.method public onScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 458
    :goto_0
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getEventImageCache()Lcom/android/calendar/timely/EventImageCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/EventImageCache;->setBlocking(Z)V

    .line 459
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getContactPhotoCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/bitmap/BitmapCache;->setBlocking(Z)V

    .line 460
    invoke-static {}, Lcom/android/calendar/BitmapCacheHolder;->getMonthHeaderBitmapCache()Lcom/android/bitmap/BitmapCache;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/bitmap/BitmapCache;->setBlocking(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelineRecyclerView;->setScrollState(I)V

    .line 463
    :cond_0
    return-void

    .line 457
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScrolled(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 466
    iget-object v2, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v2}, Lcom/android/calendar/timely/TimelineRecyclerView;->getFirstVisiblePosition()I

    move-result v2

    .line 467
    invoke-static {v2}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getJulianDayFromPosition(I)I

    move-result v3

    .line 468
    iget v4, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mJulianDayOnTop:I

    if-eq v4, v3, :cond_2

    .line 471
    iget v4, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mJulianDayOnTop:I

    if-ne v4, v0, :cond_4

    move v0, v1

    .line 485
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 486
    iget-object v4, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v4, v0, v2}, Lcom/android/calendar/timely/TimelineRecyclerView;->setScrollingDirection(II)V

    .line 488
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->onNewDayOnTop(I)V

    .line 492
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    if-eqz v0, :cond_5

    .line 493
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 494
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 495
    instance-of v2, v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$SimpleOnScrollListener;

    if-eqz v2, :cond_3

    .line 496
    check-cast v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment$SimpleOnScrollListener;

    invoke-interface {v0, v1}, Lcom/android/calendar/timely/AbstractTimelineGridFragment$SimpleOnScrollListener;->onScrolled(I)V

    .line 493
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 477
    :cond_4
    iget v4, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mJulianDayOnTop:I

    if-le v3, v4, :cond_0

    .line 479
    const/4 v0, 0x1

    goto :goto_0

    .line 500
    :cond_5
    return-void
.end method

.method public onTimelinePositionChanged(I)V
    .locals 5

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->hasTimeline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 714
    sget-object v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->TAG:Ljava/lang/String;

    const-string v1, "Request to update sticky header, but no timeline present."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelineRecyclerView;->updateCurrentHeaderPosition(I)V

    goto :goto_0
.end method

.method public performDelayedAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 436
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->inGridMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 437
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->TAG:Ljava/lang/String;

    const-string v1, "Failing to perform delayed action due to not in grid or no child"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    move v1, v2

    .line 440
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 441
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyDayView;

    .line 442
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelyDayView;->shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelyDayView;->performDelayedAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)V

    .line 449
    :goto_1
    return-void

    .line 440
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 448
    :cond_3
    sget-object v0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->TAG:Ljava/lang/String;

    const-string v1, "Failing to perform delayed action due to not finding day view with chip"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public setViewTranslationX(F)V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->inGridMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelyDayViewPager;->setTranslationX(F)V

    .line 246
    :cond_0
    return-void
.end method

.method public setViewTranslationY(F)V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/android/calendar/timely/CalendarFragment;->setViewTranslationY(F)V

    .line 252
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->inGridMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    .line 253
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 254
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    goto :goto_0
.end method

.method public shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 419
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->inGridMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 423
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyDayView;

    .line 425
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelyDayView;->shouldDelayAction(Lcom/android/calendar/event/EventInfoFragment$DelayedActionDescription;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    const/4 v2, 0x1

    goto :goto_0

    .line 423
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method protected updateTopValues(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 328
    .line 330
    if-eqz p1, :cond_3

    .line 331
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 333
    iget-boolean v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mIsPortrait:Z

    if-eqz v0, :cond_2

    .line 335
    sget v0, Lcom/android/calendar/R$dimen;->action_bar_mini_month_divider_height:I

    .line 333
    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 337
    sget v0, Lcom/android/calendar/R$dimen;->mini_month_timeline_divider_height:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    move v5, v0

    move v0, v1

    move v1, v5

    .line 340
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$id;->content_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 341
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 343
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mList:Lcom/android/calendar/timely/TimelineRecyclerView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->requestLayout()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 347
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->mDayPager:Lcom/android/calendar/timely/TimelyDayViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayViewPager;->requestLayout()V

    .line 349
    :cond_1
    return-void

    .line 336
    :cond_2
    sget v0, Lcom/android/calendar/R$dimen;->views_top_margin:I

    goto :goto_0

    :cond_3
    move v1, v2

    move v0, v2

    goto :goto_1
.end method
