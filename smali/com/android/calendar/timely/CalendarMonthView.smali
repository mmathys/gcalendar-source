.class public Lcom/android/calendar/timely/CalendarMonthView;
.super Landroid/widget/FrameLayout;
.source "CalendarMonthView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mChipHorizontalMargin:I

.field private final mChipListByWeek:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelyChip;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

.field final mChipVerticalMargin:I

.field private mChipsNotShown:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCurrentMonthListener:Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;

.field private mDataFactory:Lcom/android/calendar/timely/DataFactory;

.field private mDataLoaded:Z

.field private final mDaysToItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEventChipHeight:I

.field private mFirstCanOpenEvent:Z

.field private mFrameLayoutFinished:Z

.field private final mIsRtl:Z

.field private final mIsTabletConfig:Z

.field private mMaxCountOfChipsPerDay:I

.field private mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

.field private final mNextMonthListener:Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;

.field private mPaddingLeft:I

.field private mPaddingTop:I

.field private final mPreviousMonthListener:Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;

.field private final mTimedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/calendar/timely/PartitionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/calendar/timely/CalendarMonthView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/CalendarMonthView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/android/calendar/timely/CalendarMonthView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/CalendarMonthView$1;-><init>(Lcom/android/calendar/timely/CalendarMonthView;)V

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mCurrentMonthListener:Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;

    .line 54
    new-instance v0, Lcom/android/calendar/timely/CalendarMonthView$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/CalendarMonthView$2;-><init>(Lcom/android/calendar/timely/CalendarMonthView;)V

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mPreviousMonthListener:Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;

    .line 61
    new-instance v0, Lcom/android/calendar/timely/CalendarMonthView$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/CalendarMonthView$3;-><init>(Lcom/android/calendar/timely/CalendarMonthView;)V

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mNextMonthListener:Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;

    .line 76
    new-instance v0, Lcom/android/calendar/timely/PartitionItem$PartitionTimedItemComparator;

    invoke-direct {v0}, Lcom/android/calendar/timely/PartitionItem$PartitionTimedItemComparator;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mTimedComparator:Ljava/util/Comparator;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipsNotShown:Ljava/util/List;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mFirstCanOpenEvent:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mDataLoaded:Z

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    sget v1, Lcom/android/calendar/R$dimen;->month_view_chip_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mEventChipHeight:I

    .line 91
    sget v1, Lcom/android/calendar/R$dimen;->month_view_chip_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipHorizontalMargin:I

    .line 93
    sget v1, Lcom/android/calendar/R$dimen;->month_view_chip_vertical_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipVerticalMargin:I

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mDaysToItems:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipListByWeek:Ljava/util/ArrayList;

    .line 98
    iput-boolean v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mFrameLayoutFinished:Z

    .line 100
    sget v0, Lcom/android/calendar/R$bool;->tablet_config:I

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mIsTabletConfig:Z

    .line 101
    invoke-static {p1}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mIsRtl:Z

    .line 102
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/calendar/timely/CalendarMonthView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearChips()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/CalendarMonthView;->clearChips(I)V

    .line 424
    return-void
.end method

.method private clearChips(I)V
    .locals 3

    .prologue
    .line 427
    move v1, p1

    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarMonthView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 428
    iget-object v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/CalendarMonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/ChipRecycler;->recycle(Ljava/lang/Object;)V

    .line 427
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarMonthView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/timely/CalendarMonthView;->removeViews(II)V

    .line 431
    return-void
.end method

.method private createChips()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x0

    .line 340
    const-string v0, "CalendarMonthView-createChips"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 342
    const/4 v2, 0x1

    .line 344
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipListByWeek:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 345
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getMaxNumChipsPerDay()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMaxCountOfChipsPerDay:I

    .line 350
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipsNotShown:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 353
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstVisibleJulianDay()I

    move-result v3

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getEndVisibleJulianDay()I

    move-result v0

    if-gt v3, v0, :cond_1

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mDaysToItems:Landroid/util/SparseArray;

    invoke-static {v0, v3, v1}, Lcom/android/calendar/timely/MonthViewUtil;->computePartitionItemsInWeek(Landroid/util/SparseArray;ILjava/util/List;)V

    move v0, v6

    .line 363
    :goto_1
    if-ge v0, v7, :cond_0

    .line 364
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    :cond_0
    add-int/lit8 v0, v3, 0x7

    add-int/lit8 v4, v0, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/CalendarMonthView;->createChipsForWeek(Ljava/util/List;IIILjava/util/List;)I

    move-result v2

    .line 371
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipsNotShown:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v3, v3, 0x7

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarMonthView;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 376
    invoke-direct {p0, v2}, Lcom/android/calendar/timely/CalendarMonthView;->clearChips(I)V

    .line 378
    :cond_2
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 379
    return-void
.end method

.method private createChipsForWeek(Ljava/util/List;IIILjava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/PartitionItem;",
            ">;III",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 383
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mTimedComparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 384
    const-wide/16 v2, 0x0

    move-object v1, p1

    move v5, v4

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/timely/GridChipGeometry;->doComputePositions(Ljava/util/List;JZZZ)V

    .line 386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 389
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/PartitionItem;

    .line 390
    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getPartition()I

    move-result v1

    iget v5, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMaxCountOfChipsPerDay:I

    if-lt v1, v5, :cond_0

    .line 391
    invoke-interface {v0}, Lcom/android/calendar/timely/PartitionItem;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    invoke-static {v0, p3, p4, p5}, Lcom/android/calendar/Utils;->updateHiddenChipCount(Lcom/android/calendar/timely/TimelineItem;IILjava/util/List;)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarMonthView;->getChildCount()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    invoke-virtual {v1}, Lcom/android/calendar/timely/ChipRecycler;->getOrCreateObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelyChip;

    .line 400
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/CalendarMonthView;->addView(Landroid/view/View;)V

    .line 405
    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/calendar/timely/TimelyChip;->setInMultiDayContext(Z)V

    .line 406
    invoke-virtual {v1, v6}, Lcom/android/calendar/timely/TimelyChip;->enableImages(Z)V

    .line 410
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/TimelyChip;->setItem(Lcom/android/calendar/timely/PartitionItem;)V

    .line 413
    invoke-static {}, Lcom/android/calendar/A11yHelper;->getInstance()Lcom/android/calendar/A11yHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarMonthView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/calendar/A11yHelper;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v5, p0, Lcom/android/calendar/timely/CalendarMonthView;->mIsTabletConfig:Z

    invoke-virtual {v1, v0, v5}, Lcom/android/calendar/timely/TimelyChip;->setPassive(ZZ)V

    .line 415
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    add-int/lit8 p2, p2, 0x1

    .line 417
    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/calendar/timely/CalendarMonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelyChip;

    .line 403
    invoke-virtual {v1}, Lcom/android/calendar/timely/TimelyChip;->clearItem()V

    goto :goto_1

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipListByWeek:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    return p2
.end method

.method private getData(ILcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    .line 226
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/timely/MonthData;->registerListener(ILcom/android/calendar/timely/DataFactory$OnUpdateListener;)V

    .line 227
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/calendar/timely/CalendarMonthView;->onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V

    .line 228
    invoke-virtual {p2}, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;->enable()V

    .line 229
    return-void
.end method

.method private remeasure()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 270
    invoke-direct {p0}, Lcom/android/calendar/timely/CalendarMonthView;->createChips()V

    .line 271
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->resetNumHiddenChips()V

    .line 275
    iget v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipVerticalMargin:I

    iget v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMaxCountOfChipsPerDay:I

    iget v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mEventChipHeight:I

    iget v4, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipVerticalMargin:I

    add-int/2addr v2, v4

    mul-int/2addr v1, v2

    sub-int v7, v0, v1

    .line 279
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstJulianDay()I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    .line 280
    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstDayOffset()I

    move-result v1

    sub-int v1, v0, v1

    .line 281
    add-int/lit8 v0, v1, 0x7

    add-int/lit8 v0, v0, -0x1

    move v2, v3

    move v4, v0

    move v5, v1

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipListByWeek:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 284
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipListByWeek:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v6, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMaxCountOfChipsPerDay:I

    iget-object v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipsNotShown:Ljava/util/List;

    .line 285
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 284
    invoke-static {v0, v5, v4, v6, v1}, Lcom/android/calendar/Utils;->hideAllDayChips(Ljava/util/List;IIILjava/util/List;)V

    .line 286
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipListByWeek:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 289
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getVisibility()I

    move-result v1

    const/16 v6, 0x8

    if-eq v1, v6, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getStartDay()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 294
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->spansAtLeastOneDay()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v6

    .line 298
    :goto_2
    iget-object v9, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    iget v10, p0, Lcom/android/calendar/timely/CalendarMonthView;->mPaddingTop:I

    iget v11, p0, Lcom/android/calendar/timely/CalendarMonthView;->mPaddingLeft:I

    invoke-virtual {v9, v6, v10, v11}, Lcom/android/calendar/timely/MonthViewFrame;->getCellPosition(III)Landroid/graphics/Rect;

    move-result-object v6

    .line 300
    iget-object v9, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    iget v10, p0, Lcom/android/calendar/timely/CalendarMonthView;->mPaddingTop:I

    iget v11, p0, Lcom/android/calendar/timely/CalendarMonthView;->mPaddingLeft:I

    invoke-virtual {v9, v1, v10, v11}, Lcom/android/calendar/timely/MonthViewFrame;->getCellPosition(III)Landroid/graphics/Rect;

    move-result-object v9

    .line 304
    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v7

    .line 305
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v10

    iget v11, p0, Lcom/android/calendar/timely/CalendarMonthView;->mEventChipHeight:I

    iget v12, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipVerticalMargin:I

    add-int/2addr v11, v12

    mul-int/2addr v10, v11

    add-int/2addr v10, v1

    .line 306
    iget v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mEventChipHeight:I

    add-int v11, v10, v1

    .line 309
    iget-boolean v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mIsRtl:Z

    if-eqz v1, :cond_2

    iget v1, v9, Landroid/graphics/Rect;->left:I

    .line 310
    :goto_3
    iget-boolean v12, p0, Lcom/android/calendar/timely/CalendarMonthView;->mIsRtl:Z

    if-eqz v12, :cond_3

    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 313
    :goto_4
    iget v9, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipHorizontalMargin:I

    add-int/2addr v1, v9

    iget v9, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipHorizontalMargin:I

    sub-int/2addr v6, v9

    invoke-virtual {v0, v1, v10, v6, v11}, Lcom/android/calendar/timely/TimelyChip;->setGridCoordinates(IIII)V

    .line 317
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->initItem(I)V

    .line 318
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->invalidate()V

    goto :goto_1

    .line 295
    :cond_1
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getEndDay()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    .line 309
    :cond_2
    iget v1, v6, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 310
    :cond_3
    iget v6, v9, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_4
    move v1, v3

    .line 322
    :goto_5
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipsNotShown:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 323
    iget-object v4, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    add-int v6, v5, v1

    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipsNotShown:Ljava/util/List;

    .line 324
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 323
    invoke-virtual {v4, v6, v0}, Lcom/android/calendar/timely/MonthViewFrame;->setNumHiddenChips(II)V

    .line 322
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 328
    :cond_5
    add-int/lit8 v4, v5, 0x7

    .line 329
    add-int/lit8 v0, v4, 0x7

    add-int/lit8 v1, v0, -0x1

    .line 282
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v5, v4

    move v4, v1

    goto/16 :goto_0

    .line 332
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->invalidate()V

    .line 333
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarMonthView;->requestLayout()V

    .line 334
    return-void
.end method

.method private unregisterListener(ILcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;)V
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p2}, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;->disable()V

    .line 213
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/DataFactory;->getDataAllowNull(I)Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p2}, Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;->getListenerTagType()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/calendar/timely/MonthData;->unregisterListener(II)Z

    .line 217
    :cond_0
    return-void
.end method

.method private unregisterListeners()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstJulianDay()I

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthViewFrame;->getEndJulianDay()I

    move-result v1

    .line 195
    iget-object v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mCurrentMonthListener:Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/timely/CalendarMonthView;->unregisterListener(ILcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;)V

    .line 198
    iget-object v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v2}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstVisibleJulianDay()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 199
    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mPreviousMonthListener:Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/timely/CalendarMonthView;->unregisterListener(ILcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getEndVisibleJulianDay()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 204
    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mNextMonthListener:Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/timely/CalendarMonthView;->unregisterListener(ILcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;)V

    .line 206
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanAfterUse()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/calendar/timely/CalendarMonthView;->clearChips()V

    .line 151
    invoke-direct {p0}, Lcom/android/calendar/timely/CalendarMonthView;->unregisterListeners()V

    .line 152
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->cleanAfterUse()V

    .line 153
    return-void
.end method

.method public getEventChipHeight()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mEventChipHeight:I

    return v0
.end method

.method public initMonth(Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;)V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    const-string v1, "year"

    invoke-virtual {p1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v1, "month"

    invoke-virtual {p1}, Lcom/android/datetimepicker/date/MonthAdapter$CalendarDay;->getMonth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/MonthViewFrame;->setMonthParams(Ljava/util/HashMap;)V

    .line 161
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/MonthViewFrame;->setOwner(Lcom/android/calendar/timely/CalendarMonthView;)V

    .line 162
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->invalidate()V

    .line 163
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/MonthViewFrame;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 166
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 137
    iget-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mFirstCanOpenEvent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mDataLoaded:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarMonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "CalendarMonthView onDraw"

    .line 140
    invoke-interface {v0, v1, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(ILjava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mFirstCanOpenEvent:Z

    .line 143
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 129
    sget v0, Lcom/android/calendar/R$id;->month_view_bg:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/CalendarMonthView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/MonthViewFrame;

    iput-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    .line 130
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/MonthViewFrame;->setRtlEnabled(Z)V

    .line 131
    iget-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mFirstCanOpenEvent:Z

    iget-object v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthViewFrame;->hasToday()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mFirstCanOpenEvent:Z

    .line 132
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarMonthView;->getPaddingRight()I

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarMonthView;->getPaddingBottom()I

    move-result v1

    .line 112
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarMonthView;->getPaddingTop()I

    move-result v2

    iput v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mPaddingTop:I

    .line 113
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarMonthView;->getPaddingLeft()I

    move-result v2

    iput v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mPaddingLeft:I

    .line 115
    iget-object v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    iget v3, p0, Lcom/android/calendar/timely/CalendarMonthView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/calendar/timely/CalendarMonthView;->mPaddingTop:I

    sub-int v5, p4, p2

    sub-int v0, v5, v0

    sub-int v5, p5, p3

    sub-int v1, v5, v1

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/calendar/timely/MonthViewFrame;->layout(IIII)V

    .line 117
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarMonthView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/CalendarMonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 119
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->layout()V

    .line 117
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_1
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mFrameLayoutFinished:Z

    .line 439
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getMaxNumChipsPerDay()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMaxCountOfChipsPerDay:I

    if-eq v0, v1, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/android/calendar/timely/CalendarMonthView;->remeasure()V

    .line 442
    :cond_0
    return-void
.end method

.method protected onUpdate(Lcom/android/calendar/timely/MonthData;IZ)V
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstVisibleJulianDay()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    .line 233
    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getEndVisibleJulianDay()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v0, "CalendarMonthView-onUpdate"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstJulianDay()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstVisibleJulianDay()I

    move-result v1

    .line 246
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstJulianDay()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 256
    :goto_1
    if-gt v1, v0, :cond_4

    .line 257
    iget-object v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mDaysToItems:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Lcom/android/calendar/timely/MonthData;->getItems(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getEndJulianDay()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstJulianDay()I

    move-result v1

    .line 249
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getEndJulianDay()I

    move-result v0

    goto :goto_1

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getEndJulianDay()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 252
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getEndVisibleJulianDay()I

    move-result v0

    goto :goto_1

    .line 261
    :cond_4
    iget-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mFrameLayoutFinished:Z

    if-eqz v0, :cond_5

    .line 262
    invoke-direct {p0}, Lcom/android/calendar/timely/CalendarMonthView;->remeasure()V

    .line 264
    :cond_5
    invoke-virtual {p1}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mDataLoaded:Z

    .line 265
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_0
.end method

.method public requestInitialAccessibilityFocus()V
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/calendar/timely/CalendarMonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->requestInitialAccessibilityFocus()V

    .line 456
    :cond_0
    return-void
.end method

.method public reuse()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->reuse()V

    .line 106
    return-void
.end method

.method public setChipRecycler(Lcom/android/calendar/timely/ChipRecycler;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mChipRecycler:Lcom/android/calendar/timely/ChipRecycler;

    .line 450
    return-void
.end method

.method public setDataFactory(Lcom/android/calendar/timely/DataFactory;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mDataFactory:Lcom/android/calendar/timely/DataFactory;

    .line 147
    return-void
.end method

.method public setOnDayClickListener(Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;)V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/MonthViewFrame;->setOnDayClickListener(Lcom/android/datetimepicker/date/MonthView$OnDayClickListener;)V

    .line 446
    return-void
.end method

.method public updateView()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstJulianDay()I

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthViewFrame;->getEndJulianDay()I

    move-result v1

    .line 174
    iget-object v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mCurrentMonthListener:Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/timely/CalendarMonthView;->getData(ILcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;)V

    .line 177
    iget-object v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v2}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstVisibleJulianDay()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 178
    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/android/calendar/timely/CalendarMonthView;->mPreviousMonthListener:Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;

    invoke-direct {p0, v0, v2}, Lcom/android/calendar/timely/CalendarMonthView;->getData(ILcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/CalendarMonthView;->mMonthViewFrame:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthViewFrame;->getEndVisibleJulianDay()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 183
    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/calendar/timely/CalendarMonthView;->mNextMonthListener:Lcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/timely/CalendarMonthView;->getData(ILcom/android/calendar/timely/CalendarMonthView$OnMonthlyUpdateListener;)V

    .line 185
    :cond_1
    return-void
.end method
