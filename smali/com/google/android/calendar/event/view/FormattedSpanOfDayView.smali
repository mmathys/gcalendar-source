.class public Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;
.super Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;
.source "FormattedSpanOfDayView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method


# virtual methods
.method public setSpan(Lcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Time;->getTimeMs()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;->setVisibility(I)V

    .line 56
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;->mDateFormat:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->getFlags()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 49
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Time;->getTimeMs()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    .line 50
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;->setTime(Lcom/google/api/services/calendar/model/Time;)V

    goto :goto_0

    .line 54
    :cond_3
    new-instance v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;-><init>(Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;Landroid/content/Context;Lcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)V

    .line 55
    iget-object v0, v0, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/FormattedSpanOfDayView;->showValue(Ljava/lang/String;)V

    goto :goto_0
.end method
