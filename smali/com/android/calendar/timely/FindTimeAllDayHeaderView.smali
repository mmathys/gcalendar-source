.class public Lcom/android/calendar/timely/FindTimeAllDayHeaderView;
.super Landroid/view/ViewGroup;
.source "FindTimeAllDayHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/FindTimeAllDayHeaderView$OnMeasurementChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllDayCellHeight:I

.field private final mAllDayEventCmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/calendar/timely/PartitionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mArrayEventChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelyChip;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field private mColumnLeftPositions:[I

.field private mColumnWidth:I

.field private final mContext:Landroid/content/Context;

.field private mExpandButtons:[Landroid/widget/TextView;

.field private final mGridLineColor:I

.field private final mGridLinePaint:Landroid/graphics/Paint;

.field private final mGridLineStrokeWidth:I

.field private mHeight:I

.field private final mHorizontalMargin:I

.field private mIsExpanded:Z

.field private final mIsRtl:Z

.field private mJulianDay:I

.field private final mMaxCollapseHeight:I

.field private mMeasurementChangedListener:Lcom/android/calendar/timely/FindTimeAllDayHeaderView$OnMeasurementChangedListener;

.field private final mRobotoMediumTypeface:Landroid/graphics/Typeface;

.field private mShowMoreBgColor:I

.field private mShowMoreColor:I

.field private mShowMoreHorizontalPadding:I

.field private mShowMoreTextSize:I

.field private mShowMoreVerticalPadding:I

.field private mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

.field private final mVerticalMargin:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    iput-boolean v3, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mIsExpanded:Z

    .line 72
    new-instance v0, Lcom/android/calendar/timely/PartitionItem$PartitionItemComparator;

    invoke-direct {v0}, Lcom/android/calendar/timely/PartitionItem$PartitionItemComparator;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mAllDayEventCmp:Ljava/util/Comparator;

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->setWillNotDraw(Z)V

    .line 93
    invoke-static {p1}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mIsRtl:Z

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mArrayEventChips:Ljava/util/List;

    .line 97
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {p1}, Lcom/android/calendar/Utils;->createRobotoMedium(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mRobotoMediumTypeface:Landroid/graphics/Typeface;

    .line 100
    sget v1, Lcom/android/calendar/R$dimen;->grid_all_day_chip_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mVerticalMargin:I

    .line 101
    sget v1, Lcom/android/calendar/R$dimen;->all_day_chip_horizontal_margin:I

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mHorizontalMargin:I

    .line 103
    sget v1, Lcom/android/calendar/R$dimen;->grid_all_day_event_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mAllDayCellHeight:I

    .line 104
    iget v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mAllDayCellHeight:I

    iget v2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mVerticalMargin:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mMaxCollapseHeight:I

    .line 106
    sget v1, Lcom/android/calendar/R$color;->grids_line:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mGridLineColor:I

    .line 107
    sget v1, Lcom/android/calendar/R$dimen;->gridline_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mGridLineStrokeWidth:I

    .line 108
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mGridLinePaint:Landroid/graphics/Paint;

    .line 109
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mGridLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mGridLineStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mGridLinePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mGridLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mGridLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    sget v1, Lcom/android/calendar/R$dimen;->default_event_text_size:I

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mShowMoreTextSize:I

    .line 115
    sget v1, Lcom/android/calendar/R$color;->week_show_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mShowMoreColor:I

    .line 116
    sget v1, Lcom/android/calendar/R$color;->timely_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mShowMoreBgColor:I

    .line 117
    sget v1, Lcom/android/calendar/R$dimen;->chip_grid_vertical_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mShowMoreVerticalPadding:I

    .line 119
    sget v1, Lcom/android/calendar/R$dimen;->chip_grid_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mShowMoreHorizontalPadding:I

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/FindTimeAllDayHeaderView;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mIsExpanded:Z

    return v0
.end method

.method private clearChips()V
    .locals 5

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->removeAllViews()V

    .line 314
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mArrayEventChips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelyChip;

    .line 316
    iget-object v4, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v4, v1}, Lcom/android/calendar/timely/ChipRecycler;->recycle(Ljava/lang/Object;)V

    goto :goto_1

    .line 318
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 320
    :cond_1
    return-void
.end method

.method private remeasure()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 233
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mArrayEventChips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 234
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnLeftPositions:[I

    array-length v0, v0

    iget v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnWidth:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mWidth:I

    .line 238
    iget-boolean v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mIsExpanded:Z

    if-eqz v0, :cond_1

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    .line 240
    :goto_0
    if-ge v1, v6, :cond_0

    .line 241
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_1
    move v0, v2

    .line 249
    :goto_2
    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnLeftPositions:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 251
    iget-object v5, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnLeftPositions:[I

    iget-boolean v3, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mIsRtl:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mWidth:I

    add-int/lit8 v7, v0, 0x1

    iget v8, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnWidth:I

    mul-int/2addr v7, v8

    sub-int/2addr v3, v7

    :goto_3
    aput v3, v5, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mArrayEventChips:Ljava/util/List;

    iget v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mJulianDay:I

    const/4 v3, 0x3

    invoke-static {v0, v1, v3}, Lcom/android/calendar/timely/FindTimeUtil;->hideAllDayChips(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 251
    :cond_2
    iget v3, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnWidth:I

    mul-int/2addr v3, v0

    goto :goto_3

    :cond_3
    move v5, v2

    move v3, v2

    .line 255
    :goto_4
    if-ge v5, v6, :cond_6

    .line 256
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mArrayEventChips:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 257
    iget-object v8, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnLeftPositions:[I

    aget v8, v8, v5

    .line 260
    iget v9, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mAllDayCellHeight:I

    iget v10, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mVerticalMargin:I

    add-int/2addr v9, v10

    .line 261
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v10

    mul-int/2addr v9, v10

    .line 262
    iget v10, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mHorizontalMargin:I

    add-int/2addr v10, v8

    iget v11, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnWidth:I

    add-int/2addr v8, v11

    iget v11, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mAllDayCellHeight:I

    add-int/2addr v11, v9

    invoke-virtual {v0, v10, v9, v8, v11}, Lcom/android/calendar/timely/TimelyChip;->setGridCoordinates(IIII)V

    .line 266
    iget-boolean v8, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mIsExpanded:Z

    if-eqz v8, :cond_4

    .line 267
    invoke-virtual {v0, v2}, Lcom/android/calendar/timely/TimelyChip;->setVisibility(I)V

    .line 269
    :cond_4
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    if-le v8, v3, :cond_e

    .line 270
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_6
    move v3, v0

    .line 272
    goto :goto_5

    .line 255
    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    .line 274
    :cond_6
    iget v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mAllDayCellHeight:I

    iget v5, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mVerticalMargin:I

    add-int/2addr v0, v5

    mul-int/2addr v0, v3

    .line 275
    iget-boolean v3, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mIsExpanded:Z

    if-eqz v3, :cond_8

    :goto_7
    iput v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mHeight:I

    .line 277
    iget v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mHeight:I

    iget v3, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mMaxCollapseHeight:I

    if-le v0, v3, :cond_9

    move v0, v4

    .line 280
    :goto_8
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move v5, v2

    move v3, v0

    .line 282
    :goto_9
    if-ge v5, v6, :cond_c

    .line 283
    iget-boolean v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mIsExpanded:Z

    if-nez v0, :cond_a

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_a

    .line 284
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 285
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->addView(Landroid/view/View;)V

    .line 288
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v3, v0, v5

    sget v8, Lcom/android/calendar/R$plurals;->short_invisible_all_day_events:I

    .line 290
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v9, v4, [Ljava/lang/Object;

    .line 291
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v2

    .line 288
    invoke-virtual {v7, v8, v0, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 293
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    const/4 v0, 0x2

    .line 282
    :goto_a
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v0

    goto :goto_9

    .line 275
    :cond_8
    iget v3, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mMaxCollapseHeight:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_7

    :cond_9
    move v0, v2

    .line 278
    goto :goto_8

    .line 297
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 298
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->removeView(Landroid/view/View;)V

    :cond_b
    move v0, v3

    goto :goto_a

    .line 303
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mMeasurementChangedListener:Lcom/android/calendar/timely/FindTimeAllDayHeaderView$OnMeasurementChangedListener;

    if-eqz v0, :cond_d

    .line 304
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mMeasurementChangedListener:Lcom/android/calendar/timely/FindTimeAllDayHeaderView$OnMeasurementChangedListener;

    iget v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mHeight:I

    invoke-interface {v0, v1, v3}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView$OnMeasurementChangedListener;->onMeasurementChanged(II)V

    .line 306
    :cond_d
    return-void

    :cond_e
    move v0, v3

    goto/16 :goto_6
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mIsExpanded:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->getHeight()I

    move-result v7

    .line 345
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnLeftPositions:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_0
    if-ltz v6, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnLeftPositions:[I

    aget v0, v0, v6

    int-to-float v1, v0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnLeftPositions:[I

    aget v0, v0, v6

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mGridLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 345
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    .line 349
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mArrayEventChips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 202
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->layout()V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mArrayEventChips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 206
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnLeftPositions:[I

    aget v2, v2, v0

    iget v3, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mHorizontalMargin:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mMaxCollapseHeight:I

    iget v4, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mAllDayCellHeight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mVerticalMargin:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnLeftPositions:[I

    aget v4, v4, v0

    iget v5, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mHorizontalMargin:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mMaxCollapseHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 205
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 211
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 215
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 216
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 218
    iget v2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mWidth:I

    if-ne v2, v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mHeight:I

    if-eq v0, v1, :cond_1

    .line 219
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mWidth:I

    iget v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->setMeasuredDimension(II)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0
.end method

.method public onUpdate(Ljava/util/List;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 131
    iput p2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mJulianDay:I

    .line 132
    if-lez p3, :cond_2

    move v0, v3

    :goto_0
    add-int/2addr v0, v5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnLeftPositions:[I

    .line 134
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->clearChips()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mArrayEventChips:Ljava/util/List;

    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 139
    invoke-virtual {v0, p2}, Lcom/android/calendar/timely/FindTimeAttendee;->getEvents(I)Ljava/util/List;

    move-result-object v1

    .line 140
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mArrayEventChips:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    if-eqz v1, :cond_0

    .line 145
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelineAttendeeEvent;

    .line 146
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelineAttendeeEvent;->spansAtLeastOneDay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v2}, Lcom/android/calendar/timely/ChipRecycler;->getOrCreateObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/timely/TimelyChip;

    .line 150
    invoke-virtual {v2, v4}, Lcom/android/calendar/timely/TimelyChip;->enableImages(Z)V

    .line 151
    invoke-virtual {v2, v4}, Lcom/android/calendar/timely/TimelyChip;->setInMultiDayContext(Z)V

    .line 152
    invoke-virtual {v2, p2}, Lcom/android/calendar/timely/TimelyChip;->setCurrentJulianDay(I)V

    .line 153
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/calendar/timely/TimelyChip;->setContentDescriptionPrefix(Ljava/lang/String;)V

    .line 154
    iget-object v9, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    invoke-virtual {v2, v9}, Lcom/android/calendar/timely/TimelyChip;->setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V

    .line 155
    invoke-virtual {v2, v1, v3}, Lcom/android/calendar/timely/TimelyChip;->setAndInitItem(Lcom/android/calendar/timely/TimelineItem;I)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->addView(Landroid/view/View;)V

    .line 157
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v0, v4

    .line 132
    goto :goto_0

    .line 161
    :cond_3
    new-array v0, v5, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    move v0, v4

    .line 163
    :goto_2
    if-ge v0, v5, :cond_4

    .line 164
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 165
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mShowMoreHorizontalPadding:I

    iget v6, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mShowMoreVerticalPadding:I

    invoke-virtual {v1, v2, v6, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 167
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mShowMoreBgColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 168
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mShowMoreColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mShowMoreTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 170
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mRobotoMediumTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 172
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Lcom/android/calendar/timely/FindTimeAllDayHeaderView$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView$1;-><init>(Lcom/android/calendar/timely/FindTimeAllDayHeaderView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 182
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mArrayEventChips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 183
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mAllDayEventCmp:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5, v3}, Lcom/android/calendar/timely/GridChipGeometry;->doComputePositions(Ljava/util/List;JZ)V

    goto :goto_3

    .line 186
    :cond_5
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->remeasure()V

    .line 187
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->requestLayout()V

    .line 188
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->invalidate()V

    .line 189
    return-void
.end method

.method public setChipRecycler(Lcom/android/calendar/timely/ChipRecycler;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 310
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnWidth:I

    if-eq v0, p1, :cond_0

    .line 193
    iput p1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mColumnWidth:I

    .line 194
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->remeasure()V

    .line 196
    :cond_0
    return-void
.end method

.method public setExpandedState(Z)V
    .locals 3

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mIsExpanded:Z

    if-ne p1, v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 330
    :cond_0
    iput-boolean p1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mIsExpanded:Z

    .line 331
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mArrayEventChips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 332
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;

    aget-object v2, v0, v1

    iget-boolean v0, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mIsExpanded:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 332
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 334
    :cond_2
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->remeasure()V

    .line 335
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->requestLayout()V

    .line 336
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->invalidate()V

    goto :goto_0
.end method

.method public setMeasurementChangedListener(Lcom/android/calendar/timely/FindTimeAllDayHeaderView$OnMeasurementChangedListener;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mMeasurementChangedListener:Lcom/android/calendar/timely/FindTimeAllDayHeaderView$OnMeasurementChangedListener;

    .line 353
    return-void
.end method

.method public setTimelineInfo(Lcom/android/calendar/timely/TimelineInfo;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeAllDayHeaderView;->mTimelineInfo:Lcom/android/calendar/timely/TimelineInfo;

    .line 357
    return-void
.end method
