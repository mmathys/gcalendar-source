.class public abstract Lcom/android/calendar/widget/WidgetRow$Chip;
.super Lcom/android/calendar/widget/WidgetRow$Row;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Chip"
.end annotation


# instance fields
.field protected mDayInfo:Lcom/android/calendar/widget/WidgetRow$DayInfo;

.field protected mIsFirst:Z

.field protected final mItem:Lcom/android/calendar/timely/TimelineItem;

.field protected final mTimeDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V
    .locals 1

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/android/calendar/widget/WidgetRow$Row;-><init>()V

    .line 393
    iput-object p1, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 395
    const/16 v0, 0x10

    .line 396
    invoke-virtual {p2, p1, v0}, Lcom/android/calendar/DateTimeFormatHelper;->getWidgetItemTimeText(Lcom/android/calendar/timely/TimelineItem;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mTimeDescription:Ljava/lang/String;

    .line 397
    return-void
.end method


# virtual methods
.method public createTimelineItemFillIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 510
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/widget/WidgetRow$Chip;->createTimelineItemFillIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createTimelineItemFillIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 499
    invoke-static {p1, p2}, Lcom/android/calendar/Utils;->getLaunchFillInIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setLaunchTimelineItem(Landroid/content/Intent;Lcom/android/calendar/timely/TimelineItem;)V

    .line 501
    iget-object v1, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getStartMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/android/calendar/widget/WidgetUtils;->addLaunchExtraEventStart(Landroid/content/Intent;JZ)V

    .line 502
    return-object v0
.end method

.method protected getStrikeThroughString(Ljava/lang/CharSequence;)Landroid/text/SpannableString;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 489
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 490
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 491
    return-object v0
.end method

.method protected getTitleDescription(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasLocation()Z
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isGroove()Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    instance-of v0, v0, Lcom/android/calendar/groove/TimelineGroove;

    return v0
.end method

.method protected isReminder()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    instance-of v0, v0, Lcom/android/calendar/task/TimelineTask;

    return v0
.end method

.method protected isReminderBundle()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    instance-of v0, v0, Lcom/android/calendar/task/TimelineTaskBundle;

    return v0
.end method

.method public setDayInfo(IILcom/android/calendar/time/Time;Lcom/android/calendar/DateTimeFormatHelper;)Lcom/android/calendar/widget/WidgetRow$Chip;
    .locals 1

    .prologue
    .line 539
    new-instance v0, Lcom/android/calendar/widget/WidgetRow$DayInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/calendar/widget/WidgetRow$DayInfo;-><init>(IILcom/android/calendar/time/Time;Lcom/android/calendar/DateTimeFormatHelper;)V

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mDayInfo:Lcom/android/calendar/widget/WidgetRow$DayInfo;

    .line 540
    return-object p0
.end method

.method public setIsFirst()Lcom/android/calendar/widget/WidgetRow$Chip;
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mIsFirst:Z

    .line 526
    return-object p0
.end method

.method public abstract setOnClickFillInIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V
.end method

.method public updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 405
    invoke-super {p0, p1, p2}, Lcom/android/calendar/widget/WidgetRow$Row;->updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V

    .line 406
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getColor()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v1

    .line 409
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasInvitedStatus()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move v4, v0

    .line 411
    :goto_0
    if-eqz v4, :cond_6

    .line 412
    sget v0, Lcom/android/calendar/R$drawable;->widget_chip_fill:I

    move v3, v0

    .line 414
    :goto_1
    if-eqz v4, :cond_7

    iget v0, p1, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mWhiteTextColor:I

    .line 416
    :goto_2
    sget v4, Lcom/android/calendar/R$id;->agenda_item_color:I

    invoke-virtual {p2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 417
    sget v3, Lcom/android/calendar/R$id;->agenda_item_color:I

    invoke-virtual {p0, p2, v3, v1}, Lcom/android/calendar/widget/WidgetRow$Chip;->setViewColorFilter(Landroid/widget/RemoteViews;II)V

    .line 418
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/calendar/widget/WidgetRow$Chip;->updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;I)V

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    invoke-virtual {p0}, Lcom/android/calendar/widget/WidgetRow$Chip;->isReminder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/widget/WidgetRow$Chip;->isReminderBundle()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 424
    :cond_0
    # getter for: Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mReminderPrefix:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->access$100(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->hasDeclinedStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    # getter for: Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mDeclinedEvent:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->access$400(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mTimeDescription:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {p0, p1}, Lcom/android/calendar/widget/WidgetRow$Chip;->getTitleDescription(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    invoke-interface {v0}, Lcom/android/calendar/timely/TimelineItem;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 443
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_3
    sget v0, Lcom/android/calendar/R$id;->widget_row:I

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 449
    iget-boolean v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mIsFirst:Z

    if-eqz v0, :cond_a

    move v0, v2

    .line 450
    :goto_4
    sget v1, Lcom/android/calendar/R$id;->widget_day_month_day:I

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 451
    sget v1, Lcom/android/calendar/R$id;->widget_day_weekday:I

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 452
    if-nez v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mDayInfo:Lcom/android/calendar/widget/WidgetRow$DayInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/widget/WidgetRow$DayInfo;->updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V

    .line 455
    :cond_4
    return-void

    :cond_5
    move v4, v2

    .line 409
    goto/16 :goto_0

    .line 413
    :cond_6
    sget v0, Lcom/android/calendar/R$drawable;->widget_chip_outline:I

    move v3, v0

    goto/16 :goto_1

    :cond_7
    move v0, v1

    .line 414
    goto/16 :goto_2

    .line 425
    :cond_8
    invoke-virtual {p0}, Lcom/android/calendar/widget/WidgetRow$Chip;->isGroove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$Chip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/groove/TimelineGroove;

    .line 427
    iget-boolean v0, v0, Lcom/android/calendar/groove/TimelineGroove;->completed:Z

    if-eqz v0, :cond_9

    .line 428
    # getter for: Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mDoneGroovePrefix:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->access$200(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :goto_5
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 430
    :cond_9
    # getter for: Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mGroovePrefix:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->access$300(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 449
    :cond_a
    const/16 v0, 0x8

    goto :goto_4
.end method

.method public abstract updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;I)V
.end method
