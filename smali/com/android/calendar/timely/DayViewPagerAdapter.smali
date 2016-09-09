.class public Lcom/android/calendar/timely/DayViewPagerAdapter;
.super Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;
.source "DayViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/DayViewPagerAdapter$AllDayLayoutListener;
    }
.end annotation


# instance fields
.field private final mAllDayLayoutListener:Lcom/android/calendar/timely/DayViewPagerAdapter$AllDayLayoutListener;

.field private mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private mEnabled:Z

.field private final mIsTablet:Z

.field private final mItemsToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/PagedDayView;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemsToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/PagedDayView;",
            ">;"
        }
    .end annotation
.end field

.field private mManualScrollPosition:I

.field private mManualScrollPositionTime:Lcom/android/calendar/time/Time;

.field private mPrimaryPage:Lcom/android/calendar/timely/PagedDayView;

.field private final mRecycledViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/PagedDayView;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

.field private mSetNextScrollPositionManually:Z

.field private final mStickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

.field private mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

.field private mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;-><init>()V

    .line 64
    new-instance v0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    invoke-direct {v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mRecycledViews:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    .line 69
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mIsTablet:Z

    .line 71
    new-instance v2, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mIsTablet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;-><init>(Landroid/content/res/Resources;Z)V

    iput-object v2, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mStickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/DayViewPagerAdapter;->setNextScrollPositionManually(Z)V

    .line 75
    new-instance v0, Lcom/android/calendar/timely/DayViewPagerAdapter$AllDayLayoutListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/timely/DayViewPagerAdapter$AllDayLayoutListener;-><init>(Lcom/android/calendar/timely/DayViewPagerAdapter;Lcom/android/calendar/timely/DayViewPagerAdapter$1;)V

    iput-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mAllDayLayoutListener:Lcom/android/calendar/timely/DayViewPagerAdapter$AllDayLayoutListener;

    .line 76
    return-void

    :cond_0
    move v0, v1

    .line 71
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/DayViewPagerAdapter;)Lcom/android/calendar/timely/PagedScrollView$ScrollManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 306
    check-cast p3, Lcom/android/calendar/timely/PagedDayView;

    .line 307
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mStickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    invoke-virtual {p3}, Lcom/android/calendar/timely/PagedDayView;->getAllDayContent()Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->removePage(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V

    .line 308
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mRecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    invoke-virtual {p3}, Lcom/android/calendar/timely/PagedDayView;->getPagedScrollView()Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->remove(Lcom/android/calendar/timely/PagedScrollView;)V

    .line 311
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 320
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 322
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 205
    const/16 v0, 0x5f9f

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 82
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/calendar/timely/PagedDayView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/android/calendar/timely/PagedDayView;

    .line 84
    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->invalidate()V

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getManualScrollPosition()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mManualScrollPosition:I

    return v0
.end method

.method public getManualScrollPositionTime()Lcom/android/calendar/time/Time;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mManualScrollPositionTime:Lcom/android/calendar/time/Time;

    return-object v0
.end method

.method public initialize(Lcom/android/calendar/timely/DataFactory;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/OnTimelineModeChangedListener;)V
    .locals 1

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    .line 95
    new-instance v0, Lcom/android/calendar/timely/DayViewPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/DayViewPagerAdapter$1;-><init>(Lcom/android/calendar/timely/DayViewPagerAdapter;)V

    iput-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 175
    iput-object p3, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    .line 176
    iput-object p2, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 177
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 216
    const-string v0, "PagedDayView instantiateItem"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mRecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mRecycledViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PagedDayView;

    .line 220
    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getListenerTag()I

    move-result v1

    .line 221
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v2, v1}, Lcom/android/calendar/timely/DataFactory;->getDataAllowNull(I)Lcom/android/calendar/timely/MonthData;

    move-result-object v2

    .line 224
    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getListenerTagType()I

    move-result v3

    .line 228
    invoke-virtual {v2, v1, v3}, Lcom/android/calendar/timely/MonthData;->unregisterListener(II)Z

    :cond_0
    move-object v1, v0

    .line 238
    :goto_0
    const/4 v0, 0x1

    if-gt p2, v0, :cond_2

    .line 241
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 287
    :goto_1
    return-object v1

    .line 232
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$layout;->paged_day_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PagedDayView;

    .line 234
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    iget-object v3, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    iget-object v4, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mTimelineModeChangedListener:Lcom/android/calendar/timely/OnTimelineModeChangedListener;

    iget-object v5, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mStickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/timely/PagedDayView;->initialize(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/timely/OnTimelineModeChangedListener;Lcom/android/calendar/timely/gridviews/StickyAllDayManager;)V

    move-object v1, v0

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/android/calendar/timely/DayViewPagerAdapter;->updateView(ILcom/android/calendar/timely/PagedDayView;)Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    .line 247
    iget-object v2, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v6}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    .line 249
    iget-object v2, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->getEndDay()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v6}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    .line 252
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    invoke-virtual {v1}, Lcom/android/calendar/timely/PagedDayView;->getPagedScrollView()Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->add(Lcom/android/calendar/timely/PagedScrollView;)V

    .line 256
    invoke-virtual {v1}, Lcom/android/calendar/timely/PagedDayView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/android/calendar/timely/DayViewPagerAdapter$2;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/timely/DayViewPagerAdapter$2;-><init>(Lcom/android/calendar/timely/DayViewPagerAdapter;Lcom/android/calendar/timely/PagedDayView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 283
    iget-boolean v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mEnabled:Z

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/PagedDayView;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mStickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    invoke-virtual {v1}, Lcom/android/calendar/timely/PagedDayView;->getAllDayContent()Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/calendar/timely/PagedDayView;->getAllDayScrollView()Landroid/widget/ScrollView;

    move-result-object v3

    .line 285
    invoke-virtual {v1}, Lcom/android/calendar/timely/PagedDayView;->getPagedScrollView()Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/calendar/timely/PagedDayView;->getHeaderArrow()Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/calendar/timely/PagedDayView;->getCollapseButton()Landroid/view/View;

    move-result-object v6

    .line 284
    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->addPage(Landroid/view/View;Lcom/android/calendar/timely/gridviews/AllDayHeaderView;Landroid/widget/ScrollView;Lcom/android/calendar/timely/PagedScrollView;Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;Landroid/view/View;)V

    .line 286
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_1
.end method

.method public isNextScrollPositionSetManually()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mSetNextScrollPositionManually:Z

    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 341
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public manuallySetScrollPosition(Lcom/android/calendar/timely/PagedDayView;)V
    .locals 3

    .prologue
    .line 378
    .line 379
    invoke-virtual {p1}, Lcom/android/calendar/timely/PagedDayView;->getTimelyDayView()Lcom/android/calendar/timely/TimelyDayView;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourStartOffset()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 382
    invoke-virtual {p1}, Lcom/android/calendar/timely/PagedDayView;->getPagedScrollView()Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v1

    .line 383
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/PagedScrollView;->computeScrollPositionFromBottom(I)I

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    invoke-virtual {p1}, Lcom/android/calendar/timely/PagedDayView;->getPagedScrollView()Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->onVerticalScrollChanged(Landroid/view/View;I)V

    .line 387
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    invoke-virtual {p1}, Lcom/android/calendar/timely/PagedDayView;->getPagedScrollView()Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->updateViewScrollPosition(Lcom/android/calendar/timely/PagedScrollView;Z)V

    .line 388
    return-void
.end method

.method public manuallySetScrollPosition(Lcom/android/calendar/timely/PagedDayView;Lcom/android/calendar/time/Time;)V
    .locals 3

    .prologue
    .line 392
    invoke-virtual {p1}, Lcom/android/calendar/timely/PagedDayView;->getTimelyDayView()Lcom/android/calendar/timely/TimelyDayView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/calendar/timely/TimelyDayView;->getGridTimeStartOffset(Lcom/android/calendar/time/Time;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 394
    invoke-virtual {p1}, Lcom/android/calendar/timely/PagedDayView;->getPagedScrollView()Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/PagedScrollView;->computeScrollPositionFromBottom(I)I

    move-result v0

    .line 397
    iget-object v1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    invoke-virtual {p1}, Lcom/android/calendar/timely/PagedDayView;->getPagedScrollView()Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->onVerticalScrollChanged(Landroid/view/View;I)V

    .line 398
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    invoke-virtual {p1}, Lcom/android/calendar/timely/PagedDayView;->getPagedScrollView()Lcom/android/calendar/timely/PagedScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->updateViewScrollPosition(Lcom/android/calendar/timely/PagedScrollView;Z)V

    .line 399
    return-void
.end method

.method public refresh(IZ)V
    .locals 3

    .prologue
    .line 185
    if-eqz p2, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0}, Lcom/android/calendar/timely/DataFactory;->updateToday()V

    .line 190
    :cond_0
    const v0, 0x253d8c    # 3.419992E-39f

    add-int/2addr v0, p1

    .line 191
    iget-object v1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Lcom/android/calendar/timely/DataFactory;->refreshDataAroundDay(IZZ)V

    .line 192
    return-void
.end method

.method public rememberPositionToScrollTo(ILcom/android/calendar/time/Time;)V
    .locals 0

    .prologue
    .line 369
    iput p1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mManualScrollPosition:I

    .line 370
    iput-object p2, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mManualScrollPositionTime:Lcom/android/calendar/time/Time;

    .line 371
    return-void
.end method

.method protected setDataFactory(Lcom/android/calendar/timely/DataFactory;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    .line 182
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mEnabled:Z

    .line 403
    return-void
.end method

.method public setFocusPosition(I)V
    .locals 3

    .prologue
    .line 199
    const v0, 0x253d8c    # 3.419992E-39f

    add-int/2addr v0, p1

    .line 200
    iget-object v1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/timely/DataFactory;->setTimePassage(II)V

    .line 201
    return-void
.end method

.method public setNextScrollPositionManually(Z)V
    .locals 0

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mSetNextScrollPositionManually:Z

    .line 354
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mPrimaryPage:Lcom/android/calendar/timely/PagedDayView;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mPrimaryPage:Lcom/android/calendar/timely/PagedDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getAllDayLinearLayout()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mAllDayLayoutListener:Lcom/android/calendar/timely/DayViewPagerAdapter$AllDayLayoutListener;

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 335
    :cond_0
    check-cast p3, Lcom/android/calendar/timely/PagedDayView;

    iput-object p3, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mPrimaryPage:Lcom/android/calendar/timely/PagedDayView;

    .line 336
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mPrimaryPage:Lcom/android/calendar/timely/PagedDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedDayView;->getAllDayLinearLayout()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mAllDayLayoutListener:Lcom/android/calendar/timely/DayViewPagerAdapter$AllDayLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 337
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 211
    iget-object v0, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mItemsToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    return-void
.end method

.method public updateView(ILcom/android/calendar/timely/PagedDayView;)Lcom/android/calendar/timely/MonthData;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    const-string v0, "DayViewPagerAdapter updateView"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 292
    const v0, 0x253d8c    # 3.419992E-39f

    add-int/2addr v0, p1

    .line 293
    iget-object v1, p0, Lcom/android/calendar/timely/DayViewPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v1

    .line 296
    invoke-virtual {v1, v0, p2}, Lcom/android/calendar/timely/MonthData;->registerListener(ILcom/android/calendar/timely/DataFactory$OnUpdateListener;)V

    .line 297
    invoke-virtual {p2, v1, v0, v2}, Lcom/android/calendar/timely/PagedDayView;->onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    .line 298
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/MonthData;->getDateInfo(I)[I

    move-result-object v2

    invoke-virtual {p2, v0, v2, p1}, Lcom/android/calendar/timely/PagedDayView;->setDay(I[II)V

    .line 300
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 301
    return-object v1
.end method
