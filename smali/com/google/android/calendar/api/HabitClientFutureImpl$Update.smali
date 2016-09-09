.class Lcom/google/android/calendar/api/HabitClientFutureImpl$Update;
.super Lcom/google/android/calendar/api/FuturePendingResult;
.source "HabitClientFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/HabitClientFutureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/api/FuturePendingResult",
        "<",
        "Lcom/google/android/calendar/api/HabitClient$GenericResult;",
        ">;"
    }
.end annotation


# instance fields
.field final mHabit:Lcom/google/android/calendar/api/HabitModifications;

.field final synthetic this$0:Lcom/google/android/calendar/api/HabitClientFutureImpl;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/api/HabitClientFutureImpl;Lcom/google/android/calendar/api/HabitModifications;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/calendar/api/HabitClientFutureImpl$Update;->this$0:Lcom/google/android/calendar/api/HabitClientFutureImpl;

    invoke-direct {p0}, Lcom/google/android/calendar/api/FuturePendingResult;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/google/android/calendar/api/HabitClientFutureImpl$Update;->mHabit:Lcom/google/android/calendar/api/HabitModifications;

    .line 50
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitClientFutureImpl$Update;->execute()V

    .line 51
    return-void
.end method


# virtual methods
.method protected calculateResult()Lcom/google/android/calendar/api/HabitClient$GenericResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitClientFutureImpl$Update;->this$0:Lcom/google/android/calendar/api/HabitClientFutureImpl;

    iget-object v1, p0, Lcom/google/android/calendar/api/HabitClientFutureImpl$Update;->mHabit:Lcom/google/android/calendar/api/HabitModifications;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/HabitClientFutureImpl;->synchronousUpdate(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/calendar/api/HabitClient$GenericResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic calculateResult()Lcom/google/android/gms/common/api/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitClientFutureImpl$Update;->calculateResult()Lcom/google/android/calendar/api/HabitClient$GenericResult;

    move-result-object v0

    return-object v0
.end method

.method protected createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/HabitClient$GenericResult;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/calendar/api/HabitClientBase$Result;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/api/HabitClientBase$Result;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/HabitClientFutureImpl$Update;->createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/HabitClient$GenericResult;

    move-result-object v0

    return-object v0
.end method
