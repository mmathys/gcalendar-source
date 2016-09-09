.class Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "AllDayHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/gridviews/AllDayHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchHelper"
.end annotation


# instance fields
.field private mSubtreeNotificationPending:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempTime:Lcom/android/calendar/time/Time;

.field final synthetic this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)V
    .locals 2

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    .line 549
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 544
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mSubtreeNotificationPending:Z

    .line 546
    new-instance v0, Lcom/android/calendar/time/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempTime:Lcom/android/calendar/time/Time;

    .line 550
    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;Lcom/android/calendar/timely/TimelyChip;II)I
    .locals 1

    .prologue
    .line 536
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getVirtualId(Lcom/android/calendar/timely/TimelyChip;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;I)I
    .locals 1

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getChildIndex(I)I

    move-result v0

    return v0
.end method

.method private getChildByVirtualId(I)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 624
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getChildIndex(I)I

    move-result v3

    .line 625
    if-ltz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 626
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 627
    if-nez v0, :cond_0

    .line 628
    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$700()Ljava/lang/String;

    move-result-object v3

    const-string v4, "No child found for d:%d p:%d i:%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    shr-int/lit8 v6, p1, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const v2, 0xfffff

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0xa

    .line 629
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    .line 630
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getChildIndex(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    .line 628
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 632
    :cond_0
    return-object v0

    :cond_1
    move v0, v2

    .line 625
    goto :goto_0
.end method

.method private getChildIndex(I)I
    .locals 1

    .prologue
    .line 636
    and-int/lit16 v0, p1, 0x3ff

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getContentDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 654
    instance-of v0, p1, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v0, :cond_0

    .line 655
    check-cast p1, Lcom/android/calendar/timely/TimelyChip;

    .line 656
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 666
    :goto_0
    return-object v0

    .line 658
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 659
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 661
    :cond_1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 662
    check-cast p1, Landroid/widget/TextView;

    .line 663
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 665
    :cond_2
    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot determine content description for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 666
    const-string v0, ""

    goto :goto_0
.end method

.method private getDayContentDescription(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 716
    shr-int/lit8 v0, p1, 0x14

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I
    invoke-static {v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$500(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)I

    move-result v1

    add-int/2addr v0, v1

    .line 717
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempTime:Lcom/android/calendar/time/Time;

    invoke-virtual {v1, v0}, Lcom/android/calendar/time/Time;->setJulianDaySafe(I)V

    .line 718
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempTime:Lcom/android/calendar/time/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    .line 719
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v1

    const/16 v6, 0x10

    move-wide v4, v2

    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/DateTimeFormatHelper;->getDateRangeText(JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVirtualId(Landroid/view/View;I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 613
    instance-of v0, p1, Lcom/android/calendar/timely/TimelyChip;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 614
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$600(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)[Landroid/widget/TextView;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mExpandButtons:[Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$600(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)[Landroid/widget/TextView;

    move-result-object v0

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_1

    .line 616
    add-int/lit8 v0, p2, 0x1

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    .line 613
    goto :goto_0

    .line 614
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 620
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported child: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getVirtualId(Lcom/android/calendar/timely/TimelyChip;II)I
    .locals 3

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mFirstJulianDay:I
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$500(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)I

    move-result v0

    sub-int v0, p3, v0

    .line 608
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelyChip;->getPartition()I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x14

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method getVirtualIdOfDayWrapper(I)I
    .locals 1

    .prologue
    .line 603
    shl-int/lit8 v0, p1, 0x14

    return v0
.end method

.method protected getVirtualViewAt(FF)I
    .locals 6

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getChildCount()I

    move-result v2

    .line 555
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 556
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 555
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 560
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 561
    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempRect:Landroid/graphics/Rect;

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 562
    instance-of v2, v0, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v2, :cond_2

    .line 563
    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 564
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getStartDay()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getVirtualId(Lcom/android/calendar/timely/TimelyChip;II)I

    move-result v0

    .line 570
    :goto_1
    return v0

    .line 566
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getVirtualId(Landroid/view/View;I)I

    move-result v0

    goto :goto_1

    .line 570
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 575
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getHitRect(Landroid/graphics/Rect;)V

    .line 576
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getChildCount()I

    move-result v4

    move v3, v2

    .line 581
    :goto_1
    if-ge v3, v4, :cond_3

    .line 582
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0, v3}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 584
    instance-of v1, v0, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v1, :cond_1

    .line 585
    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    .line 586
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getStartDay()I

    move-result v1

    :goto_2
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getEndDay()I

    move-result v5

    if-gt v1, v5, :cond_2

    .line 587
    invoke-direct {p0, v0, v3, v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getVirtualId(Lcom/android/calendar/timely/TimelyChip;II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 590
    :cond_1
    invoke-direct {p0, v0, v3}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getVirtualId(Landroid/view/View;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I
    invoke-static {v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$400(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    move v0, v2

    .line 595
    :goto_3
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCountOfDays:I
    invoke-static {v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$400(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 596
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getVirtualIdOfDayWrapper(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 599
    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 727
    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getChildIndex(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 728
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getChildByVirtualId(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 730
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getChildIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 642
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getChildByVirtualId(I)Landroid/view/View;

    move-result-object v0

    .line 643
    if-eqz v0, :cond_0

    .line 644
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getContentDescription(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 651
    :goto_0
    return-void

    .line 646
    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 649
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getDayContentDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 673
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getChildIndex(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 674
    shr-int/lit8 v1, p1, 0x14

    .line 675
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getDayContentDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 676
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mColumnLeftPositions:[I
    invoke-static {v2}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$800(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)[I

    move-result-object v2

    aget v1, v2, v1

    .line 677
    iget-object v2, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->mCellWidth:F
    invoke-static {v3}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$900(Lcom/android/calendar/timely/gridviews/AllDayHeaderView;)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v4}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 692
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    :cond_0
    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Incorrectly populated node (%s, %s) for d:%d p:%d i:%d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempRect:Landroid/graphics/Rect;

    aput-object v0, v3, v6

    const/4 v0, 0x2

    shr-int/lit8 v4, p1, 0x14

    .line 697
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const v4, 0xfffff

    and-int/2addr v4, p1

    shr-int/lit8 v4, v4, 0xa

    .line 698
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    .line 699
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getChildIndex(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 696
    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 700
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v5, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 701
    const-string v0, ""

    .line 704
    :cond_1
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 712
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 713
    return-void

    .line 679
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getChildByVirtualId(I)Landroid/view/View;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_3

    .line 681
    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 682
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->getContentDescription(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 684
    :cond_3
    # getter for: Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPopulateNodeForVirtualView for a missing node"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 687
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5, v5, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 688
    const-string v0, ""

    goto :goto_0
.end method

.method postSubtreeChanged()V
    .locals 2

    .prologue
    .line 738
    invoke-static {}, Lcom/android/calendar/A11yHelper;->getInstance()Lcom/android/calendar/A11yHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v1}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/A11yHelper;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mSubtreeNotificationPending:Z

    if-nez v0, :cond_0

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mSubtreeNotificationPending:Z

    .line 741
    iget-object v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/gridviews/AllDayHeaderView;->post(Ljava/lang/Runnable;)Z

    .line 743
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->mSubtreeNotificationPending:Z

    .line 748
    invoke-static {}, Lcom/android/calendar/A11yHelper;->getInstance()Lcom/android/calendar/A11yHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/gridviews/AllDayHeaderView$TouchHelper;->this$0:Lcom/android/calendar/timely/gridviews/AllDayHeaderView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/A11yHelper;->notifyAccessibilitySubtreeChanged(Landroid/view/View;)V

    .line 749
    return-void
.end method
