.class public abstract Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;
.super Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;
.source "GridViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$AllDayLayoutListener;,
        Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;,
        Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;,
        Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;
    }
.end annotation


# instance fields
.field protected final mActivity:Landroid/app/Activity;

.field private final mAllDayLayoutListener:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$AllDayLayoutListener;

.field private mAutoScrollIgnoreTime:Z

.field private mAutoScrollItem:I

.field private mAutoScrollTime:Lcom/android/calendar/time/Time;

.field private final mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private final mItemsAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemsToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumDays:I

.field private final mPageRecycler:Lcom/android/calendar/timely/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/timely/Recycler",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageRecyclerManager:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;

.field private mPrimaryPageHolder:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

.field private final mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

.field private final mStickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

.field private mStickyColumnContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILcom/android/calendar/timely/ChipRecycler;)V
    .locals 3

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mActivity:Landroid/app/Activity;

    .line 70
    iput p2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mNumDays:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    invoke-direct {v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    .line 75
    new-instance v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;-><init>(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPageRecyclerManager:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;

    .line 76
    new-instance v0, Lcom/android/calendar/timely/Recycler;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPageRecyclerManager:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/Recycler;-><init>(Lcom/android/calendar/timely/Recycler$RecyclerManager;I)V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPageRecycler:Lcom/android/calendar/timely/Recycler;

    .line 77
    iput-object p4, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 79
    new-instance v0, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;-><init>(Landroid/content/res/Resources;Z)V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mStickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mAutoScrollItem:I

    .line 82
    new-instance v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$AllDayLayoutListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$AllDayLayoutListener;-><init>(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$1;)V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mAllDayLayoutListener:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$AllDayLayoutListener;

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mStickyColumnContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;)Lcom/android/calendar/timely/DataFactory;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;)Lcom/android/calendar/timely/PagedScrollView$ScrollManager;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 110
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    .line 112
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    iget-object v3, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysScrollView:Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->remove(Lcom/android/calendar/timely/PagedScrollView;)V

    .line 115
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mStickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    iget-object v1, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v2, v1}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->removePage(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPageRecycler:Lcom/android/calendar/timely/Recycler;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/Recycler;->recycle(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    .line 126
    iget-object v2, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->setChipRecycler(Lcom/android/calendar/timely/ChipRecycler;)V

    .line 127
    const/4 v3, 0x0

    iget v2, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    move v4, v3

    move v3, v2

    :goto_1
    iget v2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mNumDays:I

    if-ge v4, v2, :cond_0

    .line 128
    iget-object v2, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v2, v4}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/timely/gridviews/GridDayView;

    .line 129
    iget-object v6, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v2, v6}, Lcom/android/calendar/timely/gridviews/GridDayView;->setChipRecycler(Lcom/android/calendar/timely/ChipRecycler;)V

    .line 127
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 132
    :cond_0
    iget-object v2, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysScrollView:Lcom/android/calendar/timely/PagedScrollView;

    new-instance v3, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$1;-><init>(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;)V

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/PagedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    iget v2, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->itemPosition:I

    iget v3, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mAutoScrollItem:I

    if-ne v2, v3, :cond_1

    .line 149
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mAutoScrollItem:I

    .line 150
    iget-boolean v2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mAutoScrollIgnoreTime:Z

    if-eqz v2, :cond_2

    .line 151
    iget-object v1, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->autoScroll()V

    .line 157
    :cond_1
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->init(Landroid/view/ViewGroup;)V

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mAutoScrollTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->scrollTo(Lcom/android/calendar/time/Time;)V

    goto :goto_2

    .line 162
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 163
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->notifyListeners()V

    .line 164
    return-void
.end method

.method public abstract getFirstJulianDayOfItem(I)I
.end method

.method public getWeekPageRecyclerManager()Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPageRecyclerManager:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;

    return-object v0
.end method

.method protected init(Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 172
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    .line 173
    iget-object v8, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    .line 174
    iget-object v5, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    .line 177
    iget v1, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    invoke-virtual {v8, v1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->setFirstJulianDay(I)V

    .line 178
    iget-object v1, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysHeaders:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    iget v2, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->setFirstJulianDay(I)V

    .line 179
    iget v1, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    invoke-virtual {v5, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->setFirstJulianDay(I)V

    .line 181
    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mNumDays:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    iget v2, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setJulianDay(I)V

    .line 186
    :cond_0
    iget v2, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    move v6, v7

    :goto_0
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mNumDays:I

    if-ge v6, v0, :cond_2

    .line 187
    invoke-virtual {v8, v6}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/timely/gridviews/GridDayView;

    .line 190
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0, v2, v7}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v9

    .line 191
    invoke-virtual {v4, v2}, Lcom/android/calendar/timely/gridviews/GridDayView;->setJulianDay(I)V

    .line 192
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mNumDays:I

    invoke-virtual {v4, v9, v2, v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->onUpdate(Lcom/android/calendar/timely/MonthData;II)V

    .line 193
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mNumDays:I

    invoke-virtual {v5, v9, v2, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->onUpdate(Lcom/android/calendar/timely/MonthData;II)V

    .line 194
    invoke-virtual {v9}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/4 v1, 0x2

    const-string v3, "WeekPagerAdapter finishUpdate"

    .line 196
    invoke-interface {v0, v1, v3}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 200
    :cond_1
    new-instance v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mNumDays:I

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;-><init>(Landroid/content/Context;IILcom/android/calendar/timely/gridviews/GridDayView;Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V

    invoke-virtual {v9, v2, v0}, Lcom/android/calendar/timely/MonthData;->registerListener(ILcom/android/calendar/timely/DataFactory$OnUpdateListener;)V

    .line 186
    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    move v6, v0

    goto :goto_0

    .line 205
    :cond_2
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPageRecycler:Lcom/android/calendar/timely/Recycler;

    invoke-virtual {v0}, Lcom/android/calendar/timely/Recycler;->getOrCreateObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 94
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    .line 95
    iput p2, v5, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->itemPosition:I

    .line 96
    iget v0, v5, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->itemPosition:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->getFirstJulianDayOfItem(I)I

    move-result v0

    iput v0, v5, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    .line 98
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    iget-object v2, v5, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysScrollView:Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->add(Lcom/android/calendar/timely/PagedScrollView;)V

    .line 102
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mStickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    iget-object v2, v5, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    iget-object v3, v5, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayScrollView:Landroid/widget/ScrollView;

    iget-object v4, v5, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysScrollView:Lcom/android/calendar/timely/PagedScrollView;

    iget-object v5, v5, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->addPage(Landroid/view/View;Lcom/android/calendar/timely/gridviews/AllDayHeaderView;Landroid/widget/ScrollView;Lcom/android/calendar/timely/PagedScrollView;Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;Landroid/view/View;)V

    .line 104
    return-object v1
.end method

.method public requestInitialAccessibilityFocus()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPrimaryPageHolder:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPrimaryPageHolder:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    iget-object v0, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->daysHeaders:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->setFocusable(Z)V

    .line 267
    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->clearFocus()V

    .line 268
    new-instance v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$2;-><init>(Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->post(Ljava/lang/Runnable;)Z

    .line 276
    :cond_0
    return-void
.end method

.method public setItemToAutoScroll(IZLcom/android/calendar/time/Time;)V
    .locals 0

    .prologue
    .line 293
    iput p1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mAutoScrollItem:I

    .line 294
    iput-boolean p2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mAutoScrollIgnoreTime:Z

    .line 295
    iput-object p3, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mAutoScrollTime:Lcom/android/calendar/time/Time;

    .line 296
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 235
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/timely/ViewPagerFragment$ViewPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 237
    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    .line 239
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPrimaryPageHolder:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    if-ne v1, v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPrimaryPageHolder:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPrimaryPageHolder:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    iget-object v1, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mAllDayLayoutListener:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$AllDayLayoutListener;

    .line 246
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 250
    :cond_1
    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPrimaryPageHolder:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    .line 251
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPrimaryPageHolder:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    iget-object v1, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mAllDayLayoutListener:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$AllDayLayoutListener;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 254
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mStickyColumnContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mStickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    iget-object v0, v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->setMainAllDayHeader(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V

    .line 256
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mStickyColumnContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/android/calendar/R$id;->week_month_header_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPrimaryPageHolder:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    iget v1, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    .line 257
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;->setJulianDay(I)V

    .line 260
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->requestInitialAccessibilityFocus()V

    goto :goto_0
.end method

.method public setStickyColumn(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mStickyColumnContainer:Landroid/view/ViewGroup;

    .line 213
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mStickyAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    sget v0, Lcom/android/calendar/R$id;->week_month_header_arrow:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->shareArrow(Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;)V

    .line 215
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    sget v0, Lcom/android/calendar/R$id;->week_days_scroll:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->add(Lcom/android/calendar/timely/PagedScrollView;)V

    .line 216
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mItemsToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    return-void
.end method

.method public updateVisibleViews()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mItemsAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 222
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->mPageRecyclerManager:Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridPageRecyclerManager;->clean(Landroid/view/ViewGroup;)V

    .line 224
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;

    .line 226
    iget v3, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->itemPosition:I

    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->getFirstJulianDayOfItem(I)I

    move-result v3

    iput v3, v1, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$PageHolder;->firstJulianDay:I

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter;->init(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method
