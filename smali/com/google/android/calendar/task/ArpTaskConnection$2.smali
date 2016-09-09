.class Lcom/google/android/calendar/task/ArpTaskConnection$2;
.super Ljava/lang/Object;
.source "ArpTaskConnection.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/ArpTaskConnection;->loadTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;)V
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

.field final synthetic val$taskListener:Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/task/ArpTaskConnection;Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpTaskConnection$2;->this$0:Lcom/google/android/calendar/task/ArpTaskConnection;

    iput-object p2, p0, Lcom/google/android/calendar/task/ArpTaskConnection$2;->val$taskListener:Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 283
    check-cast p1, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/ArpTaskConnection$2;->onResult(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskConnection$2;->val$taskListener:Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskConnection$2;->this$0:Lcom/google/android/calendar/task/ArpTaskConnection;

    # invokes: Lcom/google/android/calendar/task/ArpTaskConnection;->loadTaskFinish(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)Lcom/google/android/gms/reminders/model/Task;
    invoke-static {v1, p1}, Lcom/google/android/calendar/task/ArpTaskConnection;->access$100(Lcom/google/android/calendar/task/ArpTaskConnection;Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;->onTaskLoaded(Lcom/google/android/gms/reminders/model/Task;)V

    .line 287
    return-void
.end method
