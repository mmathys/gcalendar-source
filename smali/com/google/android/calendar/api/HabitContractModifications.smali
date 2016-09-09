.class public interface abstract Lcom/google/android/calendar/api/HabitContractModifications;
.super Ljava/lang/Object;
.source "HabitContractModifications.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/calendar/api/HabitContract;


# virtual methods
.method public abstract applyModifications(Lcom/google/android/calendar/api/HabitContractModifications;)V
.end method

.method public abstract clearModifications()V
.end method

.method public abstract isAnyDayTimeAcceptable()Z
.end method

.method public abstract isDailyPatternModified()Z
.end method

.method public abstract isDurationMinutesModified()Z
.end method

.method public abstract isIntervalModified()Z
.end method

.method public abstract isModified()Z
.end method

.method public abstract isNumInstancesPerIntervalModified()Z
.end method

.method public abstract isUntilMillisUtcModified()Z
.end method

.method public abstract setAfternoonPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;
.end method

.method public abstract setAnyDayTimeAcceptable()Lcom/google/android/calendar/api/HabitContractModifications;
.end method

.method public abstract setDurationMinutes(I)Lcom/google/android/calendar/api/HabitContractModifications;
.end method

.method public abstract setEveningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;
.end method

.method public abstract setInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;
.end method

.method public abstract setMorningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;
.end method

.method public abstract setNumInstancesPerInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;
.end method

.method public abstract setUntilMillisUtc(J)Lcom/google/android/calendar/api/HabitContractModifications;
.end method
