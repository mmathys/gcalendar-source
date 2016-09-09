.class Lcom/google/android/calendar/timely/report/DebugReportingService$2;
.super Ljava/lang/Object;
.source "DebugReportingService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/report/DebugReportingService;->initializeClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/report/DebugReportingService;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/report/DebugReportingService;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/calendar/timely/report/DebugReportingService$2;->this$0:Lcom/google/android/calendar/timely/report/DebugReportingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 93
    # getter for: Lcom/google/android/calendar/timely/report/DebugReportingService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/report/DebugReportingService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Feedback API client connected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 94
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 5

    .prologue
    .line 98
    # getter for: Lcom/google/android/calendar/timely/report/DebugReportingService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/report/DebugReportingService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Feedback API client disconnected: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 99
    return-void
.end method
