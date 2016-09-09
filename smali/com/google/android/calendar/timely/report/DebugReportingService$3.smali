.class Lcom/google/android/calendar/timely/report/DebugReportingService$3;
.super Ljava/lang/Object;
.source "DebugReportingService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/timely/report/DebugReportingService;->uploadReportFile(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/timely/report/DebugReportingService;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/timely/report/DebugReportingService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/calendar/timely/report/DebugReportingService$3;->this$0:Lcom/google/android/calendar/timely/report/DebugReportingService;

    iput-object p2, p0, Lcom/google/android/calendar/timely/report/DebugReportingService$3;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 137
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/report/DebugReportingService$3;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/android/calendar/timely/report/DebugReportingService$3;->this$0:Lcom/google/android/calendar/timely/report/DebugReportingService;

    # getter for: Lcom/google/android/calendar/timely/report/DebugReportingService;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;
    invoke-static {v0}, Lcom/google/android/calendar/timely/report/DebugReportingService;->access$100(Lcom/google/android/calendar/timely/report/DebugReportingService;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 141
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/google/android/calendar/timely/report/DebugReportingService$3;->this$0:Lcom/google/android/calendar/timely/report/DebugReportingService;

    invoke-virtual {v1, v0}, Lcom/google/android/calendar/timely/report/DebugReportingService;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    # getter for: Lcom/google/android/calendar/timely/report/DebugReportingService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/report/DebugReportingService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending Feedback: Success"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 148
    iget-object v0, p0, Lcom/google/android/calendar/timely/report/DebugReportingService$3;->this$0:Lcom/google/android/calendar/timely/report/DebugReportingService;

    iget-object v1, p0, Lcom/google/android/calendar/timely/report/DebugReportingService$3;->val$fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/report/DebugReportingService;->deleteReportFile(Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    # getter for: Lcom/google/android/calendar/timely/report/DebugReportingService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/calendar/timely/report/DebugReportingService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending Feedback: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
