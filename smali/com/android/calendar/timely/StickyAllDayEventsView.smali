.class public Lcom/android/calendar/timely/StickyAllDayEventsView;
.super Landroid/widget/FrameLayout;
.source "StickyAllDayEventsView.java"


# instance fields
.field private mAgendaYEnd:I

.field private mAgendaYStart:I

.field private mGridHeight:I

.field private mGridYStart:I

.field private mScrollOffset:I

.field private final mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineInfo;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->setBackgroundColor(I)V

    .line 40
    iput-object p2, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->setClipChildren(Z)V

    .line 44
    return-void
.end method

.method private static convertCoordinate(IIF)I
    .locals 2

    .prologue
    .line 99
    int-to-float v0, p0

    sub-int v1, p1, p0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getRatio()F
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineInfo;->getGridModeRatio()F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getGridHeight()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mGridHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mScrollOffset:I

    return v0
.end method

.method protected layout(II)V
    .locals 5

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->getRatio()F

    move-result v0

    .line 79
    iget v1, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mAgendaYStart:I

    iget v2, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mGridYStart:I

    invoke-static {v1, v2, v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->convertCoordinate(IIF)I

    move-result v1

    .line 80
    iget v2, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mAgendaYEnd:I

    iget v3, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mGridYStart:I

    iget v4, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mGridHeight:I

    add-int/2addr v3, v4

    invoke-static {v2, v3, v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->convertCoordinate(IIF)I

    move-result v0

    .line 81
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->layout(IIII)V

    .line 82
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->getRatio()F

    move-result v0

    .line 87
    iget v1, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mAgendaYStart:I

    iget v2, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mGridYStart:I

    invoke-static {v1, v2, v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->convertCoordinate(IIF)I

    move-result v1

    .line 88
    iget v2, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mAgendaYEnd:I

    iget v3, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mGridYStart:I

    iget v4, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mGridHeight:I

    add-int/2addr v3, v4

    invoke-static {v2, v3, v0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->convertCoordinate(IIF)I

    move-result v0

    .line 90
    sub-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 91
    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 92
    return-void
.end method

.method public setAgendaCoordinates(II)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mAgendaYStart:I

    .line 60
    iput p2, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mAgendaYEnd:I

    .line 61
    return-void
.end method

.method public setGridHeight(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mGridHeight:I

    .line 52
    return-void
.end method

.method public setGridOffset(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mGridYStart:I

    .line 48
    return-void
.end method

.method public setGridScrollPosition(I)V
    .locals 7

    .prologue
    .line 64
    iput p1, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mScrollOffset:I

    .line 65
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/StickyAllDayEventsView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/StickyAllDayEventsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 67
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getGridCoordinates()Landroid/graphics/Rect;

    move-result-object v2

    .line 68
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mScrollOffset:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/android/calendar/timely/StickyAllDayEventsView;->mScrollOffset:I

    sub-int/2addr v5, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/android/calendar/timely/TimelyChip;->setGridCoordinates(IIII)V

    .line 65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
