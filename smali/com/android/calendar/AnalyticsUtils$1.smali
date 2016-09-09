.class final Lcom/android/calendar/AnalyticsUtils$1;
.super Ljava/lang/Object;
.source "AnalyticsUtils.java"

# interfaces
.implements Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AnalyticsUtils;->postAppOpenAnalytics(Landroid/content/Context;Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener",
        "<",
        "Lcom/android/calendar/timely/data/CalendarItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cache:Lcom/android/calendar/timely/data/CalendarsCache;

.field final synthetic val$task:Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/data/CalendarsCache;Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/calendar/AnalyticsUtils$1;->val$cache:Lcom/android/calendar/timely/data/CalendarsCache;

    iput-object p2, p0, Lcom/android/calendar/AnalyticsUtils$1;->val$task:Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged(ILjava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/timely/data/DiffData",
            "<",
            "Lcom/android/calendar/timely/data/CalendarItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/calendar/AnalyticsUtils$1;->val$cache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/data/CalendarsCache;->removeDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/calendar/AnalyticsUtils$1;->val$task:Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AnalyticsUtils$ReportAppOpenAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 88
    return-void
.end method
