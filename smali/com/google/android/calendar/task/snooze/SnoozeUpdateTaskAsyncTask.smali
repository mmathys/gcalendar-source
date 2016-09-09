.class public Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;
.super Landroid/os/AsyncTask;
.source "SnoozeUpdateTaskAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;
    }
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
.field private final mAccountName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDueDateMillis:J

.field private final mListener:Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;

.field private final mTaskId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->mAccountName:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->mTaskId:Ljava/lang/String;

    .line 54
    iput-wide p4, p0, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->mDueDateMillis:J

    .line 55
    iput-object p6, p0, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->mListener:Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;

    .line 57
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 62
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskDataFactory;

    iget-object v1, p0, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->mTaskId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->mDueDateMillis:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/calendar/task/TaskDataFactory;->snoozeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->mListener:Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;

    iget-wide v2, p0, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->mDueDateMillis:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;->onSnoozeSuccess(J)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->mListener:Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;

    invoke-interface {v0}, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask$Listener;->onSnoozeFailure()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/task/snooze/SnoozeUpdateTaskAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
