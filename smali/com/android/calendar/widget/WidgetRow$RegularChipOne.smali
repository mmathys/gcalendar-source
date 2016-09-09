.class public Lcom/android/calendar/widget/WidgetRow$RegularChipOne;
.super Lcom/android/calendar/widget/WidgetRow$Chip;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RegularChipOne"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V
    .locals 1

    .prologue
    .line 553
    invoke-direct {p0, p2, p3}, Lcom/android/calendar/widget/WidgetRow$Chip;-><init>(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    .line 554
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;->mContext:Landroid/content/Context;

    .line 555
    return-void
.end method

.method private getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 601
    return-object v0
.end method


# virtual methods
.method public getLayoutId(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)I
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->isNarrowStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    sget v0, Lcom/android/calendar/R$layout;->widget_chip_1_narrow:I

    .line 559
    :goto_0
    return v0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;->mDayInfo:Lcom/android/calendar/widget/WidgetRow$DayInfo;

    if-nez v0, :cond_1

    .line 562
    sget v0, Lcom/android/calendar/R$layout;->widget_chip_1_normal:I

    goto :goto_0

    .line 563
    :cond_1
    sget v0, Lcom/android/calendar/R$layout;->widget_chip_1_top_normal:I

    goto :goto_0
.end method

.method public setOnClickFillInIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 573
    sget v1, Lcom/android/calendar/R$id;->widget_row:I

    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/timely/TimelineEvent;

    .line 574
    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineEvent;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;->createTimelineItemFillIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 573
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 575
    return-void
.end method

.method public updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;I)V
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;->updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;II)V

    .line 569
    return-void
.end method

.method protected updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;II)V
    .locals 7

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 609
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0, v4}, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;->getStrikeThroughString(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v4

    .line 612
    :cond_0
    sget v2, Lcom/android/calendar/R$id;->title:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/CharSequence;II)V

    .line 613
    return-void
.end method
