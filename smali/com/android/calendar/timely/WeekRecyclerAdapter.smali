.class public Lcom/android/calendar/timely/WeekRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "WeekRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private holders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

.field private mAutoScrollIgnoreTime:Z

.field private mAutoScrollItem:I

.field private mAutoScrollTime:Lcom/android/calendar/time/Time;

.field private final mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private final mContext:Landroid/content/Context;

.field private final mDataFactory:Lcom/android/calendar/timely/DataFactory;

.field private mPageWidth:I

.field private final mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/DataFactory;)V
    .locals 4

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->holders:Ljava/util/List;

    .line 64
    iput-object p1, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 65
    iput-object p4, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    .line 66
    iput-object p3, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 69
    new-instance v0, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    invoke-direct {v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    .line 70
    iget-object v1, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    sget v0, Lcom/android/calendar/R$id;->week_days_scroll:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->add(Lcom/android/calendar/timely/PagedScrollView;)V

    .line 73
    sget v0, Lcom/android/calendar/R$id;->week_month_header_arrow:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    .line 75
    new-instance v1, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    iget-object v2, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;-><init>(Landroid/content/res/Resources;Z)V

    iput-object v1, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    .line 76
    iget-object v1, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->shareArrow(Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mAutoScrollItem:I

    .line 79
    return-void
.end method

.method private clean(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 206
    invoke-virtual {p1}, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->isClean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    iget-object v1, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->dayScrollView:Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->remove(Lcom/android/calendar/timely/PagedScrollView;)V

    .line 211
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    iget-object v1, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->removePage(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V

    .line 213
    invoke-virtual {p1}, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->getFirstJulianDay()I

    move-result v0

    move v1, v0

    move v2, v3

    .line 214
    :goto_1
    const/4 v0, 0x7

    if-ge v2, v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0, v1, v3}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v4}, Lcom/android/calendar/timely/MonthData;->unregisterListener(II)Z

    .line 218
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->clearChips()V

    .line 215
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 220
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->clean()V

    goto :goto_0
.end method

.method private init(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x7

    .line 150
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mScrollManager:Lcom/android/calendar/timely/PagedScrollView$ScrollManager;

    iget-object v1, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->dayScrollView:Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/PagedScrollView$ScrollManager;->add(Lcom/android/calendar/timely/PagedScrollView;)V

    .line 151
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mAllDayManager:Lcom/android/calendar/timely/gridviews/StickyAllDayManager;

    iget-object v1, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    iget-object v3, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->allDayScrollView:Landroid/widget/ScrollView;

    iget-object v4, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->dayScrollView:Lcom/android/calendar/timely/PagedScrollView;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/timely/gridviews/StickyAllDayManager;->addPage(Landroid/view/View;Lcom/android/calendar/timely/gridviews/AllDayHeaderView;Landroid/widget/ScrollView;Lcom/android/calendar/timely/PagedScrollView;Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;Landroid/view/View;)V

    .line 155
    invoke-virtual {p1}, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->getFirstJulianDayOfItem(I)I

    move-result v2

    .line 156
    invoke-virtual {p1, v2}, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->init(I)V

    .line 157
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->setFirstJulianDay(I)V

    .line 158
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->daysHeaders:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->setFirstJulianDay(I)V

    .line 159
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->setFirstJulianDay(I)V

    .line 162
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mPageWidth:I

    if-eq v0, v1, :cond_0

    .line 163
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mPageWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    move v6, v7

    .line 168
    :goto_0
    if-ge v6, v9, :cond_1

    .line 170
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v0, v6}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/timely/gridviews/GridDayView;

    .line 173
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0, v2, v7}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v8

    .line 174
    invoke-virtual {v4, v2}, Lcom/android/calendar/timely/gridviews/GridDayView;->setJulianDay(I)V

    .line 175
    invoke-virtual {v4, v8, v2, v9}, Lcom/android/calendar/timely/gridviews/GridDayView;->onUpdate(Lcom/android/calendar/timely/MonthData;II)V

    .line 176
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0, v8, v2, v9}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->onUpdate(Lcom/android/calendar/timely/MonthData;II)V

    .line 179
    new-instance v0, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;

    iget-object v1, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/gridviews/GridViewPagerAdapter$GridOnUpdatelistener;-><init>(Landroid/content/Context;IILcom/android/calendar/timely/gridviews/GridDayView;Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V

    invoke-virtual {v8, v2, v0}, Lcom/android/calendar/timely/MonthData;->registerListener(ILcom/android/calendar/timely/DataFactory$OnUpdateListener;)V

    .line 169
    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    move v6, v0

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->dayScrollView:Lcom/android/calendar/timely/PagedScrollView;

    new-instance v1, Lcom/android/calendar/timely/WeekRecyclerAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/WeekRecyclerAdapter$1;-><init>(Lcom/android/calendar/timely/WeekRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/PagedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    return-void
.end method


# virtual methods
.method public getDayWidth()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mPageWidth:I

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getFirstJulianDayOfItem(I)I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 234
    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsTime(Landroid/content/Context;)I

    move-result v0

    .line 233
    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getJulianFirstDayFromWeeksSinceEpoch(II)I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 229
    const/16 v0, 0xda9

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mPageWidth:I

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->onBindViewHolder(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;I)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->allDayContent:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    iget-object v1, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->setChipRecycler(Lcom/android/calendar/timely/ChipRecycler;)V

    .line 103
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x7

    if-ge v1, v0, :cond_0

    .line 104
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridDayView;

    .line 105
    iget-object v2, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/gridviews/GridDayView;->setChipRecycler(Lcom/android/calendar/timely/ChipRecycler;)V

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 109
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mAutoScrollItem:I

    if-ne p2, v0, :cond_1

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mAutoScrollItem:I

    .line 111
    iget-boolean v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mAutoScrollIgnoreTime:Z

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->autoScroll()V

    .line 117
    :cond_1
    :goto_1
    return-void

    .line 114
    :cond_2
    iget-object v0, p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;->daysContent:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    iget-object v1, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mAutoScrollTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->scrollTo(Lcom/android/calendar/time/Time;)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 85
    sget v1, Lcom/android/calendar/R$layout;->list_week_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mPageWidth:I

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 90
    return-object v1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->onViewAttachedToWindow(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;)V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 123
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->holders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->init(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;)V

    .line 125
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->onViewDetachedFromWindow(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;)V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 131
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->holders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->clean(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;)V

    .line 133
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->onViewRecycled(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->clean(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;)V

    .line 97
    return-void
.end method

.method public setItemToAutoScroll(IZLcom/android/calendar/time/Time;)V
    .locals 0

    .prologue
    .line 254
    iput p1, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mAutoScrollItem:I

    .line 255
    iput-boolean p2, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mAutoScrollIgnoreTime:Z

    .line 256
    iput-object p3, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mAutoScrollTime:Lcom/android/calendar/time/Time;

    .line 257
    return-void
.end method

.method public setPageWidth(I)V
    .locals 0

    .prologue
    .line 238
    iput p1, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->mPageWidth:I

    .line 239
    return-void
.end method

.method public updateVisiblePages()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/calendar/timely/WeekRecyclerAdapter;->holders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;

    .line 140
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->clean(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;)V

    .line 141
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/WeekRecyclerAdapter;->init(Lcom/android/calendar/timely/WeekRecyclerAdapter$ViewHolder;)V

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method
