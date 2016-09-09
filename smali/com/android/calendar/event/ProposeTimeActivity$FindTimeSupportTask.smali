.class Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;
.super Landroid/os/AsyncTask;
.source "ProposeTimeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/ProposeTimeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindTimeSupportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final mAccountName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/calendar/event/ProposeTimeActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/ProposeTimeActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;->this$0:Lcom/android/calendar/event/ProposeTimeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 249
    iput-object p2, p0, Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;->mAccountName:Ljava/lang/String;

    .line 250
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 245
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;->this$0:Lcom/android/calendar/event/ProposeTimeActivity;

    # setter for: Lcom/android/calendar/event/ProposeTimeActivity;->mIsFindTimeSupported:Ljava/lang/Boolean;
    invoke-static {v0, p1}, Lcom/android/calendar/event/ProposeTimeActivity;->access$002(Lcom/android/calendar/event/ProposeTimeActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 276
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;->this$0:Lcom/android/calendar/event/ProposeTimeActivity;

    # invokes: Lcom/android/calendar/event/ProposeTimeActivity;->launchFindATime()V
    invoke-static {v0}, Lcom/android/calendar/event/ProposeTimeActivity;->access$100(Lcom/android/calendar/event/ProposeTimeActivity;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;->this$0:Lcom/android/calendar/event/ProposeTimeActivity;

    # invokes: Lcom/android/calendar/event/ProposeTimeActivity;->launchDatePicker()V
    invoke-static {v0}, Lcom/android/calendar/event/ProposeTimeActivity;->access$200(Lcom/android/calendar/event/ProposeTimeActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 245
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/ProposeTimeActivity$FindTimeSupportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
