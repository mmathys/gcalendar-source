.class Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;
.super Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;
.source "MonthViewFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/MonthViewFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChipMonthViewTouchHelper"
.end annotation


# instance fields
.field private mSecondSharedRect:Landroid/graphics/Rect;

.field private mSharedRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/calendar/timely/MonthViewFrame;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/MonthViewFrame;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    .line 781
    invoke-direct {p0, p1, p2}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;-><init>(Lcom/android/datetimepicker/date/MonthView;Landroid/view/View;)V

    .line 777
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    .line 778
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSecondSharedRect:Landroid/graphics/Rect;

    .line 782
    return-void
.end method


# virtual methods
.method asVisibleChip(Landroid/view/View;)Lcom/android/calendar/timely/TimelyChip;
    .locals 1

    .prologue
    .line 808
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 810
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    check-cast p1, Lcom/android/calendar/timely/TimelyChip;

    .line 814
    :goto_0
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected getVirtualViewAt(FF)I
    .locals 6

    .prologue
    const/high16 v2, -0x80000000

    .line 787
    invoke-super {p0, p1, p2}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->getVirtualViewAt(FF)I

    move-result v0

    .line 788
    if-eq v0, v2, :cond_0

    .line 804
    :goto_0
    return v0

    .line 792
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;
    invoke-static {v0}, Lcom/android/calendar/timely/MonthViewFrame;->access$300(Lcom/android/calendar/timely/MonthViewFrame;)Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/CalendarMonthView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 793
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;
    invoke-static {v0}, Lcom/android/calendar/timely/MonthViewFrame;->access$300(Lcom/android/calendar/timely/MonthViewFrame;)Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/CalendarMonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/android/calendar/timely/TimelyChip;

    if-eqz v3, :cond_1

    .line 795
    iget-object v3, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 796
    iget-object v3, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 797
    iget-object v3, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v3, p1, p2}, Lcom/android/calendar/timely/MonthViewFrame;->getDayFromLocation(FF)I

    move-result v3

    .line 798
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 799
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    check-cast v0, Lcom/android/calendar/timely/TimelyChip;

    # invokes: Lcom/android/calendar/timely/MonthViewFrame;->makeChipVirtualId(Lcom/android/calendar/timely/TimelyChip;I)I
    invoke-static {v1, v0, v3}, Lcom/android/calendar/timely/MonthViewFrame;->access$400(Lcom/android/calendar/timely/MonthViewFrame;Lcom/android/calendar/timely/TimelyChip;I)I

    move-result v0

    goto :goto_0

    .line 792
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 804
    goto :goto_0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 16
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
    .line 825
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;
    invoke-static {v1}, Lcom/android/calendar/timely/MonthViewFrame;->access$300(Lcom/android/calendar/timely/MonthViewFrame;)Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 905
    :cond_0
    return-void

    .line 829
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstJulianDay()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;
    invoke-static {v2}, Lcom/android/calendar/timely/MonthViewFrame;->access$300(Lcom/android/calendar/timely/MonthViewFrame;)Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/timely/CalendarMonthView;->getChildCount()I

    move-result v7

    .line 833
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 835
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 837
    const/4 v2, 0x0

    .line 838
    :goto_0
    if-ge v2, v7, :cond_3

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;
    invoke-static {v4}, Lcom/android/calendar/timely/MonthViewFrame;->access$300(Lcom/android/calendar/timely/MonthViewFrame;)Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/calendar/timely/CalendarMonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->asVisibleChip(Landroid/view/View;)Lcom/android/calendar/timely/TimelyChip;

    move-result-object v4

    .line 840
    if-eqz v4, :cond_2

    .line 841
    invoke-virtual {v4}, Lcom/android/calendar/timely/TimelyChip;->getTimelineItem()Lcom/android/calendar/timely/TimelineItem;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v8}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstJulianDay()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 842
    invoke-virtual {v4}, Lcom/android/calendar/timely/TimelyChip;->getEndDay()I

    move-result v6

    if-le v6, v1, :cond_2

    .line 843
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 851
    :cond_3
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 852
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 853
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 855
    const/4 v1, 0x1

    move-object v4, v3

    move v15, v2

    move v2, v1

    move v1, v15

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mNumCells:I
    invoke-static {v3}, Lcom/android/calendar/timely/MonthViewFrame;->access$500(Lcom/android/calendar/timely/MonthViewFrame;)I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 856
    const/4 v3, 0x0

    const/4 v6, 0x0

    # invokes: Lcom/android/calendar/timely/MonthViewFrame;->idFromIndex(III)I
    invoke-static {v3, v2, v6}, Lcom/android/calendar/timely/MonthViewFrame;->access$600(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    .line 858
    const/4 v3, 0x0

    .line 859
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    move v15, v3

    move v3, v1

    move v1, v15

    .line 860
    :goto_2
    if-ge v3, v7, :cond_c

    .line 861
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;
    invoke-static {v6}, Lcom/android/calendar/timely/MonthViewFrame;->access$300(Lcom/android/calendar/timely/MonthViewFrame;)Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/calendar/timely/CalendarMonthView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->asVisibleChip(Landroid/view/View;)Lcom/android/calendar/timely/TimelyChip;

    move-result-object v12

    .line 862
    if-eqz v12, :cond_6

    .line 863
    invoke-virtual {v12, v9}, Lcom/android/calendar/timely/TimelyChip;->getHitRect(Landroid/graphics/Rect;)V

    .line 865
    invoke-static {v9, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v1

    .line 867
    :goto_3
    if-ge v6, v11, :cond_4

    .line 868
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelyChip;

    .line 869
    invoke-virtual {v1, v10}, Lcom/android/calendar/timely/TimelyChip;->getHitRect(Landroid/graphics/Rect;)V

    .line 870
    iget v13, v10, Landroid/graphics/Rect;->top:I

    iget v14, v9, Landroid/graphics/Rect;->top:I

    if-le v13, v14, :cond_7

    .line 879
    :cond_4
    iget v1, v9, Landroid/graphics/Rect;->right:I

    iget v13, v8, Landroid/graphics/Rect;->right:I

    if-le v1, v13, :cond_5

    .line 880
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # invokes: Lcom/android/calendar/timely/MonthViewFrame;->makeChipVirtualId(Lcom/android/calendar/timely/TimelyChip;I)I
    invoke-static {v1, v12, v2}, Lcom/android/calendar/timely/MonthViewFrame;->access$400(Lcom/android/calendar/timely/MonthViewFrame;Lcom/android/calendar/timely/TimelyChip;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v6

    .line 860
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 873
    :cond_7
    iget v13, v10, Landroid/graphics/Rect;->right:I

    iget v14, v8, Landroid/graphics/Rect;->right:I

    if-le v13, v14, :cond_8

    .line 874
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # invokes: Lcom/android/calendar/timely/MonthViewFrame;->makeChipVirtualId(Lcom/android/calendar/timely/TimelyChip;I)I
    invoke-static {v13, v1, v2}, Lcom/android/calendar/timely/MonthViewFrame;->access$400(Lcom/android/calendar/timely/MonthViewFrame;Lcom/android/calendar/timely/TimelyChip;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 889
    :goto_4
    if-ge v6, v11, :cond_a

    .line 890
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/TimelyChip;

    .line 891
    invoke-virtual {v1, v10}, Lcom/android/calendar/timely/TimelyChip;->getHitRect(Landroid/graphics/Rect;)V

    .line 892
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # invokes: Lcom/android/calendar/timely/MonthViewFrame;->makeChipVirtualId(Lcom/android/calendar/timely/TimelyChip;I)I
    invoke-static {v12, v1, v2}, Lcom/android/calendar/timely/MonthViewFrame;->access$400(Lcom/android/calendar/timely/MonthViewFrame;Lcom/android/calendar/timely/TimelyChip;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    iget v12, v10, Landroid/graphics/Rect;->right:I

    iget v13, v8, Landroid/graphics/Rect;->right:I

    if-le v12, v13, :cond_9

    .line 894
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    :cond_9
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_4

    .line 900
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 901
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mNumHiddenChips:[I
    invoke-static {v1}, Lcom/android/calendar/timely/MonthViewFrame;->access$700(Lcom/android/calendar/timely/MonthViewFrame;)[I

    move-result-object v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mNumHiddenChips:[I
    invoke-static {v1}, Lcom/android/calendar/timely/MonthViewFrame;->access$700(Lcom/android/calendar/timely/MonthViewFrame;)[I

    move-result-object v1

    add-int/lit8 v6, v2, -0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v11}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstDayOffset()I

    move-result v11

    add-int/2addr v6, v11

    aget v1, v1, v6

    if-lez v1, :cond_b

    .line 902
    const/4 v1, 0x2

    const/4 v6, 0x0

    # invokes: Lcom/android/calendar/timely/MonthViewFrame;->idFromIndex(III)I
    invoke-static {v1, v2, v6}, Lcom/android/calendar/timely/MonthViewFrame;->access$600(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    :cond_b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    move-object v15, v5

    move-object v5, v4

    move-object v4, v15

    goto/16 :goto_1

    :cond_c
    move v6, v1

    goto :goto_4
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 961
    invoke-super {p0, p1, p2, p3}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # invokes: Lcom/android/calendar/timely/MonthViewFrame;->maybeGetChipById(I)Lcom/android/calendar/timely/TimelyChip;
    invoke-static {v0, p1}, Lcom/android/calendar/timely/MonthViewFrame;->access$800(Lcom/android/calendar/timely/MonthViewFrame;I)Lcom/android/calendar/timely/TimelyChip;

    move-result-object v0

    .line 910
    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 915
    :goto_0
    return-void

    .line 913
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    .line 921
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # invokes: Lcom/android/calendar/timely/MonthViewFrame;->maybeGetChipById(I)Lcom/android/calendar/timely/TimelyChip;
    invoke-static {v0, p1}, Lcom/android/calendar/timely/MonthViewFrame;->access$800(Lcom/android/calendar/timely/MonthViewFrame;I)Lcom/android/calendar/timely/TimelyChip;

    move-result-object v0

    .line 922
    if-eqz v0, :cond_1

    .line 923
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyChip;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 924
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelyChip;->getHitRect(Landroid/graphics/Rect;)V

    .line 929
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;
    invoke-static {v1}, Lcom/android/calendar/timely/MonthViewFrame;->access$300(Lcom/android/calendar/timely/MonthViewFrame;)Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v1

    iget v1, v1, Lcom/android/calendar/timely/CalendarMonthView;->mChipHorizontalMargin:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;
    invoke-static {v2}, Lcom/android/calendar/timely/MonthViewFrame;->access$300(Lcom/android/calendar/timely/MonthViewFrame;)Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v2

    iget v2, v2, Lcom/android/calendar/timely/CalendarMonthView;->mChipVerticalMargin:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 930
    # invokes: Lcom/android/calendar/timely/MonthViewFrame;->auxIndexFromId(I)I
    invoke-static {p1}, Lcom/android/calendar/timely/MonthViewFrame;->access$900(I)I

    move-result v0

    .line 931
    if-lez v0, :cond_0

    .line 932
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSecondSharedRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    .line 934
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSecondSharedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 937
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 956
    :goto_0
    return-void

    .line 938
    :cond_1
    # invokes: Lcom/android/calendar/timely/MonthViewFrame;->maybeIndexFromId(II)I
    invoke-static {v2, p1}, Lcom/android/calendar/timely/MonthViewFrame;->access$1000(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 939
    # invokes: Lcom/android/calendar/timely/MonthViewFrame;->maybeIndexFromId(II)I
    invoke-static {v2, p1}, Lcom/android/calendar/timely/MonthViewFrame;->access$1000(II)I

    move-result v0

    .line 941
    # invokes: Lcom/android/calendar/timely/MonthViewFrame;->idFromIndex(III)I
    invoke-static {v5, v0, v5}, Lcom/android/calendar/timely/MonthViewFrame;->access$600(III)I

    move-result v1

    invoke-super {p0, v1, p2}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 942
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 943
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;
    invoke-static {v3}, Lcom/android/calendar/timely/MonthViewFrame;->access$300(Lcom/android/calendar/timely/MonthViewFrame;)Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/timely/CalendarMonthView;->getEventChipHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 944
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 945
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mNumHiddenChips:[I
    invoke-static {v1}, Lcom/android/calendar/timely/MonthViewFrame;->access$700(Lcom/android/calendar/timely/MonthViewFrame;)[I

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    invoke-virtual {v2}, Lcom/android/calendar/timely/MonthViewFrame;->getFirstDayOffset()I

    move-result v2

    add-int/2addr v0, v2

    aget v0, v1, v0

    .line 946
    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/calendar/timely/MonthViewFrame;->access$1100(Lcom/android/calendar/timely/MonthViewFrame;)Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$plurals;->invisible_events:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 948
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 946
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 950
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 952
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 953
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;
    invoke-static {v1}, Lcom/android/calendar/timely/MonthViewFrame;->access$300(Lcom/android/calendar/timely/MonthViewFrame;)Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v1

    iget v1, v1, Lcom/android/calendar/timely/CalendarMonthView;->mChipHorizontalMargin:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/MonthViewFrame;

    # getter for: Lcom/android/calendar/timely/MonthViewFrame;->mOwner:Lcom/android/calendar/timely/CalendarMonthView;
    invoke-static {v2}, Lcom/android/calendar/timely/MonthViewFrame;->access$300(Lcom/android/calendar/timely/MonthViewFrame;)Lcom/android/calendar/timely/CalendarMonthView;

    move-result-object v2

    iget v2, v2, Lcom/android/calendar/timely/CalendarMonthView;->mChipVerticalMargin:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 954
    iget-object v0, p0, Lcom/android/calendar/timely/MonthViewFrame$ChipMonthViewTouchHelper;->mSharedRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
