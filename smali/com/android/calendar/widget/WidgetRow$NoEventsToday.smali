.class public Lcom/android/calendar/widget/WidgetRow$NoEventsToday;
.super Lcom/android/calendar/widget/WidgetRow$Row;
.source "WidgetRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/WidgetRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NoEventsToday"
.end annotation


# instance fields
.field final mDayInfo:Lcom/android/calendar/widget/WidgetRow$DayInfo;

.field final mHadEvents:Z


# direct methods
.method public constructor <init>(ILcom/android/calendar/time/Time;ZLcom/android/calendar/DateTimeFormatHelper;)V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/android/calendar/widget/WidgetRow$Row;-><init>()V

    .line 241
    new-instance v0, Lcom/android/calendar/widget/WidgetRow$DayInfo;

    invoke-direct {v0, p1, p1, p2, p4}, Lcom/android/calendar/widget/WidgetRow$DayInfo;-><init>(IILcom/android/calendar/time/Time;Lcom/android/calendar/DateTimeFormatHelper;)V

    iput-object v0, p0, Lcom/android/calendar/widget/WidgetRow$NoEventsToday;->mDayInfo:Lcom/android/calendar/widget/WidgetRow$DayInfo;

    .line 242
    iput-boolean p3, p0, Lcom/android/calendar/widget/WidgetRow$NoEventsToday;->mHadEvents:Z

    .line 243
    return-void
.end method


# virtual methods
.method public getLayoutId(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)I
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->isNarrowStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    sget v0, Lcom/android/calendar/R$layout;->widget_no_events_today_narrow:I

    .line 247
    :goto_0
    return v0

    .line 249
    :cond_0
    sget v0, Lcom/android/calendar/R$layout;->widget_no_events_today_normal:I

    goto :goto_0
.end method

.method public updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0, p1, p2}, Lcom/android/calendar/widget/WidgetRow$Row;->updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V

    .line 258
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$layout;->widget_no_events_today_normal:I

    if-ne v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/calendar/widget/WidgetRow$NoEventsToday;->mDayInfo:Lcom/android/calendar/widget/WidgetRow$DayInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/widget/WidgetRow$DayInfo;->updateStatus(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;Landroid/widget/RemoteViews;)V

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/widget/WidgetRow$NoEventsToday;->mHadEvents:Z

    if-eqz v0, :cond_1

    .line 262
    sget v0, Lcom/android/calendar/R$id;->value:I

    # getter for: Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->mNoMoreEventsToday:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;->access$000(Lcom/android/calendar/widget/WidgetRow$WidgetViewContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 264
    :cond_1
    return-void
.end method
