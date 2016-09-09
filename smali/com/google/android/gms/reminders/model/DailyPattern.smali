.class public interface abstract Lcom/google/android/gms/reminders/model/DailyPattern;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/reminders/model/DailyPattern$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/reminders/model/DailyPattern;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAllDay()Ljava/lang/Boolean;
.end method

.method public abstract getDayPeriod()Ljava/lang/Integer;
.end method

.method public abstract getTimeOfDay()Lcom/google/android/gms/reminders/model/Time;
.end method
