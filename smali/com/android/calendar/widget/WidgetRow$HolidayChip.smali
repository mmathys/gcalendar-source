.class public Lcom/android/calendar/widget/WidgetRow$HolidayChip;
.super Lcom/android/calendar/widget/WidgetRow$RegularChipOne;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HolidayChip"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineHoliday;Lcom/android/calendar/DateTimeFormatHelper;)V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    .line 635
    return-void
.end method


# virtual methods
.method public setOnClickFillInIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 639
    sget v0, Lcom/android/calendar/R$id;->widget_row:I

    invoke-virtual {p0, p1}, Lcom/android/calendar/widget/WidgetRow$HolidayChip;->createTimelineItemFillIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 640
    return-void
.end method
