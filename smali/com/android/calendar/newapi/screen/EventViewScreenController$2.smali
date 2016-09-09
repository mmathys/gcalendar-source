.class Lcom/android/calendar/newapi/screen/EventViewScreenController$2;
.super Ljava/lang/Object;
.source "EventViewScreenController.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/EventViewScreenController;->onDeleteConfirmed()V
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
        "Lcom/google/android/calendar/api/EventClient$GenericResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/EventViewScreenController;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/EventViewScreenController;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController$2;->this$0:Lcom/android/calendar/newapi/screen/EventViewScreenController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/calendar/api/EventClient$GenericResult;)V
    .locals 3

    .prologue
    .line 215
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventClient$GenericResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController$2;->this$0:Lcom/android/calendar/newapi/screen/EventViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->dismiss()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController$2;->this$0:Lcom/android/calendar/newapi/screen/EventViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getActivity()Landroid/app/Activity;

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
    .line 211
    check-cast p1, Lcom/google/android/calendar/api/EventClient$GenericResult;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/screen/EventViewScreenController$2;->onResult(Lcom/google/android/calendar/api/EventClient$GenericResult;)V

    return-void
.end method
