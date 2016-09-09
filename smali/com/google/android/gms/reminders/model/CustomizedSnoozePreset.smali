.class public interface abstract Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAfternoonCustomizedTime()Lcom/google/android/gms/reminders/model/Time;
.end method

.method public abstract getEveningCustomizedTime()Lcom/google/android/gms/reminders/model/Time;
.end method

.method public abstract getMorningCustomizedTime()Lcom/google/android/gms/reminders/model/Time;
.end method
