.class public Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/date/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MonthViewTouchHelper"
.end annotation


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/datetimepicker/date/MonthView;


# direct methods
.method public constructor <init>(Lcom/android/datetimepicker/date/MonthView;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    .line 1061
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1057
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1058
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    .line 1062
    return-void
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .locals 4

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v0

    .line 1071
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1072
    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    invoke-virtual {p0, v1}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    .line 1077
    :cond_0
    return-void
.end method

.method protected getItemBounds(ILandroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/MonthView;->getInternalStartPadding()I

    move-result v0

    .line 1135
    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v1

    .line 1136
    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    iget v2, v2, Lcom/android/datetimepicker/date/MonthView;->mRowHeight:I

    .line 1137
    iget-object v3, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    iget v3, v3, Lcom/android/datetimepicker/date/MonthView;->mWidth:I

    iget-object v4, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    invoke-virtual {v4}, Lcom/android/datetimepicker/date/MonthView;->getEdgePadding()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    iget v4, v4, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    div-int/2addr v3, v4

    .line 1138
    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    invoke-virtual {v5}, Lcom/android/datetimepicker/date/MonthView;->findDayOffset()I

    move-result v5

    add-int/2addr v4, v5

    .line 1139
    iget-object v5, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    iget v5, v5, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    div-int v5, v4, v5

    .line 1140
    iget-object v6, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    iget-object v7, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    iget v7, v7, Lcom/android/datetimepicker/date/MonthView;->mNumDays:I

    rem-int/2addr v4, v7

    invoke-virtual {v6, v4}, Lcom/android/datetimepicker/date/MonthView;->getRtlCompatibleColumnIndex(I)I

    move-result v4

    .line 1141
    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 1142
    mul-int v4, v5, v2

    add-int/2addr v1, v4

    .line 1144
    add-int/2addr v3, v0

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1145
    return-void
.end method

.method protected getItemDescription(I)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    iget v1, v1, Lcom/android/datetimepicker/date/MonthView;->mYear:I

    iget-object v2, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    iget v2, v2, Lcom/android/datetimepicker/date/MonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 1157
    const-string v0, "dd MMMM yyyy"

    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    .line 1158
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1157
    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1160
    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    iget v1, v1, Lcom/android/datetimepicker/date/MonthView;->mSelectedDay:I

    if-ne p1, v1, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    invoke-virtual {v1}, Lcom/android/datetimepicker/date/MonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/datetimepicker/R$string;->item_is_selected:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1164
    :cond_0
    return-object v0
.end method

.method protected getVirtualViewAt(FF)I
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/date/MonthView;->getDayFromLocation(FF)I

    move-result v0

    .line 1082
    if-ltz v0, :cond_0

    .line 1085
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
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
    .line 1090
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    iget v1, v1, Lcom/android/datetimepicker/date/MonthView;->mNumCells:I

    if-gt v0, v1, :cond_0

    .line 1091
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1093
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1118
    packed-switch p2, :pswitch_data_0

    .line 1124
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1120
    :pswitch_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    # invokes: Lcom/android/datetimepicker/date/MonthView;->onDayClick(I)V
    invoke-static {v0, p1}, Lcom/android/datetimepicker/date/MonthView;->access$000(Lcom/android/datetimepicker/date/MonthView;I)V

    .line 1121
    const/4 v0, 0x1

    goto :goto_0

    .line 1118
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1097
    invoke-virtual {p0, p1}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1098
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    .line 1105
    invoke-virtual {p0, p1}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1107
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1109
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    iget v0, v0, Lcom/android/datetimepicker/date/MonthView;->mSelectedDay:I

    if-ne p1, v0, :cond_0

    .line 1110
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 1113
    :cond_0
    return-void
.end method

.method public setFocusedVirtualView(I)V
    .locals 3

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/android/datetimepicker/date/MonthView;

    invoke-virtual {p0, v0}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    .line 1067
    return-void
.end method
