.class public Lcom/android/calendar/widget/WidgetRow$NoEventsScheduled;
.super Lcom/android/calendar/widget/WidgetRow$Row;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NoEventsScheduled"
.end annotation


# instance fields
.field final mDayInfo:Lcom/android/calendar/widget/WidgetRow$DayInfo;


# direct methods
.method public constructor <init>(ILcom/android/calendar/time/Time;Lcom/android/calendar/DateTimeFormatHelper;)V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/calendar/widget/WidgetRow$Row;-><init>()V

    .line 212
    new-instance v0, Lcom/android/calendar/widget/WidgetRow$DayInfo;

    invoke-direct {v0, p1, p1, p2, p3}, Lcom/android/calendar/widget/WidgetRow$DayInfo;-><init>(IILcom/android/calendar/time/Time;Lcom/android/calendar/DateTimeFormatHelper;)V

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetRow$NoEventsScheduled;->mDayInfo:Lcom/android/calendar/widget/WidgetRow$DayInfo;

    .line 213
    return-void
.end method


# virtual methods
.method public getLayoutId(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)I
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->isNarrowStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    sget v0, Lcom/android/calendar/R$layout;->widget_no_events_narrow:I

    .line 217
    :goto_0
    return v0

    .line 219
    :cond_0
    sget v0, Lcom/android/calendar/R$layout;->widget_no_events_normal:I

    goto :goto_0
.end method

.method public updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Lcom/android/calendar/widget/WidgetRow$Row;->updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V

    .line 228
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$layout;->widget_no_events_normal:I

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$NoEventsScheduled;->mDayInfo:Lcom/android/calendar/widget/WidgetRow$DayInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/widget/WidgetRow$DayInfo;->updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V

    .line 231
    :cond_0
    return-void
.end method
