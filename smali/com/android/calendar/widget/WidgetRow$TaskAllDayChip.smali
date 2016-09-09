.class public Lcom/android/calendar/widget/WidgetRow$TaskAllDayChip;
.super Lcom/android/calendar/widget/WidgetRow$AllDayChip;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TaskAllDayChip"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V
    .locals 0

    .prologue
    .line 799
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/widget/WidgetRow$AllDayChip;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    .line 800
    return-void
.end method


# virtual methods
.method public setOnClickFillInIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 809
    sget v0, Lcom/android/calendar/R$id;->widget_row:I

    invoke-virtual {p0, p1}, Lcom/android/calendar/widget/WidgetRow$TaskAllDayChip;->createTimelineItemFillIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 810
    return-void
.end method

.method public updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;I)V
    .locals 1

    .prologue
    .line 804
    sget v0, Lcom/android/calendar/R$drawable;->ic_reminders:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/calendar/widget/WidgetRow$TaskAllDayChip;->updateTextViews(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;II)V

    .line 805
    return-void
.end method
