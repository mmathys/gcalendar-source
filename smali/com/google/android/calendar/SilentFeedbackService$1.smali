.class Lcom/google/android/calendar/SilentFeedbackService$1;
.super Ljava/lang/Object;
.source "SilentFeedbackService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/SilentFeedbackService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/SilentFeedbackService;

.field final synthetic val$googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/SilentFeedbackService;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/calendar/SilentFeedbackService$1;->this$0:Lcom/google/android/calendar/SilentFeedbackService;

    iput-object p2, p0, Lcom/google/android/calendar/SilentFeedbackService$1;->val$googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p3, p0, Lcom/google/android/calendar/SilentFeedbackService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 136
    const-string v0, "SilentFeedbackService"

    const-string v1, "Sending silent feedback now."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 137
    iget-object v0, p0, Lcom/google/android/calendar/SilentFeedbackService$1;->this$0:Lcom/google/android/calendar/SilentFeedbackService;

    iget-object v1, p0, Lcom/google/android/calendar/SilentFeedbackService$1;->val$googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/calendar/SilentFeedbackService$1;->this$0:Lcom/google/android/calendar/SilentFeedbackService;

    iget-object v3, p0, Lcom/google/android/calendar/SilentFeedbackService$1;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/google/android/calendar/SilentFeedbackService;->buildCrashOptions(Landroid/content/Intent;)Lcom/google/android/gms/feedback/FeedbackOptions;
    invoke-static {v2, v3}, Lcom/google/android/calendar/SilentFeedbackService;->access$100(Lcom/google/android/calendar/SilentFeedbackService;Landroid/content/Intent;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/SilentFeedbackService;->silentSendFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/feedback/FeedbackOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/calendar/SilentFeedbackService$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/SilentFeedbackService$1$1;-><init>(Lcom/google/android/calendar/SilentFeedbackService$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 147
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method
