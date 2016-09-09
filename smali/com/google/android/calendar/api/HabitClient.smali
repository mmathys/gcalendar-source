.class public interface abstract Lcom/google/android/calendar/api/HabitClient;
.super Ljava/lang/Object;
.source "HabitClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/HabitClient$GenericResult;,
        Lcom/google/android/calendar/api/HabitClient$ListResult;,
        Lcom/google/android/calendar/api/HabitClient$ReadResult;,
        Lcom/google/android/calendar/api/HabitClient$CreateResult;
    }
.end annotation


# virtual methods
.method public abstract count(Lcom/google/android/calendar/api/HabitFilterOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/HabitFilterOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/calendar/api/HabitClient$GenericResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract create(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/HabitModifications;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/calendar/api/HabitClient$CreateResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract list(Lcom/google/android/calendar/api/HabitFilterOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/HabitFilterOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/calendar/api/HabitClient$ListResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract read(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/HabitDescriptor;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/calendar/api/HabitClient$ReadResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/HabitModifications;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/calendar/api/HabitClient$GenericResult;",
            ">;"
        }
    .end annotation
.end method
