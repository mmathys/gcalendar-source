.class public Lcom/android/calendar/widget/WidgetRow$BirthdayChip;
.super Lcom/android/calendar/widget/WidgetRow$Chip;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BirthdayChip"
.end annotation


# instance fields
.field final mNamesResource:I

.field final mSubtitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelineBirthday;Lcom/android/calendar/DateTimeFormatHelper;)V
    .locals 1

    .prologue
    .line 727
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/widget/WidgetRow$Chip;-><init>(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    .line 714
    sget v0, Lcom/android/calendar/R$id;->when:I

    iput v0, p0, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->mNamesResource:I

    .line 728
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineBirthday;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->mSubtitle:Ljava/lang/String;

    .line 729
    return-void
.end method


# virtual methods
.method public getLayoutId(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)I
    .locals 1

    .prologue
    .line 733
    invoke-virtual {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->isNarrowStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    sget v0, Lcom/android/calendar/R$layout;->widget_chip_1_narrow:I

    .line 741
    :goto_0
    return v0

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->mSubtitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->mDayInfo:Lcom/android/calendar/widget/WidgetRow$DayInfo;

    if-nez v0, :cond_1

    .line 738
    sget v0, Lcom/android/calendar/R$layout;->widget_chip_1_normal:I

    goto :goto_0

    .line 739
    :cond_1
    sget v0, Lcom/android/calendar/R$layout;->widget_chip_1_top_normal:I

    goto :goto_0

    .line 741
    :cond_2
    sget v0, Lcom/android/calendar/R$layout;->widget_chip_2_normal:I

    goto :goto_0
.end method

.method protected getTitleDescription(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->mSubtitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 769
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->mSubtitle:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setOnClickFillInIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 754
    sget v0, Lcom/android/calendar/R$id;->widget_row:I

    invoke-virtual {p0, p1}, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->createTimelineItemFillIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 755
    return-void
.end method

.method public updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/timely/TimelineBirthday;

    # getter for: Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mBirthdayColor:I
    invoke-static {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->access$600(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/TimelineBirthday;->setColor(I)V

    .line 761
    invoke-super {p0, p1, p2}, Lcom/android/calendar/widget/WidgetRow$Chip;->updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V

    .line 762
    return-void
.end method

.method public updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;I)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 746
    sget v2, Lcom/android/calendar/R$id;->title:I

    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move v5, p3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/CharSequence;II)V

    .line 747
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->mSubtitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    iget v2, p0, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->mNamesResource:I

    iget-object v4, p0, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->mSubtitle:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v5, p3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/widget/WidgetRow$BirthdayChip;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/CharSequence;II)V

    .line 750
    :cond_0
    return-void
.end method
