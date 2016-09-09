.class public Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;
.super Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;
.source "ArrivalTimeOfDayView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private formatTime(Lcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Time;->getTimeMs()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 41
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Time;->getTimeMs()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 44
    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    move v0, v1

    .line 55
    :goto_0
    if-lt v0, v9, :cond_0

    if-le v0, v8, :cond_1

    .line 56
    :cond_0
    const-string v2, "FormattedTimeOfDayView"

    const-string v3, "Unexpected arrival date diff: %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    iget-object v2, p0, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->mDateFormat:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    sget-object v3, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->ShowTime:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    if-ne v2, v3, :cond_1

    .line 58
    sget-object v2, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;->ShowWeekdayDateTime:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    iput-object v2, p0, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->mDateFormat:Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$DateFormat;

    .line 62
    :cond_1
    new-instance v2, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;

    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, p2}, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;-><init>(Lcom/google/android/calendar/event/view/FormattedTimeOfDayView;Landroid/content/Context;Lcom/google/api/services/calendar/model/Time;)V

    .line 64
    iget-object v3, v2, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 65
    const/4 v0, 0x0

    .line 85
    :cond_2
    :goto_1
    return-object v0

    .line 48
    :cond_3
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Time;->getTimeZoneOffsetMinutes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 49
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Time;->getTimeZoneOffsetMinutes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    mul-int/lit8 v0, v0, 0x3c

    int-to-long v6, v0

    .line 47
    invoke-static {v2, v3, v6, v7}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v2

    .line 51
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Time;->getTimeZoneOffsetMinutes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 52
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/Time;->getTimeZoneOffsetMinutes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    mul-int/lit8 v0, v0, 0x3c

    int-to-long v6, v0

    .line 50
    invoke-static {v4, v5, v6, v7}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    .line 53
    sub-int/2addr v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 49
    goto :goto_2

    :cond_5
    move v0, v1

    .line 52
    goto :goto_3

    .line 68
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 71
    if-ne v0, v8, :cond_7

    .line 72
    sget v0, Lcom/android/calendar/R$string;->time_plus_day:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_4
    iget-boolean v2, v2, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mIsHomeTime:Z

    if-nez v2, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->getFormat()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v4, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 74
    :cond_7
    if-ne v0, v9, :cond_8

    .line 75
    sget v0, Lcom/android/calendar/R$string;->time_minus_day:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    aput-object v5, v3, v1

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 78
    :cond_8
    iget-object v0, v2, Lcom/google/android/calendar/event/view/FormattedTimeOfDayView$FormattedTime;->mFormattedTime:Ljava/lang/String;

    goto :goto_4
.end method


# virtual methods
.method public setArrivalTime(ILcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)V
    .locals 5

    .prologue
    .line 97
    invoke-direct {p0, p2, p3}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->formatTime(Lcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->setVisibility(I)V

    .line 107
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 106
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->showValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArrivalTime(Lcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->formatTime(Lcom/google/api/services/calendar/model/Time;Lcom/google/api/services/calendar/model/Time;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/view/ArrivalTimeOfDayView;->showValue(Ljava/lang/String;)V

    .line 91
    return-void
.end method
