.class Lcom/android/calendar/newapi/screen/GrooveViewScreenController$1;
.super Ljava/lang/Object;
.source "GrooveViewScreenController.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->onDeleteConfirmed(Z)V
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
        "Lcom/google/android/gms/common/api/BooleanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/GrooveViewScreenController;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/GrooveViewScreenController;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveViewScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/BooleanResult;)V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveViewScreenController;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->mDeletePendingResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;
    invoke-static {v0, v1}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->access$002(Lcom/android/calendar/newapi/screen/GrooveViewScreenController;Lcom/android/calendar/newapi/common/BatchingPendingResult;)Lcom/android/calendar/newapi/common/BatchingPendingResult;

    .line 237
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/BooleanResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->dismiss()V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->edit_error_generic:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 233
    check-cast p1, Lcom/google/android/gms/common/api/BooleanResult;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController$1;->onResult(Lcom/google/android/gms/common/api/BooleanResult;)V

    return-void
.end method
