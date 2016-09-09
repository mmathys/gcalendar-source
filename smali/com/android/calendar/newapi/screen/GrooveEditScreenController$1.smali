.class Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;
.super Ljava/lang/Object;
.source "GrooveEditScreenController.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->onSaveClicked()V
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
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

.field final synthetic val$contractChanged:Z

.field final synthetic val$timeChanged:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/GrooveEditScreenController;ZZ)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    iput-boolean p2, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->val$timeChanged:Z

    iput-boolean p3, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->val$contractChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/BooleanResult;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    const/4 v2, 0x0

    # setter for: Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mSaveResult:Lcom/android/calendar/newapi/common/BatchingPendingResult;
    invoke-static {v0, v2}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->access$002(Lcom/android/calendar/newapi/screen/GrooveEditScreenController;Lcom/android/calendar/newapi/common/BatchingPendingResult;)Lcom/android/calendar/newapi/common/BatchingPendingResult;

    .line 462
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/BooleanResult;->getValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->edit_error_generic:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 501
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->isNewHabit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    iget-object v2, v2, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    .line 470
    invoke-static {v2}, Lcom/android/calendar/groove/GrooveUtils;->hasContractChanges(Lcom/google/android/calendar/api/HabitModifications;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->val$timeChanged:Z

    .line 469
    invoke-static {v0, v2, v3}, Lcom/android/calendar/groove/GrooveUtils;->getGrooveFeedbackMessage(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 471
    iget-object v2, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    invoke-virtual {v2}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/calendar/Utils;->showFeedback(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    iget-object v0, v0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->val$timeChanged:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    # invokes: Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->hasReminderChanges()Z
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->access$100(Lcom/android/calendar/newapi/screen/GrooveEditScreenController;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    .line 477
    invoke-virtual {v2}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    iget-object v3, v3, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    invoke-interface {v3}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v3

    .line 476
    invoke-static {v2, v3}, Lcom/android/calendar/alerts/HabitsIntentService;->createRefreshNotificationsIntent(Landroid/content/Context;Lcom/google/android/calendar/api/HabitDescriptor;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 481
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    # invokes: Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->logAnalytics()V
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->access$200(Lcom/android/calendar/newapi/screen/GrooveEditScreenController;)V

    .line 484
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "ViewScreenController"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 486
    instance-of v2, v0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;

    if-eqz v2, :cond_6

    .line 487
    check-cast v0, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;

    iget-object v2, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    iget-object v2, v2, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mHabitModifications:Lcom/google/android/calendar/api/HabitModifications;

    iget-object v3, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    iget-object v3, v3, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->mEventModifications:Lcom/google/android/calendar/api/EventModifications;

    iget-boolean v4, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->val$timeChanged:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->val$contractChanged:Z

    if-eqz v4, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/calendar/newapi/screen/GrooveViewScreenController;->updateSegmentsIfPossible(Lcom/google/android/calendar/api/HabitModifications;Lcom/google/android/calendar/api/EventModifications;Z)V

    .line 498
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    # invokes: Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->notifyContentProvider()V
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->access$300(Lcom/android/calendar/newapi/screen/GrooveEditScreenController;)V

    .line 500
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->this$0:Lcom/android/calendar/newapi/screen/GrooveEditScreenController;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController;->postDismiss()V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 458
    check-cast p1, Lcom/google/android/gms/common/api/BooleanResult;

    invoke-virtual {p0, p1}, Lcom/android/calendar/newapi/screen/GrooveEditScreenController$1;->onResult(Lcom/google/android/gms/common/api/BooleanResult;)V

    return-void
.end method
