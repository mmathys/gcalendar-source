.class Lcom/google/android/calendar/task/ArpTaskConnection$3;
.super Ljava/lang/Object;
.source "ArpTaskConnection.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasks(Landroid/content/Context;Ljava/lang/String;JJLcom/google/android/calendar/task/TaskConnection$TasksLoadListener;)V
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
.field final synthetic this$0:Lcom/google/android/calendar/task/ArpTaskConnection;

.field final synthetic val$listener:Lcom/google/android/calendar/task/TaskConnection$TasksLoadListener;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/ArpTaskConnection;Lcom/google/android/calendar/task/TaskConnection$TasksLoadListener;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpTaskConnection$3;->this$0:Lcom/google/android/calendar/task/ArpTaskConnection;

    iput-object p2, p0, Lcom/google/android/calendar/task/ArpTaskConnection$3;->val$listener:Lcom/google/android/calendar/task/TaskConnection$TasksLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 314
    check-cast p1, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/ArpTaskConnection$3;->onResult(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)V
    .locals 3

    .prologue
    .line 317
    invoke-interface {p1}, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const-string v0, "ArpTaskConnection"

    const-string v1, "loadTasks failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 319
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskConnection$3;->val$listener:Lcom/google/android/calendar/task/TaskConnection$TasksLoadListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/calendar/task/TaskConnection$TasksLoadListener;->onTasksLoaded(Lcom/google/android/gms/reminders/model/RemindersBuffer;)V

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskConnection$3;->val$listener:Lcom/google/android/calendar/task/TaskConnection$TasksLoadListener;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;->getRemindersBuffer()Lcom/google/android/gms/reminders/model/RemindersBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/task/TaskConnection$TasksLoadListener;->onTasksLoaded(Lcom/google/android/gms/reminders/model/RemindersBuffer;)V

    goto :goto_0
.end method
