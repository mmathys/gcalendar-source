.class public interface abstract Lcom/google/android/calendar/api/HabitModifications;
.super Ljava/lang/Object;
.source "HabitModifications.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/calendar/api/Habit;


# virtual methods
.method public abstract applyModifications(Lcom/google/android/calendar/api/HabitModifications;)V
.end method

.method public abstract getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;
.end method

.method public abstract getOriginal()Lcom/google/android/calendar/api/Habit;
.end method

.method public abstract isColorOverrideModified()Z
.end method

.method public abstract isDeletionStatusModified()Z
.end method

.method public abstract isFingerprintModified()Z
.end method

.method public abstract isModified()Z
.end method

.method public abstract isNewHabit()Z
.end method

.method public abstract isRemindersModified()Z
.end method

.method public abstract isSummaryModified()Z
.end method

.method public abstract isTypeModified()Z
.end method

.method public abstract isVisibilityModified()Z
.end method

.method public abstract setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/HabitModifications;
.end method

.method public abstract setDeletionStatus(I)Lcom/google/android/calendar/api/HabitModifications;
.end method

.method public abstract setFingerprint(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitModifications;
.end method

.method public abstract setReminders(Lcom/google/android/calendar/api/HabitReminders;)Lcom/google/android/calendar/api/HabitModifications;
.end method

.method public abstract setSummary(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitModifications;
.end method

.method public abstract setType(I)Lcom/google/android/calendar/api/HabitModifications;
.end method

.method public abstract setVisibility(I)Lcom/google/android/calendar/api/HabitModifications;
.end method

.method public abstract switchCalendar(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/HabitDescriptor;
.end method
