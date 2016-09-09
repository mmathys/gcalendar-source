.class Lcom/google/android/calendar/SilentFeedbackService$1$1;
.super Ljava/lang/Object;
.source "SilentFeedbackService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/SilentFeedbackService$1;->onConnected(Landroid/os/Bundle;)V
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
.field final synthetic this$1:Lcom/google/android/calendar/SilentFeedbackService$1;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/SilentFeedbackService$1;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/calendar/SilentFeedbackService$1$1;->this$1:Lcom/google/android/calendar/SilentFeedbackService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 138
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/SilentFeedbackService$1$1;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/calendar/SilentFeedbackService$1$1;->this$1:Lcom/google/android/calendar/SilentFeedbackService$1;

    iget-object v0, v0, Lcom/google/android/calendar/SilentFeedbackService$1;->val$googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/calendar/SilentFeedbackService$1$1;->this$1:Lcom/google/android/calendar/SilentFeedbackService$1;

    iget-object v0, v0, Lcom/google/android/calendar/SilentFeedbackService$1;->val$googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/SilentFeedbackService$1$1;->this$1:Lcom/google/android/calendar/SilentFeedbackService$1;

    iget-object v0, v0, Lcom/google/android/calendar/SilentFeedbackService$1;->this$0:Lcom/google/android/calendar/SilentFeedbackService;

    # invokes: Lcom/google/android/calendar/SilentFeedbackService;->tryToStopSelf()V
    invoke-static {v0}, Lcom/google/android/calendar/SilentFeedbackService;->access$000(Lcom/google/android/calendar/SilentFeedbackService;)V

    .line 145
    return-void
.end method
