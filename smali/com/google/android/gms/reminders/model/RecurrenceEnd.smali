.class public interface abstract Lcom/google/android/gms/reminders/model/RecurrenceEnd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/reminders/model/RecurrenceEnd;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAutoRenew()Ljava/lang/Boolean;
.end method

.method public abstract getAutoRenewUntil()Lcom/google/android/gms/reminders/model/DateTime;
.end method

.method public abstract getEndDateTime()Lcom/google/android/gms/reminders/model/DateTime;
.end method

.method public abstract getNumOccurrences()Ljava/lang/Integer;
.end method
