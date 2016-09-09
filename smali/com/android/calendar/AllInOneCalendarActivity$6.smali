.class Lcom/android/calendar/AllInOneCalendarActivity$6;
.super Ljava/lang/Object;
.source "AllInOneCalendarActivity.java"

# interfaces
.implements Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$6;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllEventsDataReady()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$6;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    .line 554
    invoke-virtual {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "data_factory"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/DataFactory;

    .line 555
    if-nez v0, :cond_0

    .line 556
    const-string v0, "AllInOneCalendarAct"

    const-string v1, "DataFactory unavailable, cannot log analytics for AllDataReady."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    return-void

    .line 561
    :cond_0
    invoke-virtual {v0}, Lcom/android/calendar/timely/DataFactory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 562
    const-string v0, "AllInOneCalendarAct"

    const-string v1, "Unable to retrieve context from DataFactory for AllDataReady"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 566
    :cond_1
    invoke-static {v0}, Lcom/android/calendar/AnalyticsUtils;->maybeLogAllDataReadyAnalytics(Lcom/android/calendar/timely/DataFactory;)V

    goto :goto_0
.end method
