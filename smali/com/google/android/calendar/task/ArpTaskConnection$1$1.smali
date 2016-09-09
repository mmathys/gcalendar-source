.class Lcom/google/android/calendar/task/ArpTaskConnection$1$1;
.super Ljava/lang/Object;
.source "ArpTaskConnection.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/ArpTaskConnection$1;->onTaskLoaded(Lcom/google/android/gms/reminders/model/Task;)V
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
        "Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/calendar/task/ArpTaskConnection$1;

.field final synthetic val$task:Lcom/google/android/gms/reminders/model/Task;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/ArpTaskConnection$1;Lcom/google/android/gms/reminders/model/Task;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1$1;->this$1:Lcom/google/android/calendar/task/ArpTaskConnection$1;

    iput-object p2, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1$1;->val$task:Lcom/google/android/gms/reminders/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 267
    check-cast p1, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/ArpTaskConnection$1$1;->onResult(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1$1;->this$1:Lcom/google/android/calendar/task/ArpTaskConnection$1;

    iget-object v0, v0, Lcom/google/android/calendar/task/ArpTaskConnection$1;->this$0:Lcom/google/android/calendar/task/ArpTaskConnection;

    # invokes: Lcom/google/android/calendar/task/ArpTaskConnection;->loadTaskFinish(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)Lcom/google/android/gms/reminders/model/Task;
    invoke-static {v0, p1}, Lcom/google/android/calendar/task/ArpTaskConnection;->access$100(Lcom/google/android/calendar/task/ArpTaskConnection;Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1$1;->this$1:Lcom/google/android/calendar/task/ArpTaskConnection$1;

    iget-object v1, v1, Lcom/google/android/calendar/task/ArpTaskConnection$1;->val$listener:Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;

    new-instance v2, Lcom/google/android/gms/reminders/model/Task$Builder;

    iget-object v3, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1$1;->val$task:Lcom/google/android/gms/reminders/model/Task;

    invoke-direct {v2, v3}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    iget-object v3, p0, Lcom/google/android/calendar/task/ArpTaskConnection$1$1;->this$1:Lcom/google/android/calendar/task/ArpTaskConnection$1;

    iget-object v3, v3, Lcom/google/android/calendar/task/ArpTaskConnection$1;->this$0:Lcom/google/android/calendar/task/ArpTaskConnection;

    .line 275
    # invokes: Lcom/google/android/calendar/task/ArpTaskConnection;->getInstanceRecurrenceInfo(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/RecurrenceInfo;
    invoke-static {v3, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->access$200(Lcom/google/android/calendar/task/ArpTaskConnection;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setRecurrenceInfo(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 274
    invoke-interface {v1, v0}, Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;->onTaskLoaded(Lcom/google/android/gms/reminders/model/Task;)V

    .line 277
    return-void
.end method
