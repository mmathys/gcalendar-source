.class public interface abstract Lcom/google/android/calendar/task/TaskAccount;
.super Ljava/lang/Object;
.source "TaskAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;,
        Lcom/google/android/calendar/task/TaskAccount$Tasks;
    }
.end annotation


# virtual methods
.method public abstract getAccountName()Ljava/lang/String;
.end method

.method public abstract getTasks()Lcom/google/android/calendar/task/TaskAccount$Tasks;
.end method

.method public abstract loadTasks(JJLjava/util/List;ZZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;",
            ">;ZZI)V"
        }
    .end annotation
.end method

.method public abstract shouldLoad(JJZZ)Z
.end method
