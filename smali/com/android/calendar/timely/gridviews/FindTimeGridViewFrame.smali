.class public Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;
.super Lcom/android/calendar/timely/gridviews/GridViewFrame;
.source "FindTimeGridViewFrame.java"


# instance fields
.field private mChipCornerRadius:I

.field private mClipPath:Landroid/graphics/Path;

.field private mClipRectF:Landroid/graphics/RectF;

.field private mPreviousChipRect:Landroid/graphics/Rect;

.field private mSuggestionGridDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/gridviews/GridViewFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mClipPath:Landroid/graphics/Path;

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mPreviousChipRect:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mClipRectF:Landroid/graphics/RectF;

    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$dimen;->chip_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mChipCornerRadius:I

    .line 41
    return-void
.end method

.method private getSuggestionChipRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mSuggestionGridDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    if-eqz v0, :cond_1

    .line 50
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mSuggestionGridDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mSuggestionGridDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 52
    instance-of v2, v0, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v2, :cond_0

    .line 53
    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getGridCoordinates()Landroid/graphics/Rect;

    move-result-object v0

    .line 57
    :goto_1
    return-object v0

    .line 50
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateClipPath(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mPreviousChipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mClipRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mPreviousChipRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 66
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mClipRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mPreviousChipRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 67
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mClipRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mPreviousChipRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 68
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mClipRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mPreviousChipRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 69
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 70
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mClipRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mChipCornerRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mChipCornerRadius:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->getSuggestionChipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->updateClipPath(Landroid/graphics/Rect;)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 86
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mClipPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 88
    :cond_2
    invoke-super {p0, p1}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 99
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 100
    instance-of v2, v0, Lcom/android/calendar/timely/gridviews/GridDayView;

    if-eqz v2, :cond_0

    .line 101
    check-cast v0, Lcom/android/calendar/timely/gridviews/GridDayView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->clearChips()V

    .line 98
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 104
    :cond_1
    invoke-super {p0}, Lcom/android/calendar/timely/gridviews/GridViewFrame;->removeAllViews()V

    .line 105
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public setSuggestionGridDayView(Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/FindTimeGridViewFrame;->mSuggestionGridDayView:Lcom/android/calendar/timely/gridviews/FindTimeGridDayView;

    .line 45
    return-void
.end method
