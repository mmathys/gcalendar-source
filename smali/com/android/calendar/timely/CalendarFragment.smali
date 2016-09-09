.class public abstract Lcom/android/calendar/timely/CalendarFragment;
.super Landroid/app/Fragment;
.source "CalendarFragment.java"

# interfaces
.implements Lcom/android/calendar/CalendarController$Command$Handler;
.implements Lcom/android/calendar/timely/TimelyMonthPagerAdapter$OnDayOfMonthSelectedListener;
.implements Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

.field protected mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field protected mController:Lcom/android/calendar/CalendarController;

.field protected mDataFactory:Lcom/android/calendar/timely/DataFactory;

.field private mDivider:Landroid/view/View;

.field protected mDragUpView:Landroid/view/View;

.field private mInCreate:Z

.field protected mIsPortrait:Z

.field protected mIsTabletConfig:Z

.field protected mLastSelectedTime:Lcom/android/calendar/time/Time;

.field protected mMiniMonthElevation:F

.field protected mMinimonthToggledOpen:Z

.field protected mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

.field protected mMonthViewPagerContainer:Landroid/view/View;

.field protected mMonthViewSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

.field private mRecycleTime:Lcom/android/calendar/time/Time;

.field private mTimeLeftApp:J

.field protected mTodayYear:I

.field private final mViewResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/calendar/timely/CalendarFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/CalendarFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mInCreate:Z

    .line 74
    new-instance v0, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-direct {v0}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    .line 86
    new-instance v0, Lcom/android/calendar/time/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mRecycleTime:Lcom/android/calendar/time/Time;

    .line 89
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    .line 90
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 92
    iput p1, p0, Lcom/android/calendar/timely/CalendarFragment;->mViewResource:I

    .line 93
    return-void
.end method

.method private actionBarIsNull()Z
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 280
    instance-of v1, v0, Lcom/android/calendar/AbstractCalendarActivity;

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AbstractCalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AbstractCalendarActivity;->actionBarIsNull()Z

    move-result v0

    .line 283
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createArgs(J)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 363
    const-string v1, "args_selected_time_millis"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 364
    return-object v0
.end method


# virtual methods
.method protected abstract eventsChanged()V
.end method

.method public final getDatePicker()Lcom/android/calendar/timely/TimelyMonthViewPager;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    return-object v0
.end method

.method public final getDatePickerContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPagerContainer:Landroid/view/View;

    return-object v0
.end method

.method public getDragUpView()Landroid/view/View;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mDragUpView:Landroid/view/View;

    return-object v0
.end method

.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, ""

    return-object v0
.end method

.method public getSupportedCommands()J
    .locals 2

    .prologue
    .line 369
    const-wide/16 v0, 0xa0

    return-wide v0
.end method

.method protected goTo(Lcom/android/calendar/time/Time;ZZ)V
    .locals 4

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, p1}, Lcom/android/calendar/time/Time;->set(Lcom/android/calendar/time/Time;)V

    .line 387
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 389
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->hasMinimonth()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    iget v1, p1, Lcom/android/calendar/time/Time;->year:I

    iget v2, p1, Lcom/android/calendar/time/Time;->month:I

    iget v3, p1, Lcom/android/calendar/time/Time;->monthDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->setDay(III)V

    .line 391
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    iget-object v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyMonthViewPager;->goTo(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 393
    :cond_0
    return-void
.end method

.method public handleCommand(Lcom/android/calendar/CalendarController$Command;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 374
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$Command;->type:J

    const-wide/16 v4, 0x20

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 375
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$Command;->extraLong:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-eqz v2, :cond_3

    move v2, v1

    .line 377
    :goto_0
    if-nez v2, :cond_0

    iget-wide v4, p1, Lcom/android/calendar/CalendarController$Command;->extraLong:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    .line 379
    :cond_1
    iget-object v1, p1, Lcom/android/calendar/CalendarController$Command;->selectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/calendar/timely/CalendarFragment;->goTo(Lcom/android/calendar/time/Time;ZZ)V

    .line 383
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v2, v0

    .line 375
    goto :goto_0

    .line 380
    :cond_4
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$Command;->type:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 381
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->eventsChanged()V

    goto :goto_1
.end method

.method public abstract hasMinimonth()Z
.end method

.method public isMiniMonthDraggable(Z)Z
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/CalendarFragment;->isMiniMonthToggleable(Z)Z

    move-result v0

    return v0
.end method

.method public abstract isMiniMonthToggleable(Z)Z
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;

    invoke-interface {v0}, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;->getChipRecycler()Lcom/android/calendar/timely/ChipRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 99
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    .line 100
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    invoke-virtual {v0, v2, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/16 v3, 0xd

    invoke-virtual {v0, v3, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-static {p1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/calendar/time/Time;->switchTimezone(Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/app/Activity;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mController:Lcom/android/calendar/CalendarController;

    .line 108
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mIsTabletConfig:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mIsPortrait:Z

    .line 111
    return-void

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 402
    sparse-switch p1, :sswitch_data_0

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 404
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->hasMinimonth()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyMonthViewPager;->updateWeekNumber(Z)V

    goto :goto_0

    .line 409
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->hasMinimonth()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyMonthViewPager;->updateFirstDayOfWeek(I)V

    goto :goto_0

    .line 414
    :sswitch_2
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/android/calendar/time/Time;->switchTimezone(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x5 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 134
    const-string v0, "CalendarFragment.onCreate"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 135
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-string v1, "%s.%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 138
    const-string v0, "Recreated"

    :goto_0
    aput-object v0, v2, v3

    .line 137
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    const-string v1, "args_selected_time_millis"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 142
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 146
    :cond_1
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 147
    return-void

    .line 138
    :cond_2
    const-string v0, "Created"

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 152
    const-string v0, "CalendarFragment.onCreateView"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/android/calendar/timely/CreateNewEventView;->removeSelectedTime()V

    .line 156
    if-eqz p3, :cond_0

    .line 158
    const-string v0, "key_time_left_app"

    iget-wide v2, p0, Lcom/android/calendar/timely/CalendarFragment;->mTimeLeftApp:J

    invoke-virtual {p3, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 160
    sub-long v0, v2, v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 169
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "data_factory"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/DataFactory;

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    .line 171
    iget v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mViewResource:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 174
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/timely/CalendarFragment;->onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 175
    iget-object v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/android/calendar/timely/CalendarFragment;->goTo(Lcom/android/calendar/time/Time;ZZ)V

    .line 178
    new-instance v1, Lcom/android/calendar/timely/SyncOffNotification;

    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/calendar/timely/SyncOffNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 180
    iput-boolean v4, p0, Lcom/android/calendar/timely/CalendarFragment;->mInCreate:Z

    .line 181
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 182
    return-object v0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    const-string v1, "selected_time_millis"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    goto :goto_0
.end method

.method public onDatePickerVisibilityChanged(Z)V
    .locals 5

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->isMinimonthToggleable(Landroid/content/Context;Lcom/android/calendar/timely/CalendarFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 441
    sget-object v0, Lcom/android/calendar/timely/CalendarFragment;->TAG:Ljava/lang/String;

    const-string v1, "Minimonth visibility changed, but it\'s not  actually toggleable."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 446
    :cond_2
    iput-boolean p1, p0, Lcom/android/calendar/timely/CalendarFragment;->mMinimonthToggledOpen:Z

    .line 447
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelyMonthViewPager;->onDatePickerVisibilityChanged(Z)V

    goto :goto_0
.end method

.method public onDayOfMonthSelected(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 530
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {p1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getDay()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getMonth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getYear()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/time/Time;->set(III)V

    .line 531
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->normalizeSafe()V

    .line 532
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1, v4}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 534
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/calendar/timely/CalendarFragment;->goTo(Lcom/android/calendar/time/Time;ZZ)V

    .line 535
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    const-string v0, "%s.Destroyed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getPrimesLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-static {v0}, Lcom/google/android/calendar/PerformanceMetricCollector;->recordMemory(Ljava/lang/String;)V

    .line 345
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 346
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "data_factory"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/DataFactory;

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/android/calendar/timely/DataFactory;->unregisterOnAllDataReadyListeners()V

    .line 295
    :cond_0
    invoke-static {}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getInstance()Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->unregisterCreateNewEventTimeListeners()V

    .line 298
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 299
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 116
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mCalendarProperties:Lcom/android/calendar/timely/settings/data/CalendarProperties;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 190
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 192
    invoke-virtual {v0, v4}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 193
    iget v0, v0, Lcom/android/calendar/time/Time;->year:I

    iput v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mTodayYear:I

    .line 195
    sget v0, Lcom/android/calendar/R$id;->mini_month_separator:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mDivider:Landroid/view/View;

    .line 196
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mIsTabletConfig:Z

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/CalendarFragment;->actionBarIsNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/calendar/AbstractCalendarActivity;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AbstractCalendarActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/AbstractCalendarActivity;->setActionBarElevation(F)V

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->hasMinimonth()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    iget-object v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget v1, v1, Lcom/android/calendar/time/Time;->year:I

    iget-object v2, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget v2, v2, Lcom/android/calendar/time/Time;->month:I

    iget-object v3, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->monthDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->setDay(III)V

    .line 213
    sget v0, Lcom/android/calendar/R$id;->timely_date_picker_container:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPagerContainer:Landroid/view/View;

    .line 214
    sget v0, Lcom/android/calendar/R$id;->drag_up_view:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mDragUpView:Landroid/view/View;

    .line 216
    sget v0, Lcom/android/calendar/R$id;->timely_date_picker:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyMonthViewPager;

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    .line 218
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    iget-object v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/timely/TimelyMonthViewPager;->initialize(Lcom/android/calendar/timely/DataFactory;Lcom/android/calendar/timely/TimelyMonthPagerAdapter$OnDayOfMonthSelectedListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    new-instance v1, Lcom/android/calendar/timely/CalendarFragment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/CalendarFragment$1;-><init>(Lcom/android/calendar/timely/CalendarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyMonthViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->isMinimonthToggleable(Landroid/content/Context;Lcom/android/calendar/timely/CalendarFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 252
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/CalendarFragment;->onDatePickerVisibilityChanged(Z)V

    .line 256
    invoke-static {}, Lcom/android/calendar/Utils;->isLOrLater()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mIsTabletConfig:Z

    if-nez v1, :cond_2

    .line 257
    invoke-direct {p0}, Lcom/android/calendar/timely/CalendarFragment;->actionBarIsNull()Z

    move-result v1

    if-nez v1, :cond_2

    .line 258
    sget v1, Lcom/android/calendar/R$dimen;->actionbar_elevation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mMiniMonthElevation:F

    .line 260
    iget-object v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPagerContainer:Landroid/view/View;

    iget v2, p0, Lcom/android/calendar/timely/CalendarFragment;->mMiniMonthElevation:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 265
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_4

    .line 266
    iget-object v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPagerContainer:Landroid/view/View;

    sget v2, Lcom/android/calendar/R$dimen;->date_picker_height:I

    .line 267
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    .line 266
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 276
    :cond_3
    :goto_0
    return-void

    .line 268
    :cond_4
    iget-boolean v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mIsTabletConfig:Z

    if-eqz v1, :cond_3

    .line 269
    sget v1, Lcom/android/calendar/R$dimen;->date_picker_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sget v2, Lcom/android/calendar/R$dimen;->date_picker_width:I

    .line 270
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, v1

    .line 271
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 272
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPagerContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 271
    :cond_5
    neg-float v0, v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mTimeLeftApp:J

    .line 337
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 303
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 305
    iget-boolean v2, p0, Lcom/android/calendar/timely/CalendarFragment;->mInCreate:Z

    if-nez v2, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->eventsChanged()V

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 313
    iget-wide v4, p0, Lcom/android/calendar/timely/CalendarFragment;->mTimeLeftApp:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xdbba0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 314
    iput-wide v2, p0, Lcom/android/calendar/timely/CalendarFragment;->mTimeLeftApp:J

    .line 315
    iget-object v2, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v2}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 316
    iget-object v2, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/calendar/timely/CalendarFragment;->goTo(Lcom/android/calendar/time/Time;ZZ)V

    .line 319
    :cond_0
    iput-boolean v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mInCreate:Z

    .line 322
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    .line 323
    if-eqz v2, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$bool;->force_show_more_events:I

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    .line 327
    if-nez v2, :cond_2

    .line 328
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "preference_showMoreEvents"

    invoke-static {v2, v3, v1}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 327
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/CalendarFragment;->updateTopValues(Z)V

    .line 331
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 328
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 356
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 357
    const-string v0, "selected_time_millis"

    iget-object v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 358
    const-string v0, "key_time_left_app"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 359
    return-void
.end method

.method public setViewTranslationX(F)V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public setViewTranslationY(F)V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 427
    :cond_0
    return-void
.end method

.method public final updateMiniMonth(I)V
    .locals 4

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->hasMinimonth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mRecycleTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, p1}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 504
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    iget-object v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mRecycleTime:Lcom/android/calendar/time/Time;

    iget v1, v1, Lcom/android/calendar/time/Time;->year:I

    iget-object v2, p0, Lcom/android/calendar/timely/CalendarFragment;->mRecycleTime:Lcom/android/calendar/time/Time;

    iget v2, v2, Lcom/android/calendar/time/Time;->month:I

    iget-object v3, p0, Lcom/android/calendar/timely/CalendarFragment;->mRecycleTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->monthDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->setDay(III)V

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarFragment;->hasMinimonth()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMinimonthToggledOpen:Z

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewPager:Lcom/android/calendar/timely/TimelyMonthViewPager;

    iget-object v1, p0, Lcom/android/calendar/timely/CalendarFragment;->mMonthViewSelectedDay:Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyMonthViewPager;->goTo(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V

    .line 512
    :cond_1
    return-void
.end method

.method protected abstract updateTopValues(Z)V
.end method
