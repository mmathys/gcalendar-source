.class public Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;
.super Ljava/lang/Object;
.source "AnalyticsLoggerBase.java"


# instance fields
.field protected mAnalytics:Lcom/google/android/syncadapters/calendar/Analytics;

.field private final mLoggerCallbacks:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

.field protected final mPlayLoggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/playlog/PlayLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/android/calendar/syncadapter/analytics/AnalyticsFactory;->create()Lcom/google/android/syncadapters/calendar/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->mAnalytics:Lcom/google/android/syncadapters/calendar/Analytics;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->mPlayLoggers:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase$1;

    invoke-direct {v0, p0}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase$1;-><init>(Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;)V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->mLoggerCallbacks:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    return-void
.end method

.method private createPlayLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/playlog/PlayLogger;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/gms/playlog/PlayLogger;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->mLoggerCallbacks:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    const-string v3, "CalendarSyncAdapter"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/playlog/PlayLogger;-><init>(Landroid/content/Context;ILcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;Ljava/lang/String;)V

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {v0, p2}, Lcom/google/android/gms/playlog/PlayLogger;->setUploadAccountName(Ljava/lang/String;)Lcom/google/android/gms/playlog/PlayLogger;

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/playlog/PlayLogger;->start()V

    .line 84
    return-object v0
.end method


# virtual methods
.method protected getAccountsForPlayLogger(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;D)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->mAnalytics:Lcom/google/android/syncadapters/calendar/Analytics;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/Analytics;->setSampleRate(Landroid/content/Context;Ljava/lang/String;D)V

    .line 47
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->mPlayLoggers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 52
    if-nez v1, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->getAccountsForPlayLogger(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    .line 62
    array-length v2, v1

    if-lez v2, :cond_2

    .line 63
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 64
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->mPlayLoggers:Ljava/util/List;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->createPlayLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/playlog/PlayLogger;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->mPlayLoggers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->createPlayLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/playlog/PlayLogger;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->mAnalytics:Lcom/google/android/syncadapters/calendar/Analytics;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/Analytics;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    return-void
.end method

.method public setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 6

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->mAnalytics:Lcom/google/android/syncadapters/calendar/Analytics;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/Analytics;->setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 126
    return-void
.end method

.method public trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 7

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->mAnalytics:Lcom/google/android/syncadapters/calendar/Analytics;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/Analytics;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    return-void
.end method

.method public trackTiming(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->mAnalytics:Lcom/google/android/syncadapters/calendar/Analytics;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/google/android/syncadapters/calendar/Analytics;->trackTiming(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public trackView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/AnalyticsLoggerBase;->mAnalytics:Lcom/google/android/syncadapters/calendar/Analytics;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/syncadapters/calendar/Analytics;->trackScreenView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
