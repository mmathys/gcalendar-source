.class public Lcom/android/calendar/syncadapter/analytics/V2Analytics;
.super Ljava/lang/Object;
.source "V2Analytics.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/Analytics;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTracker(Landroid/content/Context;Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
    .locals 1

    .prologue
    .line 64
    invoke-static {p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setCustomDimension(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/syncadapter/analytics/V2Analytics;->getTracker(Landroid/content/Context;Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p3, p4}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 47
    return-void
.end method

.method public setCustomMetric(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/syncadapter/analytics/V2Analytics;->getTracker(Landroid/content/Context;Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    .line 52
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/analytics/tracking/android/Tracker;->setCustomMetric(ILjava/lang/Long;)V

    .line 53
    return-void
.end method

.method public setSampleRate(Landroid/content/Context;Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/syncadapter/analytics/V2Analytics;->getTracker(Landroid/content/Context;Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p3, p4}, Lcom/google/analytics/tracking/android/Tracker;->setSampleRate(D)V

    .line 26
    return-void
.end method

.method public trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/syncadapter/analytics/V2Analytics;->getTracker(Landroid/content/Context;Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    return-void
.end method

.method public trackScreenView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/syncadapter/analytics/V2Analytics;->getTracker(Landroid/content/Context;Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p3}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public trackTiming(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/syncadapter/analytics/V2Analytics;->getTracker(Landroid/content/Context;Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    move-object v1, p3

    move-wide v2, p4

    move-object v4, p6

    move-object v5, p7

    .line 39
    invoke-virtual/range {v0 .. v5}, Lcom/google/analytics/tracking/android/Tracker;->sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
