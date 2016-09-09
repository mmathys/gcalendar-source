.class public Lcom/android/calendar/timely/PagedDayView;
.super Landroid/widget/FrameLayout;
.source "PagedDayView.java"

# interfaces
.implements Lcom/android/calendar/timely/DataFactory$OnUpdateListener;


# instance fields
.field private mAllDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

.field private mAllDayHeaderView:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

.field private mAllDayLinearLayout:Landroid/view/View;

.field private mAllDayViewGapX:I

.field private mCollapseButton:Landroid/widget/TextView;

.field private mIsTablet:Z

.field private mPagedScrollView:Lcom/android/calendar/timely/PagedScrollView;

.field private mStickyAllDayEventsView:Landroid/widget/ScrollView;

.field private mStickyHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

.field private mStickyHourMask:Landroid/view/View;

.field private mTimelyDayView:Lcom/android/calendar/timely/TimelyDayView;

.field private mWeekHeaderLabelsView:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/PagedDayView;)Lcom/android/calendar/timely/TimelyDayHeaderView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/PagedDayView;)Lcom/android/calendar/timely/gridviews/AllDayHeaderView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayHeaderView:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    return-object v0
.end method


# virtual methods
.method public getActiveDayHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/calendar/timely/PagedDayView;->mIsTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mWeekHeaderLabelsView:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    goto :goto_0
.end method

.method public getAllDayContent()Lcom/android/calendar/timely/gridviews/AllDayHeaderView;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayHeaderView:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    return-object v0
.end method

.method public getAllDayEventsHeight()I
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyAllDayEventsView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mCollapseButton:Landroid/widget/TextView;

    .line 271
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 270
    return v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mCollapseButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getAllDayEventsScrollPosition()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyAllDayEventsView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getAllDayLinearLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayLinearLayout:Landroid/view/View;

    return-object v0
.end method

.method public getAllDayScrollView()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyAllDayEventsView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public getCollapseButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/calendar/timely/PagedDayView;->mIsTablet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mCollapseButton:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getGridHourStartOffset()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mTimelyDayView:Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->getGridHourStartOffset()I

    move-result v0

    return v0
.end method

.method public getHeaderArrow()Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    return-object v0
.end method

.method public getListenerTag()I
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedDayView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 232
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 233
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getListenerTagType()I
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public getPagedScrollView()Lcom/android/calendar/timely/PagedScrollView;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mPagedScrollView:Lcom/android/calendar/timely/PagedScrollView;

    return-object v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mPagedScrollView:Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/PagedScrollView;->getScrollY()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public getTimelyDayView()Lcom/android/calendar/timely/TimelyDayView;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mTimelyDayView:Lcom/android/calendar/timely/TimelyDayView;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/timely/OnTimelineModeChangedListener;Lcom/android/calendar/timely/gridviews/StickyAllDayManager;)V
    .locals 6

    .prologue
    .line 67
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/PagedDayView;->mIsTablet:Z

    .line 68
    new-instance v0, Lcom/android/calendar/timely/TimelyDayView;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/TimelyDayView;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/ChipRecycler;Lcom/android/calendar/timely/TimelineInfo;Lcom/android/calendar/timely/OnTimelineModeChangedListener;I)V

    iput-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mTimelyDayView:Lcom/android/calendar/timely/TimelyDayView;

    .line 71
    sget v0, Lcom/android/calendar/R$id;->timely_day_view_container:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PagedScrollView;

    iput-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mPagedScrollView:Lcom/android/calendar/timely/PagedScrollView;

    .line 72
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mPagedScrollView:Lcom/android/calendar/timely/PagedScrollView;

    iget-object v1, p0, Lcom/android/calendar/timely/PagedDayView;->mTimelyDayView:Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/PagedScrollView;->addView(Landroid/view/View;)V

    .line 74
    sget v0, Lcom/android/calendar/R$id;->all_day_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyAllDayEventsView:Landroid/widget/ScrollView;

    .line 75
    sget v0, Lcom/android/calendar/R$id;->all_day_header:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    iput-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayHeaderView:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    .line 76
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayHeaderView:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0, p2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->setChipRecycler(Lcom/android/calendar/timely/ChipRecycler;)V

    .line 77
    iget-boolean v0, p0, Lcom/android/calendar/timely/PagedDayView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayHeaderView:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->disableHorizontalMargin()V

    .line 80
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->week_header_labels:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    iput-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mWeekHeaderLabelsView:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    .line 82
    sget v0, Lcom/android/calendar/R$id;->header_arrow:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    iput-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayHeaderArrow:Lcom/android/calendar/timely/gridviews/AllDayHeaderArrow;

    .line 83
    sget v0, Lcom/android/calendar/R$id;->collapse_button:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mCollapseButton:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/android/calendar/R$id;->hour_mask:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyHourMask:Landroid/view/View;

    .line 86
    sget v0, Lcom/android/calendar/R$id;->day_header_view:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyDayHeaderView;

    iput-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    .line 87
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    new-instance v1, Lcom/android/calendar/timely/PagedDayView$1;

    invoke-direct {v1, p0, p4, p5}, Lcom/android/calendar/timely/PagedDayView$1;-><init>(Lcom/android/calendar/timely/PagedDayView;Lcom/android/calendar/timely/OnTimelineModeChangedListener;Lcom/android/calendar/timely/gridviews/StickyAllDayManager;)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->all_day_linear_layout:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedDayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayLinearLayout:Landroid/view/View;

    .line 113
    sget v0, Lcom/android/calendar/R$id;->separator_vertical:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedDayView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/calendar/timely/PagedDayView;->mIsTablet:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->paged_day_header_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayViewGapX:I

    .line 115
    iget-boolean v0, p0, Lcom/android/calendar/timely/PagedDayView;->mIsTablet:Z

    if-eqz v0, :cond_3

    .line 117
    iget v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayViewGapX:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->gridline_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayViewGapX:I

    .line 121
    :goto_1
    return-void

    .line 113
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 119
    :cond_3
    iget v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayViewGapX:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$dimen;->day_view_end_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayViewGapX:I

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 126
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayViewGapX:I

    sub-int/2addr v0, v1

    .line 127
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 128
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 129
    iget-object v2, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyAllDayEventsView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ScrollView;->measure(II)V

    .line 130
    return-void
.end method

.method public onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 193
    const-string v1, "PagedDayView onUpdate"

    invoke-static {v1}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/calendar/timely/PagedDayView;->mTimelyDayView:Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {v1, p2}, Lcom/android/calendar/timely/TimelyDayView;->setJulianDay(I)V

    .line 195
    iget-object v1, p0, Lcom/android/calendar/timely/PagedDayView;->mTimelyDayView:Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/calendar/timely/TimelyDayView;->onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    .line 196
    iget-object v1, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayHeaderView:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v1, p2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->setFirstJulianDay(I)V

    .line 197
    iget-object v1, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayHeaderView:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->onUpdate(Lcom/android/calendar/timely/MonthData;II)V

    .line 198
    iget-object v1, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyHourMask:Landroid/view/View;

    iget-object v2, p0, Lcom/android/calendar/timely/PagedDayView;->mAllDayHeaderView:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getCountChips()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/calendar/timely/PagedDayView;->mIsTablet:Z

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 200
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 201
    return-void

    .line 199
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public postUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mTimelyDayView:Lcom/android/calendar/timely/TimelyDayView;

    new-instance v1, Lcom/android/calendar/timely/PagedDayView$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/calendar/timely/PagedDayView$2;-><init>(Lcom/android/calendar/timely/PagedDayView;ILcom/android/calendar/timely/MonthData;Z)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyDayView;->post(Ljava/lang/Runnable;)Z

    .line 217
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/calendar/timely/PagedDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "PagedDayView postUpdate"

    .line 220
    invoke-interface {v0, v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 222
    :cond_0
    return-void
.end method

.method public removeCreateNewEventView()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mTimelyDayView:Lcom/android/calendar/timely/TimelyDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayView;->removeCreateNewEventView()V

    .line 189
    return-void
.end method

.method public setDay(I[II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/android/calendar/timely/PagedDayView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mWeekHeaderLabelsView:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mWeekHeaderLabelsView:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->setFirstJulianDay(I)V

    .line 169
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mWeekHeaderLabelsView:Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/WeekHeaderLabelsView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0, p3}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setPosition(I)V

    .line 165
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0, p2, v2}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setDateInfo([IZ)V

    .line 166
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->initializeText()V

    .line 167
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyDayHeaderView;->invalidate()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mPagedScrollView:Lcom/android/calendar/timely/PagedScrollView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/PagedScrollView;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/calendar/timely/PagedDayView;->mStickyHeaderView:Lcom/android/calendar/timely/TimelyDayHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/TimelyDayHeaderView;->setEnabled(Z)V

    .line 250
    return-void
.end method

.method public setListenerTag(I)V
    .locals 1

    .prologue
    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/PagedDayView;->setTag(Ljava/lang/Object;)V

    .line 227
    return-void
.end method
