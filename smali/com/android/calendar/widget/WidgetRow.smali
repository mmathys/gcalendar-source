.class public Lcom/android/calendar/widget/WidgetRow;
.super Ljava/lang/Object;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/widget/WidgetRow$DayInfo;,
        Lcom/android/calendar/widget/WidgetRow$TaskBundleChip;,
        Lcom/android/calendar/widget/WidgetRow$TaskTimedChip;,
        Lcom/android/calendar/widget/WidgetRow$GrooveChip;,
        Lcom/android/calendar/widget/WidgetRow$TaskAllDayChip;,
        Lcom/android/calendar/widget/WidgetRow$BirthdayChip;,
        Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;,
        Lcom/android/calendar/widget/WidgetRow$HolidayChip;,
        Lcom/android/calendar/widget/WidgetRow$AllDayChip;,
        Lcom/android/calendar/widget/WidgetRow$RegularChipOne;,
        Lcom/android/calendar/widget/WidgetRow$Chip;,
        Lcom/android/calendar/widget/WidgetRow$DayDivider;,
        Lcom/android/calendar/widget/WidgetRow$WeekDivider;,
        Lcom/android/calendar/widget/WidgetRow$TopDivider;,
        Lcom/android/calendar/widget/WidgetRow$Footer;,
        Lcom/android/calendar/widget/WidgetRow$NoEventsToday;,
        Lcom/android/calendar/widget/WidgetRow$NoEventsScheduled;,
        Lcom/android/calendar/widget/WidgetRow$Row;,
        Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;
    }
.end annotation


# direct methods
.method protected static createChip(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;ILcom/android/calendar/DateTimeFormatHelper;)Lcom/android/calendar/widget/WidgetRow$Chip;
    .locals 1

    .prologue
    .line 107
    instance-of v0, p1, Lcom/android/calendar/task/TimelineTask;

    if-eqz v0, :cond_1

    .line 108
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lcom/android/calendar/widget/WidgetRow$TaskAllDayChip;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/calendar/widget/WidgetRow$TaskAllDayChip;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    .line 126
    :goto_0
    return-object v0

    .line 110
    :cond_0
    new-instance v0, Lcom/android/calendar/widget/WidgetRow$TaskTimedChip;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/calendar/widget/WidgetRow$TaskTimedChip;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    goto :goto_0

    .line 112
    :cond_1
    instance-of v0, p1, Lcom/android/calendar/task/TimelineTaskBundle;

    if-eqz v0, :cond_2

    .line 113
    new-instance v0, Lcom/android/calendar/widget/WidgetRow$TaskBundleChip;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/calendar/widget/WidgetRow$TaskBundleChip;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    goto :goto_0

    .line 115
    :cond_2
    instance-of v0, p1, Lcom/android/calendar/groove/TimelineGroove;

    if-eqz v0, :cond_3

    .line 116
    new-instance v0, Lcom/android/calendar/widget/WidgetRow$GrooveChip;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/calendar/widget/WidgetRow$GrooveChip;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    goto :goto_0

    .line 118
    :cond_3
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    new-instance v0, Lcom/android/calendar/widget/WidgetRow$AllDayChip;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/calendar/widget/WidgetRow$AllDayChip;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    goto :goto_0

    .line 123
    :cond_4
    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getStartDay()I

    move-result v0

    if-ge v0, p2, :cond_5

    invoke-interface {p1}, Lcom/android/calendar/timely/TimelineItem;->getEndDay()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 124
    new-instance v0, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    goto :goto_0

    .line 126
    :cond_5
    new-instance v0, Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/calendar/widget/WidgetRow$RegularChipTwo;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    goto :goto_0
.end method

.method protected static getViewTypeCount()I
    .locals 1

    .prologue
    .line 152
    const/16 v0, 0x16

    return v0
.end method
