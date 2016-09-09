.class public interface abstract Lcom/google/android/gms/reminders/model/ReminderEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/reminders/model/ReminderEvent;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAccountName()Ljava/lang/String;
.end method

.method public abstract getTask()Lcom/google/android/gms/reminders/model/Task;
.end method

.method public abstract getType()I
.end method
