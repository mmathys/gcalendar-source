.class public Lcom/android/calendar/timely/FindTimeHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "FindTimeHorizontalScrollView.java"


# instance fields
.field private mAllDayView:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

.field private mAttendeeFrame:Lcom/android/calendar/timely/gridviews/GridViewFrame;

.field private mAttendeeInfoLayout:Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;

.field private mGridHorizontalPadding:I

.field private mMaxColumns:I

.field private mSuggestionDayView:Lcom/android/calendar/timely/gridviews/GridDayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$integer;->grid_view_onscreen_column_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mMaxColumns:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->grid_left_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mGridHorizontalPadding:I

    .line 30
    return-void
.end method

.method private computeColumnWidth(FI)I
    .locals 6

    .prologue
    .line 77
    float-to-double v2, p1

    iget v0, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mMaxColumns:I

    if-le p2, v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mMaxColumns:I

    int-to-double v0, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    :goto_0
    div-double v0, v2, v0

    double-to-int v0, v0

    return v0

    :cond_0
    int-to-double v0, p2

    goto :goto_0
.end method

.method private layoutSuggestionChips(II)V
    .locals 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/GridDayView;

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/GridDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/GridDayView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/GridDayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 90
    instance-of v2, v0, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v2, :cond_0

    .line 91
    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    iget v2, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mGridHorizontalPadding:I

    add-int/2addr v2, p1

    add-int v3, p1, p2

    iget v4, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mGridHorizontalPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/timely/TimelyChip;->layout(II)V

    .line 88
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 35
    sget v0, Lcom/android/calendar/R$id;->attendee_frame:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridViewFrame;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mAttendeeFrame:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    .line 36
    sget v0, Lcom/android/calendar/R$id;->suggestion_day_view:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/gridviews/GridDayView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mSuggestionDayView:Lcom/android/calendar/timely/gridviews/GridDayView;

    .line 37
    sget v0, Lcom/android/calendar/R$id;->find_time_attendee_info:I

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mAttendeeInfoLayout:Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;

    .line 39
    sget v0, Lcom/android/calendar/R$id;->find_time_all_day:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mAllDayView:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    .line 40
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 45
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mAttendeeFrame:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mAttendeeFrame:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v2}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildCount()I

    move-result v2

    .line 47
    if-lez v2, :cond_1

    .line 49
    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mAttendeeFrame:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v3, v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 50
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->computeColumnWidth(FI)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    :goto_0
    if-ge v0, v2, :cond_0

    .line 52
    iget-object v4, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mAttendeeFrame:Lcom/android/calendar/timely/gridviews/GridViewFrame;

    invoke-virtual {v4, v0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mAttendeeInfoLayout:Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/FindTimeAttendeeInfoLayout;->setColumnWidth(I)V

    .line 55
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->mAllDayView:Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->setColumnWidth(I)V

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->getScrollX()I

    move-result v0

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->layoutSuggestionChips(II)V

    .line 59
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 60
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 65
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/timely/FindTimeHorizontalScrollView;->layoutSuggestionChips(II)V

    .line 66
    return-void
.end method
