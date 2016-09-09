.class public Lcom/android/calendar/widget/WidgetRow$TaskBundleChip;
.super Lcom/android/calendar/widget/WidgetRow$RegularChipOne;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TaskBundleChip"
.end annotation


# instance fields
.field protected final mSubTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V
    .locals 1

    .prologue
    .line 872
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    .line 873
    check-cast p2, Lcom/android/calendar/task/TimelineTaskBundle;

    invoke-virtual {p2}, Lcom/android/calendar/task/TimelineTaskBundle;->getSubtitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetRow$TaskBundleChip;->mSubTitle:Ljava/lang/String;

    .line 874
    return-void
.end method


# virtual methods
.method public getLayoutId(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)I
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->isNarrowStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    sget v0, Lcom/android/calendar/R$layout;->widget_chip_2_narrow:I

    .line 878
    :goto_0
    return v0

    .line 880
    :cond_0
    sget v0, Lcom/android/calendar/R$layout;->widget_chip_2_normal:I

    goto :goto_0
.end method

.method protected getTitleDescription(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$TaskBundleChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    check-cast v0, Lcom/android/calendar/task/TimelineTaskBundle;

    .line 891
    iget-object v1, p1, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Lcom/android/calendar/task/TimelineTaskBundle;->isDone()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/task/TimelineTaskBundle;->getQuantityString(Landroid/content/res/Resources;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/widget/WidgetRow$TaskBundleChip;->mItem:Lcom/android/calendar/timely/TimelineItem;

    .line 892
    invoke-interface {v1}, Lcom/android/calendar/timely/TimelineItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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

    .line 891
    return-object v0
.end method

.method public setOnClickFillInIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 885
    sget v0, Lcom/android/calendar/R$id;->widget_row:I

    invoke-virtual {p0, p1}, Lcom/android/calendar/widget/WidgetRow$TaskBundleChip;->createTimelineItemFillIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 886
    return-void
.end method

.method public updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;I)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 897
    sget v0, Lcom/android/calendar/R$drawable;->ic_reminders:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/calendar/widget/WidgetRow$TaskBundleChip;->updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;II)V

    .line 898
    sget v2, Lcom/android/calendar/R$id;->when:I

    iget-object v4, p0, Lcom/android/calendar/widget/WidgetRow$TaskBundleChip;->mSubTitle:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move v5, p3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/widget/WidgetRow$TaskBundleChip;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/CharSequence;II)V

    .line 899
    return-void
.end method
