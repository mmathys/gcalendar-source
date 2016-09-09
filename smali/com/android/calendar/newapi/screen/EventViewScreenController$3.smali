.class Lcom/android/calendar/newapi/screen/EventViewScreenController$3;
.super Ljava/lang/Object;
.source "EventViewScreenController.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/EventViewScreenController;->onRsvpClicked(I)V
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

.field final synthetic val$modifications:Lcom/google/android/calendar/api/EventModifications;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/EventViewScreenController;Lcom/google/android/calendar/api/EventModifications;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController$3;->this$0:Lcom/android/calendar/newapi/screen/EventViewScreenController;

    iput-object p2, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController$3;->val$modifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/calendar/api/EventClient$GenericResult;)V
    .locals 2

    .prologue
    .line 238
    invoke-interface {p1}, Lcom/google/android/calendar/api/EventClient$GenericResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController$3;->this$0:Lcom/android/calendar/newapi/screen/EventViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->getData()Lcom/android/calendar/newapi/model/ScreenData;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/newapi/model/EventViewScreenData;

    iget-object v1, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController$3;->val$modifications:Lcom/google/android/calendar/api/EventModifications;

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/model/EventViewScreenData;->setEvent(Lcom/google/android/calendar/api/Event;)V

    .line 241
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController$3;->this$0:Lcom/android/calendar/newapi/screen/EventViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->updateCommandBar()V

    .line 242
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/EventViewScreenController$3;->this$0:Lcom/android/calendar/newapi/screen/EventViewScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/EventViewScreenController;->dismiss()V

    .line 244
    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 235
    check-cast p1, Lcom/google/android/calendar/api/EventClient$GenericResult;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/screen/EventViewScreenController$3;->onResult(Lcom/google/android/calendar/api/EventClient$GenericResult;)V

    return-void
.end method
