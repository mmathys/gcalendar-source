.class Lcom/google/android/calendar/SilentFeedbackService$2;
.super Ljava/lang/Object;
.source "SilentFeedbackService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


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


# direct methods
.method constructor <init>(Lcom/google/android/calendar/SilentFeedbackService;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/android/calendar/SilentFeedbackService$2;->this$0:Lcom/google/android/calendar/SilentFeedbackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5

    .prologue
    .line 158
    const-string v0, "SilentFeedbackService"

    const-string v1, "GoogleApiClient silent feedback connection failed with result: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 159
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 158
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 160
    iget-object v0, p0, Lcom/google/android/calendar/SilentFeedbackService$2;->this$0:Lcom/google/android/calendar/SilentFeedbackService;

    # invokes: Lcom/google/android/calendar/SilentFeedbackService;->tryToStopSelf()V
    invoke-static {v0}, Lcom/google/android/calendar/SilentFeedbackService;->access$000(Lcom/google/android/calendar/SilentFeedbackService;)V

    .line 161
    return-void
.end method
