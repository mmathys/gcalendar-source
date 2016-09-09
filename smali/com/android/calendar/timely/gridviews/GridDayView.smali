.class public Lcom/android/calendar/timely/gridviews/GridDayView;
.super Landroid/view/ViewGroup;
.source "GridDayView.java"

# interfaces
.implements Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;
.implements Lcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCellWidth:I

.field protected mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private final mContext:Landroid/content/Context;

.field private mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

.field protected mEventChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/TimelyChip;",
            ">;"
        }
    .end annotation
.end field

.field private final mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mJulianDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/calendar/timely/gridviews/GridDayView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/gridviews/GridDayView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mEventChips:Ljava/util/ArrayList;

    .line 81
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/gridviews/GridDayView$CalendarGestureListener;-><init>(Lcom/android/calendar/timely/gridviews/GridDayView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 82
    new-instance v1, Lcom/android/calendar/timely/GridChipGeometry;

    invoke-direct {v1, p1}, Lcom/android/calendar/timely/GridChipGeometry;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    .line 83
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    sget v2, Lcom/android/calendar/R$dimen;->grid_left_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/GridChipGeometry;->setGridLeftPadding(I)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/gridviews/GridDayView;)Lcom/android/calendar/timely/CreateNewEventView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    return-object v0
.end method

.method private getPositionFromHour(I)F
    .locals 2

    .prologue
    .line 339
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->getHourHeight()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public clearChips()V
    .locals 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->removeAllViews()V

    .line 279
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 280
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/ChipRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 283
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 314
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected getHourFromPosition(I)I
    .locals 2

    .prologue
    .line 343
    mul-int/lit8 v0, p1, 0x18

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    .line 344
    const/16 v1, 0x17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getHourHeight()F
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    invoke-virtual {v0}, Lcom/android/calendar/timely/GridChipGeometry;->getHourWithGridlineHeight()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method getSelectedTimeInMillis(I)J
    .locals 3

    .prologue
    .line 273
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mJulianDay:I

    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/calendar/time/Time;->calculateDayHourMillis(IILjava/lang/String;Lcom/android/calendar/time/Time;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 125
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 127
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getIntProperty(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->onCalendarPropertyChanged(ILjava/lang/Object;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->registerListener(Landroid/content/Context;ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 131
    return-void
.end method

.method public onCalendarPropertyChanged(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 349
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/GridChipGeometry;->setGridHourCellHeight(F)V

    .line 351
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->updateCreateNewEventView()V

    .line 352
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->remeasure()V

    .line 353
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->requestLayout()V

    .line 355
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 136
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1, p0}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->unregisterListener(Landroid/content/Context;ILcom/android/calendar/timely/settings/data/CalendarProperties$OnPropertyChangedListener;)V

    .line 138
    return-void
.end method

.method public onInitializeChipAccessibilityEvent(Lcom/android/calendar/timely/TimelyChip;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 198
    const-class v0, Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 199
    return-void
.end method

.method public onInitializeChipAccessibilityInfo(Lcom/android/calendar/timely/TimelyChip;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 230
    const-class v0, Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 232
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 233
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mEventChips:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 121
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 119
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->layout()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 88
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 89
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 91
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    invoke-virtual {v3, v0, v1}, Lcom/android/calendar/timely/GridChipGeometry;->computeItemWidth(Lcom/android/calendar/timely/PartitionItem;I)I

    move-result v3

    .line 92
    iget-object v4, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/calendar/timely/GridChipGeometry;->computeItemHeight(Lcom/android/calendar/timely/TimelineItem;)I

    move-result v4

    .line 94
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 95
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 93
    invoke-virtual {v0, v3, v4}, Lcom/android/calendar/timely/TimelyChip;->measure(II)V

    goto :goto_0

    .line 98
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCellWidth:I

    if-eq v0, v1, :cond_1

    .line 99
    iput v1, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCellWidth:I

    .line 101
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->remeasure()V

    .line 103
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->requestLayout()V

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->getHourHeight()F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x18

    .line 109
    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->setMeasuredDimension(II)V

    .line 110
    return-void
.end method

.method public onUpdate(Lcom/android/calendar/timely/MonthData;II)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 157
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mJulianDay:I

    if-eq p2, v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 160
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mJulianDay:I

    invoke-virtual {p1, v0}, Lcom/android/calendar/timely/MonthData;->getItems(I)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->clearChips()V

    .line 163
    if-eqz v0, :cond_3

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 165
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->spansAtLeastOneDay()Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v1}, Lcom/android/calendar/timely/ChipRecycler;->getOrCreateObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelyChip;

    .line 170
    invoke-virtual {v1, v4}, Lcom/android/calendar/timely/TimelyChip;->enableImages(Z)V

    .line 171
    if-le p3, v3, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/TimelyChip;->setInMultiDayContext(Z)V

    .line 172
    iget v2, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mJulianDay:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/TimelyChip;->setCurrentJulianDay(I)V

    .line 173
    invoke-virtual {v1, v0, v3}, Lcom/android/calendar/timely/TimelyChip;->setAndInitItem(Lcom/android/calendar/timely/TimelineItem;I)V

    .line 174
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {v1, p0}, Lcom/android/calendar/timely/TimelyChip;->setChipAccessibilityDelegate(Lcom/android/calendar/timely/TimelyChip$ChipAccessibilityDelegate;)V

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/gridviews/GridDayView;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    move v2, v4

    .line 171
    goto :goto_2

    .line 180
    :cond_3
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    .line 181
    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mJulianDay:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 182
    invoke-virtual {v0, v4}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    .line 183
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v1

    const/16 v6, 0x10

    move-wide v4, v2

    .line 184
    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/DateTimeFormatHelper;->getDateRangeText(JJI)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->updateCreateNewEventView()V

    .line 189
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->remeasure()V

    .line 190
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->requestLayout()V

    .line 191
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->invalidate()V

    goto :goto_0
.end method

.method protected remeasure()V
    .locals 2

    .prologue
    .line 286
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/gridviews/GridDayView;->remeasure(ZZ)V

    .line 287
    return-void
.end method

.method protected remeasure(ZZ)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 290
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 303
    :cond_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    .line 294
    invoke-virtual {v0}, Lcom/android/calendar/timely/GridChipGeometry;->getChipMinimumHeight()F

    move-result v0

    const v1, 0x476a6000    # 60000.0f

    mul-float/2addr v0, v1

    .line 295
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->getHourHeight()F

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-long v2, v0

    .line 296
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mEventChips:Ljava/util/ArrayList;

    move v5, v4

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/timely/GridChipGeometry;->doComputePositions(Ljava/util/List;JZZZ)V

    .line 300
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mEventChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/timely/TimelyChip;

    .line 301
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    iget v3, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mJulianDay:I

    iget v6, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCellWidth:I

    move v5, v4

    move v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/timely/GridChipGeometry;->computeGridRect(IIIILcom/android/calendar/timely/TimelyChip;Z)Z

    goto :goto_0
.end method

.method public setChipRecycler(Lcom/android/calendar/timely/ChipRecycler;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 319
    return-void
.end method

.method public setJulianDay(I)V
    .locals 0

    .prologue
    .line 149
    iput p1, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mJulianDay:I

    .line 150
    return-void
.end method

.method public updateCreateNewEventView()V
    .locals 6

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 236
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mJulianDay:I

    invoke-static {v0, v1}, Lcom/android/calendar/timely/CreateNewEventView;->getSelectedHourInDay(Landroid/content/Context;I)I

    move-result v1

    .line 237
    if-gez v1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->removeView(Landroid/view/View;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    if-nez v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$layout;->create_new_event_view:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/CreateNewEventView;

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    .line 245
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/gridviews/GridDayView;->getSelectedTimeInMillis(I)J

    move-result-wide v2

    .line 246
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/timely/CreateNewEventView;->setStartTime(J)V

    .line 247
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/CreateNewEventView;->refreshFromModel()V

    .line 248
    invoke-direct {p0, v1}, Lcom/android/calendar/timely/gridviews/GridDayView;->getPositionFromHour(I)F

    move-result v0

    float-to-int v0, v0

    .line 249
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mGeometry:Lcom/android/calendar/timely/GridChipGeometry;

    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {v2}, Lcom/android/calendar/timely/CreateNewEventView;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/timely/GridChipGeometry;->computeHeight(J)I

    move-result v1

    .line 250
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    iget v3, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCellWidth:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 251
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 250
    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/timely/CreateNewEventView;->measure(II)V

    .line 252
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {v2, v5}, Lcom/android/calendar/timely/CreateNewEventView;->setVisibility(I)V

    .line 253
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    iget v3, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCellWidth:I

    add-int/2addr v1, v0

    invoke-virtual {v2, v5, v0, v3, v1}, Lcom/android/calendar/timely/CreateNewEventView;->layout(IIII)V

    .line 254
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/CreateNewEventView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/GridDayView;->mCreateNewEventView:Lcom/android/calendar/timely/CreateNewEventView;

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->addView(Landroid/view/View;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/calendar/timely/gridviews/GridDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Lcom/android/calendar/timely/gridviews/GridDayView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/gridviews/GridDayView$1;-><init>(Lcom/android/calendar/timely/gridviews/GridDayView;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/GridDayView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
