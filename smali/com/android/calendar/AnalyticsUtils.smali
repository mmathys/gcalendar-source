.class public Lcom/android/calendar/AnalyticsUtils;
.super Ljava/lang/Object;
.source "AnalyticsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;
    }
.end annotation


# static fields
.field private static final VIEW_TO_ANALYTICS_VIEW_MODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHaveLoggedAllDataReady:Z

.field private static sHaveLoggedInfrequentAnalytics:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    sget v1, Lcom/android/calendar/R$id;->agenda_view:I

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "schedule"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->hourly_view:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "day"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->list_week_view_3days:I

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "nDay"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->week_view:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "week"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->month_view:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "month"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/AnalyticsUtils;->VIEW_TO_ANALYTICS_VIEW_MODE_MAP:Ljava/util/Map;

    .line 65
    sput-boolean v3, Lcom/android/calendar/AnalyticsUtils;->sHaveLoggedInfrequentAnalytics:Z

    .line 66
    sput-boolean v3, Lcom/android/calendar/AnalyticsUtils;->sHaveLoggedAllDataReady:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/calendar/AnalyticsUtils;->maybeLogInfrequentAnalytics(Landroid/content/Context;)V

    return-void
.end method

.method public static convertNumToDimensionValue(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    if-gt p0, p1, :cond_0

    .line 196
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static convertViewToAnalyticsViewMode(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/android/calendar/AnalyticsUtils;->VIEW_TO_ANALYTICS_VIEW_MODE_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 203
    const-string v0, "analytics_utils_prefs.xml"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static maybeLogAllDataReadyAnalytics(Lcom/android/calendar/timely/DataFactory;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 96
    sget-boolean v0, Lcom/android/calendar/AnalyticsUtils;->sHaveLoggedAllDataReady:Z

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/AnalyticsUtils;->sHaveLoggedAllDataReady:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/calendar/timely/DataFactory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 102
    invoke-static {v2}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    .line 105
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 106
    invoke-static {v2}, Lcom/android/calendar/Utils;->getTodayJulianDay(Landroid/content/Context;)I

    move-result v6

    move v3, v4

    .line 107
    :goto_1
    const/4 v0, 0x7

    if-ge v3, v0, :cond_5

    .line 108
    add-int v0, v3, v6

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/DataFactory;->getDataAllowNull(I)Lcom/android/calendar/timely/MonthData;

    move-result-object v7

    .line 113
    if-nez v7, :cond_1

    .line 114
    sput-boolean v4, Lcom/android/calendar/AnalyticsUtils;->sHaveLoggedAllDataReady:Z

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v7, v0}, Lcom/android/calendar/timely/MonthData;->getItems(I)Ljava/util/List;

    move-result-object v0

    .line 119
    if-nez v0, :cond_3

    .line 107
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 123
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineItem;

    .line 124
    instance-of v8, v0, Lcom/android/calendar/task/TimelineTaskType;

    if-nez v8, :cond_4

    .line 129
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 133
    :cond_5
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    .line 134
    const-string v3, "events_count"

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    const-string v6, "num_events"

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static maybeLogInfrequentAnalytics(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 165
    sget-boolean v0, Lcom/android/calendar/AnalyticsUtils;->sHaveLoggedInfrequentAnalytics:Z

    if-nez v0, :cond_1

    .line 166
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/AnalyticsUtils;->sHaveLoggedInfrequentAnalytics:Z

    .line 168
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 174
    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_0

    .line 179
    const-string v3, "device_info"

    iget v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    const-string v6, "swdp"

    move-object v2, p0

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    const-string v3, "device_info"

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    const-string v6, "dpi"

    move-object v2, p0

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/AnalyticsLogger;->trackTiming(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1
    return-void
.end method

.method static postAppOpenAnalytics(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;-><init>(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 76
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/android/calendar/timely/data/CalendarsCache;->hasLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v2, Lcom/android/calendar/AnalyticsUtils$1;

    invoke-direct {v2, v1, v0}, Lcom/android/calendar/AnalyticsUtils$1;-><init>(Lcom/android/calendar/timely/data/CalendarsCache;Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/data/CalendarsCache;->addDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    goto :goto_0
.end method

.method public static throttle(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 6

    .prologue
    .line 147
    invoke-static {p0}, Lcom/android/calendar/AnalyticsUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 148
    const-string v2, "throttle_time_"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 150
    const-wide/16 v4, -0x1

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 152
    add-long/2addr v4, p2

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    .line 153
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 154
    const/4 v0, 0x1

    .line 157
    :goto_1
    return v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
