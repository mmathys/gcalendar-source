.class public Lcom/android/calendar/widget/WidgetUtils;
.super Ljava/lang/Object;
.source "WidgetUtils.java"


# direct methods
.method public static addLaunchExtraEventStart(Landroid/content/Intent;JZ)V
    .locals 1

    .prologue
    .line 171
    const-string v0, "beginTime"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 173
    const-string v0, "allDay"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    return-void
.end method

.method static formatDebugTime(JJ)Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/32 v4, 0xea60

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 67
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    .line 68
    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 70
    sub-long v2, p0, p2

    .line 71
    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 72
    div-long/2addr v2, v4

    .line 73
    const-string v1, "[%d] %s (%+d minutes)"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "%H:%M:%S"

    .line 74
    invoke-virtual {v0, v5}, Lcom/android/calendar/time/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    .line 73
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 77
    const-string v1, "[%d] %s (%+d seconds)"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "%H:%M:%S"

    .line 78
    invoke-virtual {v0, v5}, Lcom/android/calendar/time/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    .line 77
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMediumDayOfWeekString(Lcom/android/calendar/time/Time;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/android/calendar/time/Time;->weekDay:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetCallerIsSyncAdapterAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".APPWIDGET_CALLER_IS_SYNCADAPTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getWidgetLifeboatAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".APPWIDGET_LIFEBOAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetNextUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".APPWIDGET_NEXT_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetRefreshModelAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".APPWIDGET_REFRESH_MODEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".APPWIDGET_SCHEDULED_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getWidgetStyle(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 133
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetStyle(Landroid/os/Bundle;)I

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static getWidgetStyle(Landroid/os/Bundle;)I
    .locals 1

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .line 142
    const-string v0, "appWidgetMinWidth"

    .line 143
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 142
    invoke-static {v0}, Lcom/android/calendar/widget/WidgetUtils;->getWidgetStyleFromWidth(I)I

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getWidgetStyleFromWidth(I)I
    .locals 1

    .prologue
    .line 156
    const/16 v0, 0xb4

    if-ge v0, p0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getWidgetTaskChanged(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".APPWIDGET_TASK_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    const/4 v0, 0x0

    goto :goto_0
.end method
