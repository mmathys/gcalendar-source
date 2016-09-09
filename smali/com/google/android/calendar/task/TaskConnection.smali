.class public interface abstract Lcom/google/android/calendar/task/TaskConnection;
.super Ljava/lang/Object;
.source "TaskConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/task/TaskConnection$TasksLoadListener;,
        Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;
    }
.end annotation


# virtual methods
.method public abstract createTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Z
.end method

.method public abstract deleteRecurrence(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Z
.end method

.method public abstract deleteTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Z
.end method

.method public abstract loadTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;)V
.end method

.method public abstract loadTaskSynchronous(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/reminders/model/Task;
.end method

.method public abstract loadTasks(Landroid/content/Context;Ljava/lang/String;JJLcom/google/android/calendar/task/TaskConnection$TasksLoadListener;)V
.end method

.method public abstract loadTasksSynchronous(Landroid/content/Context;Ljava/lang/String;JJ)Lcom/google/android/gms/reminders/model/RemindersBuffer;
.end method

.method public abstract snoozeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method public abstract updateRecurrence(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/model/Task;I)Z
.end method

.method public abstract updateTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/model/Task;)Z
.end method

.method public varargs abstract updateTasksDoneStatus(Landroid/content/Context;Ljava/lang/String;Z[Ljava/lang/String;)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;
.end method
