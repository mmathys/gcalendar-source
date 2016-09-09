.class public Lcom/android/calendar/timely/animations/EventInfoAnimationView;
.super Landroid/widget/FrameLayout;
.source "EventInfoAnimationView.java"


# instance fields
.field private mAnimSet:Landroid/animation/AnimatorSet;

.field private mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

.field private mBgColor:I

.field private mBgOverlayAlpha:I

.field private mChip:Lcom/android/calendar/timely/TimelyChip;

.field private mChipReplacement:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mFinalRect:Landroid/graphics/Rect;

.field private final mHeadlineView:Landroid/widget/FrameLayout;

.field private mHeight:F

.field private mItem:Lcom/android/calendar/timely/TimelineItem;

.field private mLeft:F

.field private mOriginalHeaderView:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mShouldDrawScrim:Z

.field private mStartRect:Landroid/graphics/Rect;

.field private mTop:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 75
    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mBgColor:I

    .line 77
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    .line 78
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->addView(Landroid/view/View;)V

    .line 80
    new-instance v0, Lcom/android/calendar/timely/TimelyChip;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/TimelyChip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    .line 82
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/TimelyChip;->setLayerType(ILandroid/graphics/Paint;)V

    .line 83
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setFocusable(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void
.end method


# virtual methods
.method public canAnimate()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem()Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mItem:Lcom/android/calendar/timely/TimelineItem;

    return-object v0
.end method

.method public init(Lcom/android/calendar/timely/animations/EventInfoAnimationData;Lcom/android/calendar/timely/TimelineItem;Landroid/view/View;Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 97
    iput-boolean p5, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mShouldDrawScrim:Z

    .line 98
    iput-object p2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 99
    iput-object p4, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mContentView:Landroid/view/View;

    .line 100
    iput-object p1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    invoke-virtual {v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->getChipPositionOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mStartRect:Landroid/graphics/Rect;

    .line 102
    iput-object p3, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChipReplacement:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChipReplacement:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    invoke-virtual {v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->getTimelineInfo()Lcom/android/calendar/timely/TimelineInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V

    .line 109
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    invoke-virtual {v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->shouldShowImages()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->enableImages(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    invoke-virtual {v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->getCurrentJulianDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setCurrentJulianDay(I)V

    .line 111
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mItem:Lcom/android/calendar/timely/TimelineItem;

    iget-object v2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    invoke-virtual {v2}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->getCalendarView()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/TimelyChip;->setAndInitItem(Lcom/android/calendar/timely/TimelineItem;I)V

    .line 112
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 379
    iget-boolean v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mShouldDrawScrim:Z

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mBgOverlayAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 382
    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    iget v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mLeft:F

    iget v2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mTop:F

    iget v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mLeft:F

    iget v3, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mWidth:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mTop:F

    iget v4, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeight:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 388
    return-void
.end method

.method public reinitialize(Lcom/android/calendar/timely/TimelineItem;Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 130
    iput-object p1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 131
    iput-object p2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChipReplacement:Landroid/view/View;

    .line 133
    new-instance v0, Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/TimelyChip;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    .line 135
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/TimelyChip;->setLayerType(ILandroid/graphics/Paint;)V

    .line 136
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setFocusable(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    invoke-virtual {v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->getTimelineInfo()Lcom/android/calendar/timely/TimelineInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V

    .line 141
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    invoke-virtual {v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->shouldShowImages()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->enableImages(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    invoke-virtual {v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->getCurrentJulianDay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setCurrentJulianDay(I)V

    .line 143
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mItem:Lcom/android/calendar/timely/TimelineItem;

    iget-object v2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    invoke-virtual {v2}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->getCalendarView()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/TimelyChip;->setAndInitItem(Lcom/android/calendar/timely/TimelineItem;I)V

    .line 145
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 146
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChipReplacement:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 148
    return-void
.end method

.method public reset(Lcom/android/calendar/timely/TimelineItem;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 155
    iput-object p2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChipReplacement:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mItem:Lcom/android/calendar/timely/TimelineItem;

    iget-object v2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimationData:Lcom/android/calendar/timely/animations/EventInfoAnimationData;

    invoke-virtual {v2}, Lcom/android/calendar/timely/animations/EventInfoAnimationData;->getCalendarView()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/TimelyChip;->setAndInitItem(Lcom/android/calendar/timely/TimelineItem;I)V

    .line 159
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 160
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChipReplacement:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method public setAnimationHeight(F)V
    .locals 4

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mFinalRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 329
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mFinalRect:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->getHeight()I

    move-result v1

    .line 330
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mStartRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mTop:F

    .line 331
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeight:F

    .line 332
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mContentView:Landroid/view/View;

    iget v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mTop:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 334
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 335
    const/4 v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 336
    iget v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeight:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 337
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mTop:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 340
    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->invalidate()V

    .line 341
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mFinalRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mFinalRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_1
.end method

.method public setAnimationWidth(F)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 344
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mFinalRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mFinalRect:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->getWidth()I

    move-result v1

    .line 346
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mStartRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mStartRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mLeft:F

    .line 347
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mWidth:F

    .line 349
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mContentView:Landroid/view/View;

    iget v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mLeft:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 351
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 352
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 353
    iget v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mWidth:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 354
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mLeft:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 358
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 359
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 360
    iget v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mWidth:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 361
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 362
    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->invalidate()V

    .line 363
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mFinalRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mFinalRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_1
.end method

.method public setHeadlineHeight(I)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mOriginalHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mOriginalHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 368
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mOriginalHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 371
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mHeadlineView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 372
    return-void
.end method

.method public setOriginalHeaderView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mOriginalHeaderView:Landroid/view/View;

    .line 166
    return-void
.end method

.method public setOverlayAlpha(F)V
    .locals 1

    .prologue
    .line 319
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mBgOverlayAlpha:I

    .line 320
    return-void
.end method

.method public startCloseAnimation(Landroid/graphics/Rect;ILandroid/animation/Animator$AnimatorListener;Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;)V
    .locals 6

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 256
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mFinalRect:Landroid/graphics/Rect;

    .line 257
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 260
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setAnimationHeight(F)V

    .line 261
    const-string v0, "animationHeight"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 262
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/TimelyChip;->setAlpha(F)V

    .line 267
    iget-object v2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x96

    .line 268
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 269
    const-wide/16 v4, 0x4b

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 270
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 273
    const-string v2, "headlineHeight"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mStartRect:Landroid/graphics/Rect;

    .line 274
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    aput v5, v3, v4

    .line 273
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xe1

    .line 274
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 276
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 280
    const-string v2, "animationWidth"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xe1

    .line 281
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 282
    const-wide/16 v4, 0x4b

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 283
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 286
    iget-boolean v2, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mShouldDrawScrim:Z

    if-eqz v2, :cond_1

    .line 289
    const-string v2, "overlayAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_3

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xe1

    .line 290
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 291
    const-wide/16 v4, 0x4b

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 292
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 296
    :cond_1
    if-eqz p4, :cond_2

    .line 301
    const/4 v2, 0x0

    const/16 v3, 0x4b

    invoke-virtual {p4, v2, v3}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->animateStatusbarColor(II)Landroid/animation/Animator;

    move-result-object v2

    .line 304
    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$bool;->mainview_use_light_status_bar:I

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v3

    .line 303
    invoke-virtual {p4, v0, v3}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->addLightStatusbarChangeToAnimationStart(Landroid/animation/Animator;Z)V

    .line 306
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 309
    :cond_2
    if-eqz p3, :cond_3

    .line 310
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 315
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 316
    return-void

    .line 261
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 267
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 280
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 289
    :array_3
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data
.end method

.method public startOpenAnimation(Landroid/graphics/Rect;ILandroid/animation/Animator$AnimatorListener;Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x96

    const/4 v4, 0x2

    .line 184
    iput-object p1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mFinalRect:Landroid/graphics/Rect;

    .line 185
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 188
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->setAlpha(F)V

    .line 189
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mChip:Lcom/android/calendar/timely/TimelyChip;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 190
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mStartRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setHeadlineHeight(I)V

    .line 194
    const-string v1, "headlineHeight"

    new-array v2, v4, [I

    iget-object v3, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mStartRect:Landroid/graphics/Rect;

    .line 195
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    aput v3, v2, v8

    const/4 v3, 0x1

    aput p2, v2, v3

    .line 194
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 195
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 199
    invoke-virtual {p0, v5}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setAnimationWidth(F)V

    .line 201
    const-string v1, "animationWidth"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 205
    invoke-virtual {p0, v5}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setAnimationHeight(F)V

    .line 206
    const-string v1, "animationHeight"

    new-array v2, v4, [F

    fill-array-data v2, :array_2

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 207
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 209
    if-eqz p3, :cond_0

    .line 210
    invoke-virtual {v1, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 214
    :cond_0
    iget-boolean v1, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mShouldDrawScrim:Z

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {p0, v5}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->setOverlayAlpha(F)V

    .line 216
    const-string v1, "overlayAlpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 217
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 221
    :cond_1
    if-eqz p4, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$color;->details_status_bar_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/16 v2, 0x96

    .line 225
    invoke-virtual {p4, v1, v2}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->animateStatusbarColor(II)Landroid/animation/Animator;

    move-result-object v1

    .line 228
    invoke-virtual {p4, v1, v8}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->addLightStatusbarChangeToAnimationStart(Landroid/animation/Animator;Z)V

    .line 230
    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 231
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    iget-object v0, p0, Lcom/android/calendar/timely/animations/EventInfoAnimationView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 237
    return-void

    .line 189
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 201
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 206
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 216
    :array_3
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
    .end array-data
.end method
