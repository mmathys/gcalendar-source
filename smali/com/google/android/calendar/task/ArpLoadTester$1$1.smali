.class Lcom/google/android/calendar/task/ArpLoadTester$1$1;
.super Landroid/os/AsyncTask;
.source "ArpLoadTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/ArpLoadTester$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/calendar/task/ArpLoadTester$1;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/ArpLoadTester$1;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpLoadTester$1$1;->this$1:Lcom/google/android/calendar/task/ArpLoadTester$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/ArpLoadTester$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester$1$1;->this$1:Lcom/google/android/calendar/task/ArpLoadTester$1;

    iget-object v0, v0, Lcom/google/android/calendar/task/ArpLoadTester$1;->this$0:Lcom/google/android/calendar/task/ArpLoadTester;

    const/4 v1, 0x1

    # setter for: Lcom/google/android/calendar/task/ArpLoadTester;->mShouldProfile:Z
    invoke-static {v0, v1}, Lcom/google/android/calendar/task/ArpLoadTester;->access$002(Lcom/google/android/calendar/task/ArpLoadTester;Z)Z

    .line 187
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester$1$1;->this$1:Lcom/google/android/calendar/task/ArpLoadTester$1;

    iget-object v0, v0, Lcom/google/android/calendar/task/ArpLoadTester$1;->this$0:Lcom/google/android/calendar/task/ArpLoadTester;

    # setter for: Lcom/google/android/calendar/task/ArpLoadTester;->mTask:Lcom/google/android/gms/reminders/model/Task;
    invoke-static {v0, v2}, Lcom/google/android/calendar/task/ArpLoadTester;->access$102(Lcom/google/android/calendar/task/ArpLoadTester;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;

    .line 188
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 180
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/ArpLoadTester$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 193
    const-string v1, "ArpLoadTester"

    const-string v2, "Profiling account: "

    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester$1$1;->this$1:Lcom/google/android/calendar/task/ArpLoadTester$1;

    iget-object v0, v0, Lcom/google/android/calendar/task/ArpLoadTester$1;->val$taskAccount:Lcom/google/android/calendar/task/TaskAccount;

    invoke-interface {v0}, Lcom/google/android/calendar/task/TaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 194
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester$1$1;->this$1:Lcom/google/android/calendar/task/ArpLoadTester$1;

    iget-object v0, v0, Lcom/google/android/calendar/task/ArpLoadTester$1;->this$0:Lcom/google/android/calendar/task/ArpLoadTester;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpLoadTester$1$1;->this$1:Lcom/google/android/calendar/task/ArpLoadTester$1;

    iget-object v1, v1, Lcom/google/android/calendar/task/ArpLoadTester$1;->val$taskAccount:Lcom/google/android/calendar/task/TaskAccount;

    # invokes: Lcom/google/android/calendar/task/ArpLoadTester;->loadAccount(Lcom/google/android/calendar/task/TaskAccount;)V
    invoke-static {v0, v1}, Lcom/google/android/calendar/task/ArpLoadTester;->access$200(Lcom/google/android/calendar/task/ArpLoadTester;Lcom/google/android/calendar/task/TaskAccount;)V

    .line 195
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
