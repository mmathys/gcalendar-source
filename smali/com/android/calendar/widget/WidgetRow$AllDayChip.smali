.class public Lcom/android/calendar/widget/WidgetRow$AllDayChip;
.super Lcom/android/calendar/widget/WidgetRow$RegularChipOne;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AllDayChip"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/widget/WidgetRow$RegularChipOne;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/DateTimeFormatHelper;)V

    .line 624
    return-void
.end method
