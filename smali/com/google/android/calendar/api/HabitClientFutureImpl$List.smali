.class Lcom/google/android/calendar/api/HabitClientFutureImpl$List;
.super Lcom/google/android/calendar/api/FuturePendingResult;
.source "HabitClientFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/HabitClientFutureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/api/FuturePendingResult",
        "<",
        "Lcom/google/android/calendar/api/HabitClient$ListResult;",
        ">;"
    }
.end annotation


# instance fields
.field final mFilter:Lcom/google/android/calendar/api/HabitFilterOptions;

.field final synthetic this$0:Lcom/google/android/calendar/api/HabitClientFutureImpl;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/api/HabitClientFutureImpl;Lcom/google/android/calendar/api/HabitFilterOptions;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/calendar/api/HabitClientFutureImpl$List;->this$0:Lcom/google/android/calendar/api/HabitClientFutureImpl;

    invoke-direct {p0}, Lcom/google/android/calendar/api/FuturePendingResult;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/google/android/calendar/api/HabitClientFutureImpl$List;->mFilter:Lcom/google/android/calendar/api/HabitFilterOptions;

    .line 88
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitClientFutureImpl$List;->execute()V

    .line 89
    return-void
.end method


# virtual methods
.method protected calculateResult()Lcom/google/android/calendar/api/HabitClient$ListResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitClientFutureImpl$List;->this$0:Lcom/google/android/calendar/api/HabitClientFutureImpl;

    iget-object v1, p0, Lcom/google/android/calendar/api/HabitClientFutureImpl$List;->mFilter:Lcom/google/android/calendar/api/HabitFilterOptions;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/HabitClientFutureImpl;->synchronousList(Lcom/google/android/calendar/api/HabitFilterOptions;)Lcom/google/android/calendar/api/HabitClient$ListResult;

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
    .line 83
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitClientFutureImpl$List;->calculateResult()Lcom/google/android/calendar/api/HabitClient$ListResult;

    move-result-object v0

    return-object v0
.end method

.method protected createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/HabitClient$ListResult;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/calendar/api/HabitClientBase$Result;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/api/HabitClientBase$Result;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/HabitClientFutureImpl$List;->createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/HabitClient$ListResult;

    move-result-object v0

    return-object v0
.end method
