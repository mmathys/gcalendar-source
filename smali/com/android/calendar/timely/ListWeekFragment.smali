.class public Lcom/android/calendar/timely/ListWeekFragment;
.super Lcom/android/calendar/timely/CalendarFragment;
.source "ListWeekFragment.java"

# interfaces
.implements Lcom/android/calendar/NewEventTimeChangedListenerHolder$OnCreateNewEventTimeChangedListener;
.implements Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllDayArrowView:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

.field private mContainer:Landroid/view/View;

.field private mCurrentJulianDay:I

.field private mLastAccJulianDay:I

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mMonth:I

.field private mNumVisibleDays:I

.field private mRecyclerAdapter:Lcom/android/calendar/timely/WeekRecyclerAdapter;

.field private mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/calendar/timely/ListWeekFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/calendar/timely/ListWeekFragment;->$assertionsDisabled:Z

    .line 45
    const-class v0, Lcom/android/calendar/timely/ListWeekFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/ListWeekFragment;->TAG:Ljava/lang/String;

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/android/calendar/R$layout;->list_week_fragment:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/CalendarFragment;-><init>(I)V

    .line 65
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mNumVisibleDays:I

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/ListWeekFragment;)Lcom/android/calendar/timely/WeekRecyclerView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/ListWeekFragment;)I
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/calendar/timely/ListWeekFragment;->getCurrentJulianDay()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/ListWeekFragment;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mCurrentJulianDay:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/calendar/timely/ListWeekFragment;I)I
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/android/calendar/timely/ListWeekFragment;->mCurrentJulianDay:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/ListWeekFragment;)Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mAllDayArrowView:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/ListWeekFragment;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/calendar/timely/ListWeekFragment;->updateTitle()V

    return-void
.end method

.method private getCurrentJulianDay()I
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerAdapter:Lcom/android/calendar/timely/WeekRecyclerAdapter;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->getFirstJulianDayOfItem(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;

    .line 302
    invoke-virtual {v1}, Lcom/android/calendar/timely/WeekRecyclerView;->getOffsetDaysFromStartOfWeek()I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    return v0
.end method

.method private updateContentDescription()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 206
    invoke-virtual {p0}, Lcom/android/calendar/timely/ListWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/ListWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x7

    .line 211
    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getBooleanProperty(Landroid/content/Context;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 213
    if-eqz v0, :cond_1

    .line 214
    iget v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mCurrentJulianDay:I

    .line 216
    invoke-virtual {p0}, Lcom/android/calendar/timely/ListWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsTime(Landroid/content/Context;)I

    move-result v1

    .line 214
    invoke-static {v0, v1}, Lcom/android/datetimepicker/Utils;->getWeekNumberInYear(II)I

    move-result v0

    .line 220
    :goto_1
    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->year:I

    aput v3, v1, v2

    iget-object v2, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget v2, v2, Lcom/android/calendar/time/Time;->month:I

    aput v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget v3, v3, Lcom/android/calendar/time/Time;->monthDay:I

    aput v3, v1, v2

    .line 222
    iget-object v2, p0, Lcom/android/calendar/timely/ListWeekFragment;->mContainer:Landroid/view/View;

    .line 223
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v3

    iget v4, p0, Lcom/android/calendar/timely/ListWeekFragment;->mNumVisibleDays:I

    invoke-virtual {v3, v1, v4, v5, v0}, Lcom/android/calendar/DateTimeFormatHelper;->getDateRangeText([IIZI)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/timely/ListWeekFragment;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private updateTitle()V
    .locals 8

    .prologue
    .line 234
    iget v3, p0, Lcom/android/calendar/timely/ListWeekFragment;->mCurrentJulianDay:I

    .line 235
    iget v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mNumVisibleDays:I

    add-int/2addr v0, v3

    add-int/lit8 v4, v0, -0x1

    .line 237
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->year:I

    iput v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mYear:I

    .line 238
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->month:I

    iput v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mMonth:I

    .line 241
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    iget v0, v0, Lcom/android/calendar/time/Time;->year:I

    iget v1, p0, Lcom/android/calendar/timely/ListWeekFragment;->mTodayYear:I

    if-eq v0, v1, :cond_0

    .line 242
    const v0, 0x10034

    move v1, v0

    .line 247
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/ListWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v2, Lcom/android/calendar/time/Time;

    invoke-direct {v2, v0}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2, v3}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 252
    new-instance v3, Lcom/android/calendar/time/Time;

    invoke-direct {v3, v0}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v3, v4}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 255
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mController:Lcom/android/calendar/CalendarController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-long v6, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/CalendarController;->updateVisibleRange(Ljava/lang/Object;Lcom/android/calendar/time/Time;Lcom/android/calendar/time/Time;Lcom/android/calendar/time/Time;ZJ)V

    .line 269
    return-void

    .line 244
    :cond_0
    const/16 v0, 0x30

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected eventsChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 281
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {p0}, Lcom/android/calendar/timely/ListWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/DataFactory;->setHideDeclinedEvents(Landroid/content/Context;)V

    .line 286
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0}, Lcom/android/calendar/timely/DataFactory;->updateToday()V

    .line 287
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-direct {p0}, Lcom/android/calendar/timely/ListWeekFragment;->getCurrentJulianDay()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/calendar/timely/DataFactory;->refreshDataAroundDay(IZZ)V

    goto :goto_0
.end method

.method protected getPrimesLogTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 70
    const-string v0, "%sDayView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/calendar/timely/ListWeekFragment;->mNumVisibleDays:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected goTo(Lcom/android/calendar/time/Time;ZZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;

    if-nez v0, :cond_1

    .line 133
    sget-object v0, Lcom/android/calendar/timely/ListWeekFragment;->TAG:Ljava/lang/String;

    const-string v2, "Tried to goto a time but recyclerView hadn\'t been created yet!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/timely/CalendarFragment;->goTo(Lcom/android/calendar/time/Time;ZZ)V

    .line 140
    invoke-virtual {p1, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v2

    .line 141
    iput v2, p0, Lcom/android/calendar/timely/ListWeekFragment;->mCurrentJulianDay:I

    .line 144
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/DataFactory;->setTimePassage(II)V

    .line 145
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/calendar/timely/DataFactory;->refreshDataAroundDay(IZZ)V

    .line 148
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLastSelectedTime:Lcom/android/calendar/time/Time;

    invoke-virtual {p0}, Lcom/android/calendar/timely/ListWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getWeekNumberFromTime(Lcom/android/calendar/time/Time;Landroid/content/Context;)I

    move-result v3

    .line 150
    invoke-virtual {p0}, Lcom/android/calendar/timely/ListWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsTime(Landroid/content/Context;)I

    move-result v0

    .line 149
    invoke-static {v3, v0}, Lcom/android/calendar/Utils;->getJulianFirstDayFromWeeksSinceEpoch(II)I

    move-result v0

    .line 154
    iget-object v4, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;

    invoke-virtual {v4}, Lcom/android/calendar/timely/WeekRecyclerView;->getNumVisibleDays()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    move v0, v1

    .line 156
    :goto_1
    iget-object v4, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;

    if-eqz p3, :cond_2

    iget-boolean v5, p0, Lcom/android/calendar/timely/ListWeekFragment;->mMinimonthToggledOpen:Z

    if-nez v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v4, v3, v0, v1, p1}, Lcom/android/calendar/timely/WeekRecyclerView;->scrollToPositionWithOffset(IIZLcom/android/calendar/time/Time;)V

    .line 160
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mAllDayArrowView:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setJulianDay(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/calendar/timely/ListWeekFragment;->updateAccessibility()V

    .line 163
    invoke-direct {p0}, Lcom/android/calendar/timely/ListWeekFragment;->updateTitle()V

    .line 166
    iget-boolean v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mMinimonthToggledOpen:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerAdapter:Lcom/android/calendar/timely/WeekRecyclerAdapter;

    invoke-virtual {v0, v3, p3, p1}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->setItemToAutoScroll(IZLcom/android/calendar/time/Time;)V

    goto :goto_0

    .line 155
    :cond_3
    sub-int/2addr v0, v2

    goto :goto_1
.end method

.method public hasMinimonth()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mIsPortrait:Z

    return v0
.end method

.method public isMiniMonthToggleable(Z)Z
    .locals 0

    .prologue
    .line 344
    return p1
.end method

.method public onAllEventsDataReady()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerAdapter:Lcom/android/calendar/timely/WeekRecyclerAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->notifyDataSetChanged()V

    .line 294
    return-void
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/CalendarFragment;->onCalendarPropertyChanged(ILjava/lang/Object;)V

    .line 329
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_2

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerAdapter:Lcom/android/calendar/timely/WeekRecyclerAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->updateVisiblePages()V

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 333
    invoke-direct {p0}, Lcom/android/calendar/timely/ListWeekFragment;->updateContentDescription()V

    goto :goto_0
.end method

.method public onCreateNewEventTimeChanged(J)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 307
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->week_days_content:I

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v4, v3

    .line 317
    :goto_1
    const/4 v1, 0x7

    if-ge v4, v1, :cond_2

    .line 318
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/gridviews/GridDayView;

    .line 319
    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/GridDayView;->updateCreateNewEventView()V

    .line 317
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 312
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public onDatePickerVisibilityChanged(Z)V
    .locals 0

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/android/calendar/timely/CalendarFragment;->onDatePickerVisibilityChanged(Z)V

    .line 275
    invoke-direct {p0}, Lcom/android/calendar/timely/ListWeekFragment;->updateTitle()V

    .line 276
    return-void
.end method

.method public onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/android/calendar/timely/CalendarFragment;->onInitView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 77
    invoke-static {}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->getInstance()Lcom/android/calendar/NewEventTimeChangedListenerHolder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p0}, Lcom/android/calendar/NewEventTimeChangedListenerHolder;->registerCreateNewEventTimeListener(Lcom/android/calendar/NewEventTimeChangedListenerHolder$OnCreateNewEventTimeChangedListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/DataFactory;->registerOnAllEventsDataReadyListener(Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;)V

    .line 83
    new-instance v0, Lcom/android/calendar/timely/WeekRecyclerAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/timely/ListWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/ListWeekFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    iget-object v3, p0, Lcom/android/calendar/timely/ListWeekFragment;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/android/calendar/timely/WeekRecyclerAdapter;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/DataFactory;)V

    iput-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerAdapter:Lcom/android/calendar/timely/WeekRecyclerAdapter;

    .line 85
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/calendar/timely/ListWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 88
    sget v0, Lcom/android/calendar/R$id;->list_week_container:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mContainer:Landroid/view/View;

    .line 90
    sget v0, Lcom/android/calendar/R$id;->week_month_header_arrow:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    iput-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mAllDayArrowView:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    .line 93
    sget v0, Lcom/android/calendar/R$id;->list_week_recycler_view:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/WeekRecyclerView;

    iput-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;

    .line 94
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;

    iget-object v1, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerAdapter:Lcom/android/calendar/timely/WeekRecyclerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/WeekRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 95
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;

    new-instance v1, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/timely/ListWeekFragment$OnScrollListener;-><init>(Lcom/android/calendar/timely/ListWeekFragment;Lcom/android/calendar/timely/ListWeekFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/WeekRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;

    iget-object v1, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/WeekRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 97
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;

    iget v1, p0, Lcom/android/calendar/timely/ListWeekFragment;->mNumVisibleDays:I

    invoke-virtual {v0, v1, v4}, Lcom/android/calendar/timely/WeekRecyclerView;->setNumVisibleDays(IZ)V

    .line 98
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mRecyclerView:Lcom/android/calendar/timely/WeekRecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/WeekRecyclerView;->setImportantForAccessibility(I)V

    .line 99
    return-void
.end method

.method public setViewTranslationY(F)V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0, p1}, Lcom/android/calendar/timely/CalendarFragment;->setViewTranslationY(F)V

    .line 350
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 351
    return-void
.end method

.method public updateAccessibility()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/android/calendar/timely/ListWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mCurrentJulianDay:I

    iget v1, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLastAccJulianDay:I

    if-eq v0, v1, :cond_0

    .line 182
    iget v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mCurrentJulianDay:I

    iput v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLastAccJulianDay:I

    move v2, v3

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 186
    iget-object v0, p0, Lcom/android/calendar/timely/ListWeekFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->week_days_content:I

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridViewFrame;

    .line 190
    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getFirstJulianDay()I

    move-result v7

    move v6, v3

    .line 191
    :goto_2
    const/4 v1, 0x7

    if-ge v6, v1, :cond_4

    .line 192
    invoke-virtual {v0, v6}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/gridviews/GridDayView;

    .line 193
    add-int v4, v7, v6

    iget v8, p0, Lcom/android/calendar/timely/ListWeekFragment;->mCurrentJulianDay:I

    if-lt v4, v8, :cond_2

    add-int v4, v7, v6

    iget v8, p0, Lcom/android/calendar/timely/ListWeekFragment;->mCurrentJulianDay:I

    iget v9, p0, Lcom/android/calendar/timely/ListWeekFragment;->mNumVisibleDays:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_2

    move v4, v5

    .line 196
    :goto_3
    if-eqz v4, :cond_3

    move v4, v5

    :goto_4
    invoke-virtual {v1, v4}, Lcom/android/calendar/timely/gridviews/GridDayView;->setImportantForAccessibility(I)V

    .line 191
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    :cond_2
    move v4, v3

    .line 193
    goto :goto_3

    .line 198
    :cond_3
    const/4 v4, 0x4

    goto :goto_4

    .line 185
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 202
    :cond_5
    invoke-direct {p0}, Lcom/android/calendar/timely/ListWeekFragment;->updateContentDescription()V

    goto :goto_0
.end method

.method protected updateTopValues(Z)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method
