.class public Lcom/android/calendar/timely/FindTimeGridFragment;
.super Landroid/app/Fragment;
.source "FindTimeGridFragment.java"

# interfaces
.implements Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder$OnCreateCustomSuggestionListener;
.implements Lcom/android/calendar/timely/FindTimeGridUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChipComparator;,
        Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;,
        Lcom/android/calendar/timely/FindTimeGridFragment$PeekPagerHelper;,
        Lcom/android/calendar/timely/FindTimeGridFragment$PeekHandler;,
        Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;,
        Lcom/android/calendar/timely/FindTimeGridFragment$NonClickableInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAllDayEventView:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

.field private mAllDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

.field private mAttendeeFrame:Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;

.field private mAttendeeHeaderView:Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;

.field private mBestTimesCount:I

.field private mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

.field private mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private mContext:Landroid/content/Context;

.field private mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

.field private mEventChipBackgroundColor:I

.field private mEventScrollView:Lcom/android/calendar/timely/PagedScrollView;

.field private mFindTimeChipComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;",
            ">;"
        }
    .end annotation
.end field

.field private mGridData:Lcom/android/calendar/timely/FindTimeGridData;

.field private mGridDayViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;",
            ">;"
        }
    .end annotation
.end field

.field private mHoursScrollView:Lcom/android/calendar/timely/PagedScrollView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsManualTimeSlot:Z

.field private mListener:Lcom/android/calendar/timely/FindTimeGridUi$Listener;

.field private mMainContent:Landroid/widget/LinearLayout;

.field private mPeekHandler:Lcom/android/calendar/timely/FindTimeGridFragment$PeekHandler;

.field private mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

.field private mSuggestionDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

.field private mSuggestionIndex:I

.field private mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

.field private mTimezone:Ljava/util/TimeZone;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/calendar/timely/FindTimeGridFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/FindTimeGridFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridDayViews:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mIsManualTimeSlot:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridUi$Listener;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mListener:Lcom/android/calendar/timely/FindTimeGridUi$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/timely/FindTimeGridFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/timely/FindTimeGridFragment;I)Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeGridFragment;->isLastSuggestion(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/timely/FindTimeGridFragment;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeGridFragment;->updateGrid(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeAllDayHeaderView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayEventView:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAttendeeHeaderView:Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/timely/FindTimeGridFragment;)Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mTimezone:Ljava/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/timely/FindTimeGridFragment;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mBestTimesCount:I

    return v0
.end method

.method static synthetic access$1900(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->wasSlabSwiped(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/FindTimeGridFragment;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->rememberSlabSwiped()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/FindTimeGridFragment;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/calendar/timely/FindTimeGridFragment;I)I
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/TimelineSuggestion;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/timely/FindTimeGridFragment;Lcom/android/calendar/timely/TimelineSuggestion;)Lcom/android/calendar/timely/TimelineSuggestion;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridData;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/timely/FindTimeGridFragment;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mIsManualTimeSlot:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/calendar/timely/FindTimeGridFragment;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mIsManualTimeSlot:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/calendar/timely/FindTimeGridFragment;)Lcom/android/calendar/timely/FindTimeGridViewPager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/timely/FindTimeGridFragment;Lcom/android/calendar/timely/FindTimeGridSlabPage;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeGridFragment;->updateMainContentMargin(Lcom/android/calendar/timely/FindTimeGridSlabPage;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/timely/FindTimeGridFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method private announceGridFragmentIfEnabled()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/timely/FindTimeGridFragment$5;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/FindTimeGridFragment$5;-><init>(Lcom/android/calendar/timely/FindTimeGridFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private ensureEventChipColor()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridData;->getSuggestions()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    move v4, v2

    .line 361
    :goto_0
    if-ge v4, v5, :cond_3

    .line 362
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;

    .line 363
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridData;->getSuggestions()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineSuggestion;->getAttendees()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 364
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    move v3, v2

    .line 365
    :goto_1
    if-ge v3, v7, :cond_2

    .line 366
    invoke-virtual {v6, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getAllEvents()Ljava/util/List;

    move-result-object v8

    .line 367
    if-nez v8, :cond_1

    .line 369
    sget-object v0, Lcom/android/calendar/timely/FindTimeGridFragment;->TAG:Ljava/lang/String;

    const-string v1, "attendee has null mEvents."

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v8}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 365
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 372
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v1, v2

    .line 373
    :goto_2
    if-ge v1, v9, :cond_0

    .line 374
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;

    iget v10, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mEventChipBackgroundColor:I

    iput v10, v0, Lcom/android/calendar/timely/TimelineAttendeeEvent;->color:I

    .line 373
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 361
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 378
    :cond_3
    return-void
.end method

.method private getGridDayView(I)Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridDayViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridDayViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    .line 457
    :goto_0
    return-object v0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->find_time_day_content:I

    const/4 v2, 0x0

    .line 454
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    .line 455
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->setChipRecycler(Lcom/android/calendar/timely/ChipRecycler;)V

    .line 456
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V

    goto :goto_0
.end method

.method private isLastSuggestion(I)Z
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridData;->getSuggestions()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logAction(I)V
    .locals 6

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 512
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/calendar/R$string;->analytics_action_ft_grid_view:I

    .line 513
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mContext:Landroid/content/Context;

    .line 514
    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 511
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 515
    return-void
.end method

.method public static newInstance(Lcom/android/calendar/timely/FindTimeGridData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/calendar/timely/FindTimeGridFragment;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lcom/android/calendar/timely/FindTimeGridFragment;

    invoke-direct {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;-><init>()V

    .line 110
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 111
    const-string v2, "timezone"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "account_type"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "account_name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v2, "grid_data"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    const-string v2, "best_times_count"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->setArguments(Landroid/os/Bundle;)V

    .line 117
    return-object v0
.end method

.method private rememberSlabSwiped()V
    .locals 3

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.google.android.calendar.findtime.grid.was_slab_swiped"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 757
    return-void
.end method

.method private reorderChipsTraversal()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 821
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 823
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 825
    instance-of v3, v0, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v3, :cond_0

    .line 826
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 827
    new-instance v3, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;

    iget-object v4, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAttendeeFrame:Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;

    invoke-virtual {v4}, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->getChildCount()I

    move-result v4

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    invoke-direct {v3, v4, v0}, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;-><init>(ILcom/android/calendar/timely/TimelyChip;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 832
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAttendeeFrame:Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 833
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAttendeeFrame:Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;

    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    move v4, v2

    .line 834
    :goto_2
    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 835
    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 836
    instance-of v6, v1, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v6, :cond_2

    .line 837
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setId(I)V

    .line 838
    new-instance v6, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;

    check-cast v1, Lcom/android/calendar/timely/TimelyChip;

    invoke-direct {v6, v3, v1}, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;-><init>(ILcom/android/calendar/timely/TimelyChip;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 832
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 842
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/calendar/timely/FindTimeGridFragment;->reorderChipsTraversal(Ljava/util/ArrayList;)V

    .line 843
    return-void
.end method

.method private reorderChipsTraversal(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mFindTimeChipComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 847
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 848
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;

    iget-object v0, v0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->chip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getId()I

    move-result v2

    .line 849
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;

    iget-object v0, v0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChip;->chip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/TimelyChip;->setAccessibilityTraversalBefore(I)V

    .line 847
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 851
    :cond_0
    return-void
.end method

.method private setupStatusbar()V
    .locals 4

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->createInstance(Landroid/view/Window;)Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x1

    .line 438
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$color;->quantum_grey100:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/high16 v3, -0x1000000

    .line 437
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->tryApplyLightStatusbar(ZII)V

    .line 439
    return-void
.end method

.method private updateGrid(Z)V
    .locals 8

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineSuggestion;->getStartDay()I

    move-result v2

    .line 469
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$integer;->grid_view_total_column_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 470
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/TimelineSuggestion;->getHiddenAttendeeCount(I)I

    move-result v3

    .line 472
    invoke-direct {p0, v2}, Lcom/android/calendar/timely/FindTimeGridFragment;->updateTitle(I)V

    .line 475
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    iget-object v4, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    iget-object v5, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mTimezone:Ljava/util/TimeZone;

    invoke-virtual {v1, v4, v2, v5}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->onUpdate(Lcom/android/calendar/timely/TimelineSuggestion;ILjava/util/TimeZone;)V

    .line 476
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    invoke-virtual {v1, p1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->autoScroll(Z)V

    .line 478
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 479
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/TimelineSuggestion;->getSortedAndTruncatedAttendees(I)Ljava/util/List;

    move-result-object v4

    .line 481
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAttendeeFrame:Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->removeAllViews()V

    .line 484
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 485
    invoke-direct {p0, v1}, Lcom/android/calendar/timely/FindTimeGridFragment;->getGridDayView(I)Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    move-result-object v5

    .line 486
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 487
    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/FindTimeAttendee;->getEvents(I)Ljava/util/List;

    move-result-object v6

    .line 489
    iget-object v7, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAttendeeFrame:Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;

    invoke-virtual {v7, v5}, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->addView(Landroid/view/View;)V

    .line 490
    iget-object v7, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 491
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-virtual {v5, v6, v2, v7, v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->onUpdate(Ljava/util/List;ILcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)V

    .line 484
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 493
    :cond_0
    if-lez v3, :cond_1

    .line 494
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getGridDayView(I)Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->onUpdateAsMoreAttendeeColumn()V

    .line 496
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAttendeeFrame:Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->addView(Landroid/view/View;)V

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAttendeeHeaderView:Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;

    invoke-virtual {v0, v4, v3}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->onUpdate(Ljava/util/List;I)V

    .line 503
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayEventView:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->onUpdate(Ljava/util/List;II)V

    .line 505
    invoke-static {}, Lcom/android/calendar/Utils;->isLollipopMr1OrLater()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->reorderChipsTraversal()V

    .line 508
    :cond_2
    return-void
.end method

.method private updateMainContentMargin(Lcom/android/calendar/timely/FindTimeGridSlabPage;)V
    .locals 3

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mMainContent:Landroid/widget/LinearLayout;

    .line 625
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 626
    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->getSlabBarHeight()I

    move-result v1

    .line 627
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ne v1, v2, :cond_0

    .line 632
    :goto_0
    return-void

    .line 630
    :cond_0
    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->getSlabBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 631
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mMainContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateTitle(I)V
    .locals 4

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getTodayJulianDay(Landroid/content/Context;)I

    move-result v0

    .line 608
    if-ne p1, v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->today:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 620
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    return-void

    .line 610
    :cond_0
    sub-int v1, p1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->tomorrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 612
    :cond_1
    sub-int v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 613
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->yesterday:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 615
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 616
    invoke-static {p1}, Lcom/android/calendar/Utils;->getMillisFromJulianDay(I)J

    move-result-wide v2

    const/16 v1, 0x8

    .line 615
    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static wasSlabSwiped(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 760
    const-string v0, "com.google.android.calendar.findtime.grid.was_slab_swiped"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public customizeSystemDecorations()V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->setupStatusbar()V

    .line 400
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    if-nez p1, :cond_0

    .line 139
    sget v0, Lcom/android/calendar/R$string;->analytics_label_ft_opened:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->logAction(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "grid_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeGridData;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;

    .line 142
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "best_times_count"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mBestTimesCount:I

    .line 143
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridData;->getSuggestionIndex()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I

    .line 144
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridData;->getSuggestions()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineSuggestion;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 151
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->ensureEventChipColor()V

    .line 152
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

    new-instance v1, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeGridPagerAdapter;-><init>(Lcom/android/calendar/timely/FindTimeGridFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeGridViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->updateGridView()V

    .line 154
    return-void

    .line 146
    :cond_0
    const-string v0, "current_suggestion"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineSuggestion;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 147
    const-string v0, "suggestion_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I

    .line 148
    const-string v0, "is_manual_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mIsManualTimeSlot:Z

    .line 149
    const-string v0, "grid_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeGridData;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 125
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, p1

    .line 127
    check-cast v0, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;

    invoke-interface {v0}, Lcom/android/calendar/timely/ChipRecycler$ChipRecyclerProvider;->getChipRecycler()Lcom/android/calendar/timely/ChipRecycler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 128
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 129
    new-instance v0, Lcom/android/calendar/timely/FindTimeGridFragment$NonClickableInfo;

    invoke-direct {v0}, Lcom/android/calendar/timely/FindTimeGridFragment$NonClickableInfo;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 130
    sget v0, Lcom/android/calendar/R$color;->attendee_event_background_color:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mEventChipBackgroundColor:I

    .line 131
    new-instance v0, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChipComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/timely/FindTimeGridFragment$FindTimeChipComparator;-><init>(Lcom/android/calendar/timely/FindTimeGridFragment;Lcom/android/calendar/timely/FindTimeGridFragment$1;)V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mFindTimeChipComparator:Ljava/util/Comparator;

    .line 132
    return-void
.end method

.method public onCreateCustomUserSuggestionChanged(Lcom/android/calendar/timely/TimelineSuggestion;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 408
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 409
    iput-boolean v6, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mIsManualTimeSlot:Z

    .line 410
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

    .line 411
    invoke-virtual {v1}, Lcom/android/calendar/timely/FindTimeGridViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeGridViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeGridSlabPage;

    .line 412
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mTimezone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->setTimezone(Ljava/util/TimeZone;)V

    .line 413
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/timely/FindTimeUtil;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/FindTimeUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAccountName:Ljava/lang/String;

    .line 414
    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/timely/FindTimeUtil;->getDescription(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    iget v3, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I

    .line 416
    invoke-direct {p0, v3}, Lcom/android/calendar/timely/FindTimeGridFragment;->isLastSuggestion(I)Z

    move-result v3

    .line 415
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/calendar/timely/FindTimeGridSlabPage;->setTimelineSuggestion(Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;Z)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/timely/FindTimeUtil;->getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/FindTimeUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mTimezone:Ljava/util/TimeZone;

    .line 420
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 419
    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/android/calendar/timely/FindTimeUtil;->getDisplayedDateTime(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/android/calendar/timely/TimelineSuggestion;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->accessibility_find_time_new_suggestion:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    .line 423
    invoke-virtual {p0, v3, v4}, Lcom/android/calendar/timely/FindTimeGridFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v2, v0}, Lcom/android/calendar/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 424
    invoke-static {}, Lcom/android/calendar/Utils;->isLollipopMr1OrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->reorderChipsTraversal()V

    .line 427
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->analytics_label_ft_created_manual:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->logAction(I)V

    .line 428
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 159
    sget v0, Lcom/android/calendar/R$layout;->find_time_grid_fragment:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 161
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "timezone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mTimezone:Ljava/util/TimeZone;

    .line 162
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAccountType:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAccountName:Ljava/lang/String;

    .line 165
    sget v0, Lcom/android/calendar/R$id;->toolbar:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 166
    sget v1, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mTitleView:Landroid/widget/TextView;

    .line 167
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 168
    new-instance v1, Lcom/android/calendar/timely/FindTimeGridFragment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/FindTimeGridFragment$1;-><init>(Lcom/android/calendar/timely/FindTimeGridFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    sget v0, Lcom/android/calendar/R$id;->main_content:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mMainContent:Landroid/widget/LinearLayout;

    .line 178
    sget v0, Lcom/android/calendar/R$id;->attendee_frame:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAttendeeFrame:Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;

    .line 179
    sget v0, Lcom/android/calendar/R$id;->find_time_attendee_info:I

    .line 180
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAttendeeHeaderView:Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;

    .line 181
    sget v0, Lcom/android/calendar/R$id;->find_time_all_day:I

    .line 182
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayEventView:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    .line 183
    sget v0, Lcom/android/calendar/R$id;->find_time_header_arrow:I

    .line 184
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    .line 186
    sget v0, Lcom/android/calendar/R$id;->pager:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeGridViewPager;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

    .line 187
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

    new-instance v1, Lcom/android/calendar/timely/FindTimeGridFragment$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/FindTimeGridFragment$2;-><init>(Lcom/android/calendar/timely/FindTimeGridFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeGridViewPager;->setSwipeAwareOnPageChangeListener(Lcom/android/calendar/timely/FindTimeGridViewPager$SwipeAwareOnPageChangeListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    new-instance v1, Lcom/android/calendar/timely/FindTimeGridFragment$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/FindTimeGridFragment$3;-><init>(Lcom/android/calendar/timely/FindTimeGridFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayEventView:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    new-instance v1, Lcom/android/calendar/timely/FindTimeGridFragment$4;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/timely/FindTimeGridFragment$4;-><init>(Lcom/android/calendar/timely/FindTimeGridFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->setMeasurementChangedListener(Lcom/android/calendar/timely/FindTimeAllDayHeaderView$OnMeasurementChangedListener;)V

    .line 259
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayEventView:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->setChipRecycler(Lcom/android/calendar/timely/ChipRecycler;)V

    .line 260
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAllDayEventView:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V

    .line 262
    sget v0, Lcom/android/calendar/R$id;->suggestion_day_view:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    .line 263
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->setChipRecycler(Lcom/android/calendar/timely/ChipRecycler;)V

    .line 264
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V

    .line 265
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->setAccountType(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->setAccountName(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mAttendeeFrame:Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->setSuggestionGridDayView(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)V

    .line 270
    new-instance v0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    invoke-direct {v0, v6}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;-><init>(Z)V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    .line 271
    sget v0, Lcom/android/calendar/R$id;->main_grid:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PagedScrollView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mEventScrollView:Lcom/android/calendar/timely/PagedScrollView;

    .line 272
    sget v0, Lcom/android/calendar/R$id;->hours_scroll:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PagedScrollView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mHoursScrollView:Lcom/android/calendar/timely/PagedScrollView;

    .line 273
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mEventScrollView:Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->add(Lcom/android/calendar/timely/PagedScrollView;)V

    .line 274
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mHoursScrollView:Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->add(Lcom/android/calendar/timely/PagedScrollView;)V

    .line 275
    new-instance v0, Lcom/android/calendar/timely/FindTimeGridFragment$PeekHandler;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

    invoke-direct {v0, v1, v3}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekHandler;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/FindTimeGridViewPager;)V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mPeekHandler:Lcom/android/calendar/timely/FindTimeGridFragment$PeekHandler;

    .line 276
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mPeekHandler:Lcom/android/calendar/timely/FindTimeGridFragment$PeekHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v6, v4, v5}, Lcom/android/calendar/timely/FindTimeGridFragment$PeekHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 278
    invoke-static {}, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;->getInstance()Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;

    move-result-object v0

    .line 279
    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;->registerCreateCustomSuggestionListener(Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder$OnCreateCustomSuggestionListener;)V

    .line 280
    return-object v2
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 318
    invoke-static {}, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;->getInstance()Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Lcom/android/calendar/timely/CustomUserSuggestionListenerHolder;->unregisterCreateCustomSuggestionListeners()V

    .line 320
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 295
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->announceGridFragmentIfEnabled()V

    .line 296
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 286
    const-string v0, "current_suggestion"

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 287
    const-string v0, "suggestion_index"

    iget v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    const-string v0, "is_manual_time"

    iget-boolean v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mIsManualTimeSlot:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    const-string v0, "grid_data"

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 290
    return-void
.end method

.method public setListener(Lcom/android/calendar/timely/FindTimeGridUi$Listener;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mListener:Lcom/android/calendar/timely/FindTimeGridUi$Listener;

    .line 395
    return-void
.end method

.method updateGridData(Lcom/android/calendar/timely/FindTimeGridData;I)V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridData;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeGridData;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 330
    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeGridData;->getSuggestionIndex()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I

    .line 331
    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeGridData;->getSuggestions()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineSuggestion;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mCurrentSuggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mIsManualTimeSlot:Z

    .line 333
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeGridFragment;->ensureEventChipColor()V

    .line 335
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mGridData:Lcom/android/calendar/timely/FindTimeGridData;

    .line 336
    iput p2, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mBestTimesCount:I

    .line 337
    return-void
.end method

.method updateGridView()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

    iget v1, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mSuggestionIndex:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/FindTimeGridViewPager;->setCurrentItem(I)V

    .line 341
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeGridFragment;->mBottomPager:Lcom/android/calendar/timely/FindTimeGridViewPager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 344
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/calendar/timely/FindTimeGridFragment$6;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/FindTimeGridFragment$6;-><init>(Lcom/android/calendar/timely/FindTimeGridFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->updateGrid(Z)V

    .line 357
    return-void
.end method
