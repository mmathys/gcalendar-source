.class public Lcom/android/calendar/timely/TimelineRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "TimelineRecyclerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/support/v7/widget/RecyclerView$RecyclerListener;
.implements Lcom/android/calendar/NewEventTimeChangedListenerHolder$OnCreateNewEventTimeChangedListener;
.implements Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;
.implements Lcom/android/calendar/timely/OnTimelineGestureListener;
.implements Lcom/android/calendar/timely/TimelineInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/TimelineRecyclerView$HeaderViewDescriptor;,
        Lcom/android/calendar/timely/TimelineRecyclerView$OnTimelinePositionChangedListener;,
        Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityAnnounce:Ljava/lang/Runnable;

.field private mAgendaScrollOffsetNow:I

.field private mAllDayEventsHeight:I

.field private mAllDayEventsScroll:I

.field private mCanChipBeClickable:Z

.field private mCanDrawBackgroundImage:Z

.field private mClearSelectedHourDetector:Landroid/view/GestureDetector;

.field private mCurrentItemPosition:I

.field private mDataFactory:Lcom/android/calendar/timely/DataFactory;

.field private mFirstVisiblePosition:I

.field private mGestureCount:I

.field private mHasMonthHeaderImage:Z

.field private mIsAnimating:Z

.field private mIsPositioningToToday:Z

.field private mLastAutoScroll:Z

.field private mLastGotoTime:Lcom/android/calendar/time/Time;

.field private final mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mNeedsUpdateWhenIdle:Z

.field private mNewOffsetFromTop:I

.field private mOldOffsetFromTop:I

.field private mOriginalRatio:F

.field private mPosition:I

.field private mRecycleTime:Lcom/android/calendar/time/Time;

.field private mScrollState:I

.field private mScrollingDirection:I

.field private mScrollingEnabled:Z

.field private mSparseBusyRatio:F

.field private mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

.field private mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

.field private mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

.field private mTimelinePositionChangedListener:Lcom/android/calendar/timely/TimelineRecyclerView$OnTimelinePositionChangedListener;

.field private mViewMode:I

.field private mWaitingForToday:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 186
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mScrollingEnabled:Z

    .line 77
    iput v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mViewMode:I

    .line 95
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mCanDrawBackgroundImage:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mCanChipBeClickable:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mHasMonthHeaderImage:Z

    .line 98
    iput v2, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mGestureCount:I

    .line 103
    iput v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mCurrentItemPosition:I

    .line 105
    new-instance v0, Lcom/android/calendar/timely/TimelineRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/TimelineRecyclerView$1;-><init>(Lcom/android/calendar/timely/TimelineRecyclerView;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAccessibilityAnnounce:Ljava/lang/Runnable;

    .line 187
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 189
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/TimelineRecyclerView$ClearSelectedHourListener;-><init>(Lcom/android/calendar/timely/TimelineRecyclerView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mClearSelectedHourDetector:Landroid/view/GestureDetector;

    .line 191
    iput v2, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mScrollState:I

    .line 192
    iput v2, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mScrollingDirection:I

    .line 193
    iput-boolean v2, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mNeedsUpdateWhenIdle:Z

    .line 194
    iput-boolean v2, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mWaitingForToday:Z

    .line 195
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mRecycleTime:Lcom/android/calendar/time/Time;

    .line 196
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAgendaScrollOffsetNow:I

    .line 198
    new-instance v0, Lcom/android/calendar/timely/TimelineRecyclerView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/timely/TimelineRecyclerView$3;-><init>(Lcom/android/calendar/timely/TimelineRecyclerView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 206
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 207
    new-instance v0, Lcom/android/calendar/timely/TimelineAdapter;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/TimelineAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    .line 208
    invoke-virtual {p0, p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/TimelineRecyclerView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mCurrentItemPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/TimelineRecyclerView;)Lcom/android/calendar/timely/TimelineAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/TimelineRecyclerView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->updateIfIdleAndNeeded()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/TimelineRecyclerView;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->onDataReady()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/TimelineRecyclerView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAgendaScrollOffsetNow:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/TimelineRecyclerView;)Lcom/android/calendar/time/Time;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mRecycleTime:Lcom/android/calendar/time/Time;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/calendar/timely/TimelineRecyclerView;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mIsPositioningToToday:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/calendar/timely/TimelineRecyclerView;)Lcom/android/calendar/timely/TimelineRecyclerView$OnTimelinePositionChangedListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelinePositionChangedListener:Lcom/android/calendar/timely/TimelineRecyclerView$OnTimelinePositionChangedListener;

    return-object v0
.end method

.method private getOffsetForPosition(IZZ)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 516
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->inGridMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    :cond_0
    :goto_0
    return v1

    .line 520
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 522
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAgendaScrollOffsetNow:I

    .line 523
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_4

    .line 524
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->isFirstOpenToday()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mWaitingForToday:Z

    .line 532
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelineAdapter;->getHeaderView(I)Lcom/android/calendar/timely/TimelineRecyclerView$HeaderViewDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineRecyclerView$HeaderViewDescriptor;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 534
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    neg-int v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 524
    goto :goto_1

    .line 526
    :cond_4
    if-eqz v0, :cond_5

    move v1, v0

    .line 527
    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_2
.end method

.method public static getPosition(Lcom/android/calendar/time/Time;)I
    .locals 4

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    .line 429
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractTimelineGridFragment;->getPositionFromJulianDay(I)I

    move-result v0

    return v0
.end method

.method private getScrollingDirection()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mScrollingDirection:I

    return v0
.end method

.method private isFirstOpenToday()Z
    .locals 4

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 548
    const-string v1, "preferences_last_day_opened"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 549
    new-instance v2, Lcom/android/calendar/time/Time;

    invoke-direct {v2}, Lcom/android/calendar/time/Time;-><init>()V

    .line 550
    invoke-virtual {v2}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 552
    iget v3, v2, Lcom/android/calendar/time/Time;->yearDay:I

    if-eq v1, v3, :cond_0

    .line 555
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preferences_last_day_opened"

    iget v2, v2, Lcom/android/calendar/time/Time;->yearDay:I

    .line 556
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 557
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 558
    const/4 v0, 0x1

    .line 561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIdle()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 455
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 456
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mScrollState:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mGestureCount:I

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 455
    goto :goto_0

    :cond_1
    move v1, v2

    .line 456
    goto :goto_1
.end method

.method private onDataReady()V
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 307
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mLastGotoTime:Lcom/android/calendar/time/Time;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mRecycleTime:Lcom/android/calendar/time/Time;

    iget-object v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mLastGotoTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->set(Lcom/android/calendar/time/Time;)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mLastGotoTime:Lcom/android/calendar/time/Time;

    .line 310
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mRecycleTime:Lcom/android/calendar/time/Time;

    iget-boolean v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mLastAutoScroll:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->goTo(Lcom/android/calendar/time/Time;Z)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mRecycleTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 313
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mRecycleTime:Lcom/android/calendar/time/Time;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->goTo(Lcom/android/calendar/time/Time;Z)V

    goto :goto_0
.end method

.method private updateIfIdleAndNeeded()V
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mNeedsUpdateWhenIdle:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mNeedsUpdateWhenIdle:Z

    .line 462
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->updateVisibleViews()V

    .line 464
    :cond_0
    return-void
.end method

.method private updateVisibleViews()V
    .locals 4

    .prologue
    .line 502
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 503
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyDayView;

    .line 504
    iget-object v2, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getFirstChildPosition()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3, v0}, Lcom/android/calendar/timely/TimelineAdapter;->updateView(ILcom/android/calendar/timely/TimelyDayView;)Lcom/android/calendar/timely/MonthData;

    .line 502
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 506
    :cond_0
    return-void
.end method


# virtual methods
.method public canDrawBackgroundImage()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mCanDrawBackgroundImage:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mScrollingEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 440
    const/4 v0, 0x1

    .line 443
    :goto_0
    return v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mClearSelectedHourDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 443
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getFirstChildPosition()I
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getGridModeRatio()F
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mSparseBusyRatio:F

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mScrollState:I

    return v0
.end method

.method public getTodayViewIfVisible()Lcom/android/calendar/timely/TimelyDayView;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 867
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mRecycleTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 868
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mRecycleTime:Lcom/android/calendar/time/Time;

    invoke-static {v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->getPosition(Lcom/android/calendar/time/Time;)I

    move-result v1

    .line 869
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getFirstVisiblePosition()I

    move-result v2

    .line 870
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getLastVisiblePosition()I

    move-result v3

    .line 872
    if-lt v1, v2, :cond_0

    if-le v1, v3, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-object v0

    .line 876
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getFirstChildPosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 877
    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 881
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyDayView;

    goto :goto_0
.end method

.method public goTo(Lcom/android/calendar/time/Time;Z)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 336
    const-string v0, "TimelyListView goTo"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 340
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mLastGotoTime:Lcom/android/calendar/time/Time;

    .line 341
    iput-boolean p2, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mLastAutoScroll:Z

    .line 374
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-static {p1}, Lcom/android/calendar/timely/TimelineRecyclerView;->getPosition(Lcom/android/calendar/time/Time;)I

    move-result v8

    .line 349
    invoke-virtual {p0, v7, v8}, Lcom/android/calendar/timely/TimelineRecyclerView;->setScrollingDirection(II)V

    .line 351
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    invoke-virtual {v0, v8, v7}, Lcom/android/calendar/timely/TimelineAdapter;->refresh(IZ)V

    .line 354
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 356
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mRecycleTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 361
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mRecycleTime:Lcom/android/calendar/time/Time;

    invoke-static {v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getPosition(Lcom/android/calendar/time/Time;)I

    move-result v0

    if-ne v8, v0, :cond_2

    const/4 v7, 0x1

    :cond_2
    iput-boolean v7, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mIsPositioningToToday:Z

    .line 363
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mIsPositioningToToday:Z

    invoke-direct {p0, v8, p2, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getOffsetForPosition(IZZ)I

    move-result v0

    .line 366
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getFirstChildPosition()I

    move-result v1

    sub-int/2addr v1, v8

    .line 367
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_3

    .line 369
    invoke-virtual {p0, v8, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->setSelectionFromTop(II)V

    .line 373
    :goto_1
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_0

    .line 371
    :cond_3
    invoke-virtual {p0, v8, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->setSelectionFromTop(II)V

    goto :goto_1
.end method

.method public inGridMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 595
    iget v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mViewMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inListView()Z
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lcom/android/calendar/timely/DataFactory;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/OnTimelineModeChangedListener;Lcom/android/calendar/timely/TimelineRecyclerView$OnTimelinePositionChangedListener;Lcom/android/calendar/timely/OnTimelineGestureListener;)V
    .locals 6

    .prologue
    .line 216
    iput-object p5, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    .line 217
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAgendaScrollOffsetNow:I

    .line 218
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    .line 219
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/timely/TimelineAdapter;->initialize(Lcom/android/calendar/timely/DataFactory;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/timely/OnTimelineModeChangedListener;Lcom/android/calendar/timely/OnTimelineGestureListener;)V

    .line 222
    invoke-virtual {p1, p0}, Lcom/android/calendar/timely/DataFactory;->registerOnAllEventsDataReadyListener(Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;)V

    .line 223
    iput-object p3, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    .line 224
    iput-object p4, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelinePositionChangedListener:Lcom/android/calendar/timely/TimelineRecyclerView$OnTimelinePositionChangedListener;

    .line 225
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mIsAnimating:Z

    return v0
.end method

.method public isChipClickable()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mCanChipBeClickable:Z

    return v0
.end method

.method public isSingleDayOnly()Z
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method logListModeState()V
    .locals 3

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 571
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->inGridMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    sget v0, Lcom/android/calendar/R$string;->analytics_day_grid_view:I

    .line 573
    :goto_0
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v2

    .line 574
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/android/calendar/AnalyticsLogger;->trackView(Landroid/content/Context;Ljava/lang/String;)V

    .line 575
    return-void

    .line 572
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->analytics_agenda_view:I

    goto :goto_0
.end method

.method public onAllEventsDataReady()V
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mNeedsUpdateWhenIdle:Z

    .line 493
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->updateIfIdleAndNeeded()V

    .line 494
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 852
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mOriginalRatio:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->setGridMode(Z)V

    .line 853
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->setEnabled(Z)V

    .line 854
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/TimelineRecyclerView;->setIsAnimating(Z)V

    .line 855
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    invoke-interface {v0}, Lcom/android/calendar/timely/OnTimelineModeChangedListener;->onModeChangeFinished()V

    .line 856
    return-void

    :cond_0
    move v0, v2

    .line 852
    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 832
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildCount()I

    move-result v4

    move v3, v2

    .line 833
    :goto_0
    if-ge v3, v4, :cond_0

    .line 834
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyDayView;

    .line 835
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->invalidate()V

    .line 837
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->invalidateChips()V

    .line 833
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 840
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 841
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getGridModeRatio()F

    move-result v0

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v0, v1

    .line 842
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->setGridMode(Z)V

    .line 843
    sget v4, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v0, :cond_2

    .line 844
    sget v0, Lcom/android/calendar/R$id;->hourly_view:I

    .line 843
    :goto_2
    invoke-static {v3, v4, v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->setLastUsedView(Landroid/content/Context;ZI)V

    .line 845
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->setEnabled(Z)V

    .line 846
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/TimelineRecyclerView;->setIsAnimating(Z)V

    .line 847
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    invoke-interface {v0}, Lcom/android/calendar/timely/OnTimelineModeChangedListener;->onModeChangeFinished()V

    .line 848
    return-void

    :cond_1
    move v0, v2

    .line 841
    goto :goto_1

    .line 844
    :cond_2
    sget v0, Lcom/android/calendar/R$id;->agenda_view:I

    goto :goto_2
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 861
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 803
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->setIsAnimating(Z)V

    .line 804
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/TimelineRecyclerView;->setEnabled(Z)V

    .line 806
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildCount()I

    move-result v3

    .line 807
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->inGridMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mOldOffsetFromTop:I

    neg-int v0, v0

    move v1, v0

    .line 808
    :goto_0
    if-ge v2, v3, :cond_3

    .line 809
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyDayView;

    .line 810
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->getPosition()I

    move-result v4

    iget v5, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mPosition:I

    if-ne v4, v5, :cond_2

    .line 811
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->getStickyAllDayEventsView()Lcom/android/calendar/timely/StickyAllDayEventsView;

    move-result-object v0

    .line 812
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/StickyAllDayEventsView;->setGridOffset(I)V

    .line 813
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->inGridMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    iget v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAllDayEventsHeight:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/StickyAllDayEventsView;->setGridHeight(I)V

    .line 815
    iget v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAllDayEventsScroll:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/StickyAllDayEventsView;->setGridScrollPosition(I)V

    .line 827
    :cond_0
    :goto_1
    return-void

    .line 807
    :cond_1
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mNewOffsetFromTop:I

    neg-int v0, v0

    move v1, v0

    goto :goto_0

    .line 808
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 823
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->inGridMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    iget v2, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mPosition:I

    iget v3, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAllDayEventsHeight:I

    iget v4, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAllDayEventsScroll:I

    .line 825
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->inGridMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mOldOffsetFromTop:I

    neg-int v0, v0

    .line 824
    :goto_2
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/calendar/timely/TimelineAdapter;->setAnimationValues(IIII)V

    goto :goto_1

    .line 825
    :cond_4
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mNewOffsetFromTop:I

    neg-int v0, v0

    goto :goto_2
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 768
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 769
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->setGridModeRatio(F)V

    .line 770
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildCount()I

    move-result v3

    .line 771
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 772
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/TimelineRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelyDayView;

    .line 773
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyDayView;->requestLayout()V

    .line 771
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 775
    :cond_0
    iget v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mOriginalRatio:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 776
    :goto_1
    iget v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mOldOffsetFromTop:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mNewOffsetFromTop:I

    iget v3, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mOldOffsetFromTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 778
    iget v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mPosition:I

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->setSelectionFromTop(II)V

    .line 779
    return-void

    .line 775
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v1, v0

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 240
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 244
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0}, Lcom/android/calendar/timely/DataFactory;->getDataToday()Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    .line 245
    new-instance v1, Lcom/android/calendar/timely/TimelineRecyclerView$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/TimelineRecyclerView$4;-><init>(Lcom/android/calendar/timely/TimelineRecyclerView;)V

    .line 289
    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/timely/MonthData;->registerListener(ILcom/android/calendar/timely/DataFactory$OnUpdateListener;)V

    .line 291
    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-interface {v1}, Lcom/android/calendar/timely/DataFactory$OnUpdateListener;->getListenerTag()I

    move-result v2

    invoke-interface {v1}, Lcom/android/calendar/timely/DataFactory$OnUpdateListener;->getListenerTagType()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/android/calendar/timely/MonthData;->unregisterListener(II)Z

    .line 294
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->onDataReady()V

    .line 297
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->setActive(Z)V

    .line 298
    return-void
.end method

.method public onCreateNewEventTimeChanged(J)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineAdapter;->notifyDataSetChanged()V

    .line 121
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 940
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 941
    if-ne v0, v1, :cond_0

    .line 944
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 945
    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 948
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onMeasure(II)V

    .line 949
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 917
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 919
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 922
    :cond_0
    return-void
.end method

.method public onScrolled(II)V
    .locals 1

    .prologue
    .line 926
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 928
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mScrollingEnabled:Z

    if-nez v0, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getFirstChildPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->updateCurrentHeaderPosition(I)V

    .line 933
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0
.end method

.method public onSwipeGestureEnd(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    invoke-interface {v0, p1}, Lcom/android/calendar/timely/OnTimelineGestureListener;->onSwipeGestureEnd(Lcom/android/calendar/timely/TimelyChip;)V

    .line 143
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mGestureCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mGestureCount:I

    .line 144
    new-instance v0, Lcom/android/calendar/timely/TimelineRecyclerView$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/TimelineRecyclerView$2;-><init>(Lcom/android/calendar/timely/TimelineRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method public onSwipeGestureStart(Lcom/android/calendar/timely/TimelyChip;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    invoke-interface {v0, p1}, Lcom/android/calendar/timely/OnTimelineGestureListener;->onSwipeGestureStart(Lcom/android/calendar/timely/TimelyChip;)V

    .line 135
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mGestureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mGestureCount:I

    .line 136
    return-void
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/calendar/timely/TimelyDayView;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->recycleDayView()V

    .line 329
    :cond_0
    return-void
.end method

.method public onWeekDividerTap(Lcom/android/calendar/timely/TimelyDayView;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineGestureListener:Lcom/android/calendar/timely/OnTimelineGestureListener;

    invoke-interface {v0, p1}, Lcom/android/calendar/timely/OnTimelineGestureListener;->onWeekDividerTap(Lcom/android/calendar/timely/TimelyDayView;)V

    .line 128
    :cond_0
    return-void
.end method

.method public refresh(Lcom/android/calendar/time/Time;)V
    .locals 3

    .prologue
    .line 422
    invoke-static {p1}, Lcom/android/calendar/timely/TimelineRecyclerView;->getPosition(Lcom/android/calendar/time/Time;)I

    move-result v0

    .line 423
    iget-object v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/timely/TimelineAdapter;->refresh(IZ)V

    .line 424
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .prologue
    .line 229
    if-nez p3, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 0

    .prologue
    .line 912
    iput-boolean p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mScrollingEnabled:Z

    .line 913
    return-void
.end method

.method public setAgendaScrollOffsetToNow(I)V
    .locals 2

    .prologue
    .line 723
    iput p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAgendaScrollOffsetNow:I

    .line 725
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mWaitingForToday:Z

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/TimelineRecyclerView$5;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/TimelineRecyclerView$5;-><init>(Lcom/android/calendar/timely/TimelineRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 752
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mWaitingForToday:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mIsPositioningToToday:Z

    if-eqz v0, :cond_2

    .line 753
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mWaitingForToday:Z

    .line 755
    new-instance v0, Lcom/android/calendar/timely/TimelineRecyclerView$6;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/TimelineRecyclerView$6;-><init>(Lcom/android/calendar/timely/TimelineRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 764
    :cond_2
    return-void
.end method

.method public setForceShowPosition(I)V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelineAdapter;->setForceShowPosition(I)V

    .line 567
    return-void
.end method

.method public setGridMode(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 578
    iget v2, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mViewMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    move v2, v0

    .line 579
    :goto_0
    if-eqz p1, :cond_0

    move v1, v0

    .line 580
    :cond_0
    if-eqz p1, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->setGridModeRatio(F)V

    .line 581
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mViewMode:I

    if-eq v1, v0, :cond_2

    .line 582
    iput v1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mViewMode:I

    .line 583
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_1

    .line 585
    const-string v1, "preference_key_grid_mode"

    invoke-static {v0, v1, p1}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 587
    :cond_1
    if-nez v2, :cond_2

    .line 588
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->logListModeState()V

    .line 591
    :cond_2
    return-void

    :cond_3
    move v2, v1

    .line 578
    goto :goto_0

    .line 580
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setGridModeRatio(F)V
    .locals 0

    .prologue
    .line 609
    iput p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mSparseBusyRatio:F

    .line 610
    return-void
.end method

.method public setIsAnimating(Z)V
    .locals 0

    .prologue
    .line 648
    iput-boolean p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mIsAnimating:Z

    .line 649
    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 899
    return-void
.end method

.method public setScrollState(I)V
    .locals 2

    .prologue
    .line 447
    iput p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mScrollState:I

    .line 448
    if-nez p1, :cond_0

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/TimelineRecyclerView;->setScrollingDirection(II)V

    .line 451
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->updateIfIdleAndNeeded()V

    .line 452
    return-void
.end method

.method public setScrollingDirection(II)V
    .locals 1

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getScrollingDirection()I

    move-result v0

    if-ne v0, p1, :cond_0

    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mFirstVisiblePosition:I

    if-eq p2, v0, :cond_1

    .line 480
    :cond_0
    iput p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mScrollingDirection:I

    .line 481
    iput p2, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mFirstVisiblePosition:I

    .line 482
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/timely/TimelineAdapter;->setScrollingVelocity(II)V

    .line 484
    :cond_1
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 786
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/TimelineRecyclerView$7;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/timely/TimelineRecyclerView$7;-><init>(Lcom/android/calendar/timely/TimelineRecyclerView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 799
    return-void
.end method

.method public shouldDrawDayHeader()Z
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDrawExtraHeaders()Z
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDrawMonthHeader(Landroid/content/res/Resources;)Z
    .locals 1

    .prologue
    .line 713
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mHasMonthHeaderImage:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/calendar/R$bool;->show_timeline_month_header_images:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldDrawMonthInDayHeader()Z
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDrawNoEventsView()Z
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDrawNowLine()Z
    .locals 1

    .prologue
    .line 688
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDrawYearHeader()Z
    .locals 1

    .prologue
    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method public startGridModeTransition(IIIII)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v2, 0x2

    const/high16 v1, 0x3f000000    # 0.5f

    .line 619
    iget-boolean v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mIsAnimating:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    iput p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mPosition:I

    .line 624
    iput p2, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mOldOffsetFromTop:I

    .line 625
    iput p4, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAllDayEventsHeight:I

    .line 626
    iput p5, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAllDayEventsScroll:I

    .line 628
    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getGridModeRatio()F

    move-result v0

    .line 630
    iput v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mOriginalRatio:F

    .line 633
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mOriginalRatio:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :goto_1
    iput p3, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mNewOffsetFromTop:I

    .line 635
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mOriginalRatio:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 636
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 637
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 642
    :goto_2
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 643
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 644
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 633
    :cond_2
    const/4 p3, 0x0

    goto :goto_1

    .line 639
    :cond_3
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 640
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 636
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 639
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public supportsSwipe()Z
    .locals 2

    .prologue
    .line 708
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mSparseBusyRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCurrentHeaderPosition(I)V
    .locals 4

    .prologue
    .line 902
    iget v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mCurrentItemPosition:I

    if-ne v0, p1, :cond_0

    .line 909
    :goto_0
    return-void

    .line 906
    :cond_0
    iput p1, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mCurrentItemPosition:I

    .line 907
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAccessibilityAnnounce:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/TimelineRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 908
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mAccessibilityAnnounce:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/calendar/timely/TimelineRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public updateHideDeclinedPreference()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/calendar/timely/TimelineRecyclerView;->mTimelineAdapter:Lcom/android/calendar/timely/TimelineAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/timely/TimelineRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineAdapter;->setHideDeclinedEvents(Landroid/content/Context;)V

    .line 434
    return-void
.end method
