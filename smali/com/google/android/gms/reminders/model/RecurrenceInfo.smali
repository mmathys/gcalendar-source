.class public interface abstract Lcom/google/android/gms/reminders/model/RecurrenceInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/reminders/model/RecurrenceInfo;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getExceptional()Ljava/lang/Boolean;
.end method

.method public abstract getMaster()Ljava/lang/Boolean;
.end method

.method public abstract getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;
.end method

.method public abstract getRecurrenceId()Ljava/lang/String;
.end method
