.class Lcom/android/calendar/newapi/screen/EventEditScreenController$1;
.super Ljava/lang/Object;
.source "EventEditScreenController.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/EventEditScreenController;->onSaveClicked()V
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
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/EventEditScreenController;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/EventEditScreenController;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/EventEditScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/BooleanResult;)V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/EventEditScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ViewScreenController"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 369
    instance-of v1, v0, Lcom/android/calendar/newapi/screen/EventViewScreenController;

    if-eqz v1, :cond_0

    .line 370
    check-cast v0, Lcom/android/calendar/newapi/screen/EventViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->updateSegments()V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/EventEditScreenController;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/newapi/screen/EventEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;
    invoke-static {v0, v1}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->access$002(Lcom/android/calendar/newapi/screen/EventEditScreenController;Lcom/android/calendar/newapi/common/BatchingPendingResult;)Lcom/android/calendar/newapi/common/BatchingPendingResult;

    .line 374
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/BooleanResult;->getValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/EventEditScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->edit_error_generic:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/EventEditScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventEditScreenController;->dismiss()V

    goto :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 363
    check-cast p1, Lcom/google/android/gms/common/api/BooleanResult;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/screen/EventEditScreenController$1;->onResult(Lcom/google/android/gms/common/api/BooleanResult;)V

    return-void
.end method
