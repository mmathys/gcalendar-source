.class public Lcom/android/calendar/syncadapter/analytics/AnalyticsFactory;
.super Ljava/lang/Object;
.source "AnalyticsFactory.java"


# static fields
.field private static final BUGFOOD_OR_EMULATOR:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/google/android/apps/common/util/isemulator/IsEmulator;->isProbablyEmulator()Z

    move-result v0

    sput-boolean v0, Lcom/android/calendar/syncadapter/analytics/AnalyticsFactory;->BUGFOOD_OR_EMULATOR:Z

    .line 13
    return-void
.end method

.method public static create()Lcom/google/android/syncadapters/calendar/Analytics;
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/android/calendar/syncadapter/analytics/AnalyticsFactory;->BUGFOOD_OR_EMULATOR:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/syncadapters/calendar/NullAnalytics;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/NullAnalytics;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/calendar/syncadapter/analytics/V2Analytics;

    invoke-direct {v0}, Lcom/android/calendar/syncadapter/analytics/V2Analytics;-><init>()V

    goto :goto_0
.end method
