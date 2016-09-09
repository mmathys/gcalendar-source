.class Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;
.super Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;
.source "TimelyColorMonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/TimelyColorMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimelyMonthViewTouchHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/TimelyColorMonthView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/TimelyColorMonthView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    .line 635
    invoke-direct {p0, p1, p2}, Lcom/android/datetimepicker/date/MonthView$MonthViewTouchHelper;-><init>(Lcom/android/datetimepicker/date/MonthView;Landroid/view/View;)V

    .line 636
    return-void
.end method


# virtual methods
.method protected getItemBounds(ILandroid/graphics/Rect;)V
    .locals 8

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # invokes: Lcom/android/calendar/timely/TimelyColorMonthView;->getInternalStartPadding()I
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$900(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mInterDayPadding:I
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$1000(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 673
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$1100(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I
    invoke-static {v2}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$1200(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I
    invoke-static {v2}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$1300(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 674
    iget-object v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mRowHeight:I
    invoke-static {v2}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$1400(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v2

    .line 675
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->DAY_SELECTED_CIRCLE_SIZE:I
    invoke-static {v3}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$1500(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mInterDayPadding:I
    invoke-static {v4}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$1000(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v4

    add-int/2addr v3, v4

    .line 676
    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # invokes: Lcom/android/calendar/timely/TimelyColorMonthView;->findDayOffset()I
    invoke-static {v5}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$1600(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v5

    add-int/2addr v4, v5

    .line 677
    iget-object v5, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I
    invoke-static {v5}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$1700(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v5

    div-int v5, v4, v5

    .line 678
    iget-object v6, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    iget-object v7, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mNumDays:I
    invoke-static {v7}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$1800(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v7

    rem-int/2addr v4, v7

    # invokes: Lcom/android/calendar/timely/TimelyColorMonthView;->getRtlCompatibleColumnIndex(I)I
    invoke-static {v6, v4}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$1900(Lcom/android/calendar/timely/TimelyColorMonthView;I)I

    move-result v4

    .line 679
    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 680
    mul-int v4, v5, v2

    add-int/2addr v1, v4

    .line 682
    add-int/2addr v3, v0

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v1, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 683
    return-void
.end method

.method protected getItemDescription(I)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 640
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$500(Lcom/android/calendar/timely/TimelyColorMonthView;)Lcom/android/calendar/time/Time;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mMonth:I
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$300(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mYear:I
    invoke-static {v2}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$400(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/calendar/time/Time;->set(III)V

    .line 641
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$500(Lcom/android/calendar/timely/TimelyColorMonthView;)Lcom/android/calendar/time/Time;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 642
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$500(Lcom/android/calendar/timely/TimelyColorMonthView;)Lcom/android/calendar/time/Time;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/calendar/time/Time;->allDay:Z

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$500(Lcom/android/calendar/timely/TimelyColorMonthView;)Lcom/android/calendar/time/Time;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$500(Lcom/android/calendar/timely/TimelyColorMonthView;)Lcom/android/calendar/time/Time;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;
    invoke-static {v2}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$500(Lcom/android/calendar/timely/TimelyColorMonthView;)Lcom/android/calendar/time/Time;

    move-result-object v2

    iput v6, v2, Lcom/android/calendar/time/Time;->second:I

    iput v6, v1, Lcom/android/calendar/time/Time;->minute:I

    iput v6, v0, Lcom/android/calendar/time/Time;->hour:I

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;
    invoke-static {v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$500(Lcom/android/calendar/timely/TimelyColorMonthView;)Lcom/android/calendar/time/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mHasToday:Z
    invoke-static {v3}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$600(Lcom/android/calendar/timely/TimelyColorMonthView;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mToday:I
    invoke-static {v3}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$700(Lcom/android/calendar/timely/TimelyColorMonthView;)I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 651
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    invoke-virtual {v3}, Lcom/android/calendar/timely/TimelyColorMonthView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->today_label:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    :cond_1
    const-string v3, "EEEE dd MMMM yyyy"

    invoke-static {v3, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 655
    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mTime:Lcom/android/calendar/time/Time;
    invoke-static {v3}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$500(Lcom/android/calendar/timely/TimelyColorMonthView;)Lcom/android/calendar/time/Time;

    move-result-object v3

    iget-wide v4, v3, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    .line 659
    iget-object v1, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    # getter for: Lcom/android/calendar/timely/TimelyColorMonthView;->mDataFactory:Lcom/android/calendar/timely/DataFactory;
    invoke-static {v1}, Lcom/android/calendar/timely/TimelyColorMonthView;->access$800(Lcom/android/calendar/timely/TimelyColorMonthView;)Lcom/android/calendar/timely/DataFactory;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v1

    .line 660
    iget-object v3, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    .line 661
    invoke-virtual {v3}, Lcom/android/calendar/timely/TimelyColorMonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/android/calendar/Utils;->getDayEventsDescription(Lcom/android/calendar/timely/MonthData;ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget-object v0, p0, Lcom/android/calendar/timely/TimelyColorMonthView$TimelyMonthViewTouchHelper;->this$0:Lcom/android/calendar/timely/TimelyColorMonthView;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelyColorMonthView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->button_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const-string v0, ". "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
