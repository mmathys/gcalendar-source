.class Lcom/google/android/calendar/api/HabitClientFutureImpl;
.super Lcom/google/android/calendar/api/HabitClientBase;
.source "HabitClientFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/HabitClientFutureImpl$Count;,
        Lcom/google/android/calendar/api/HabitClientFutureImpl$List;,
        Lcom/google/android/calendar/api/HabitClientFutureImpl$Update;,
        Lcom/google/android/calendar/api/HabitClientFutureImpl$Read;,
        Lcom/google/android/calendar/api/HabitClientFutureImpl$Create;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/api/CrudApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/CrudApi",
            "<",
            "Lcom/google/android/calendar/api/Habit;",
            "Lcom/google/android/calendar/api/HabitModifications;",
            "Lcom/google/android/calendar/api/HabitDescriptor;",
            "Lcom/google/android/calendar/api/HabitFilterOptions;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/google/android/calendar/api/HabitClientBase;-><init>(Lcom/google/android/calendar/api/CrudApi;)V

    .line 124
    return-void
.end method


# virtual methods
.method public count(Lcom/google/android/calendar/api/HabitFilterOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
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

    .prologue
    .line 153
    new-instance v0, Lcom/google/android/calendar/api/HabitClientFutureImpl$Count;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/api/HabitClientFutureImpl$Count;-><init>(Lcom/google/android/calendar/api/HabitClientFutureImpl;Lcom/google/android/calendar/api/HabitFilterOptions;)V

    return-object v0
.end method

.method public create(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
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

    .prologue
    .line 128
    new-instance v0, Lcom/google/android/calendar/api/HabitClientFutureImpl$Create;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/api/HabitClientFutureImpl$Create;-><init>(Lcom/google/android/calendar/api/HabitClientFutureImpl;Lcom/google/android/calendar/api/HabitModifications;)V

    return-object v0
.end method

.method public list(Lcom/google/android/calendar/api/HabitFilterOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
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

    .prologue
    .line 148
    new-instance v0, Lcom/google/android/calendar/api/HabitClientFutureImpl$List;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/api/HabitClientFutureImpl$List;-><init>(Lcom/google/android/calendar/api/HabitClientFutureImpl;Lcom/google/android/calendar/api/HabitFilterOptions;)V

    return-object v0
.end method

.method public read(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
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

    .prologue
    .line 133
    new-instance v0, Lcom/google/android/calendar/api/HabitClientFutureImpl$Read;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/api/HabitClientFutureImpl$Read;-><init>(Lcom/google/android/calendar/api/HabitClientFutureImpl;Lcom/google/android/calendar/api/HabitDescriptor;)V

    return-object v0
.end method

.method public update(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
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

    .prologue
    .line 138
    new-instance v0, Lcom/google/android/calendar/api/HabitClientFutureImpl$Update;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/api/HabitClientFutureImpl$Update;-><init>(Lcom/google/android/calendar/api/HabitClientFutureImpl;Lcom/google/android/calendar/api/HabitModifications;)V

    return-object v0
.end method
