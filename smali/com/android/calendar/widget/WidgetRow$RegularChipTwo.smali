.class public Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;
.super Lcom/android/calendar/widget/WidgetRow$RegularChipOne;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RegularChipTwo"
.end annotation


# instance fields
.field protected final mTimeString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V
    .locals 1

    .prologue
    .line 652
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    .line 653
    const/high16 v0, 0x80000

    invoke-virtual {p3, p2, v0}, Lcom/android/calendar/DateTimeFormatHelper;->getWidgetItemTimeText(Lcom/android/calendar/timely/TimelineItem;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;->mTimeString:Ljava/lang/String;

    .line 654
    return-void
.end method


# virtual methods
.method public getLayoutId(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)I
    .locals 1

    .prologue
    .line 658
    invoke-virtual {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->isNarrowStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    sget v0, Lcom/android/calendar/R$layout;->widget_chip_2_narrow:I

    .line 658
    :goto_0
    return v0

    .line 660
    :cond_0
    sget v0, Lcom/android/calendar/R$layout;->widget_chip_2_normal:I

    goto :goto_0
.end method

.method public updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;I)V
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;->updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;II)V

    .line 666
    return-void
.end method

.method protected updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;II)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 675
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;->updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;II)V

    .line 677
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;->mTimeString:Ljava/lang/String;

    .line 692
    invoke-virtual {p0}, Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;->hasLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    # getter for: Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mTimeLocation:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->access$500(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 694
    invoke-interface {v4}, Lcom/android/calendar/timely/TimelineItem;->getLocation()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 693
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 698
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    invoke-virtual {p0, v0}, Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;->getStrikeThroughString(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v4

    .line 701
    :goto_0
    sget v2, Lcom/android/calendar/R$id;->when:I

    move-object v0, p0

    move-object v1, p2

    move v5, p3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/CharSequence;II)V

    .line 702
    return-void

    :cond_1
    move-object v4, v0

    goto :goto_0
.end method
