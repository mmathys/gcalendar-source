.class Lcom/google/android/calendar/api/HabitClientFutureImpl$Read;
.super Lcom/google/android/calendar/api/FuturePendingResult;
.source "HabitClientFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/HabitClientFutureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Read"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/api/FuturePendingResult",
        "<",
        "Lcom/google/android/calendar/api/HabitClient$ReadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

.field final synthetic this$0:Lcom/google/android/calendar/api/HabitClientFutureImpl;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/api/HabitClientFutureImpl;Lcom/google/android/calendar/api/HabitDescriptor;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/calendar/api/HabitClientFutureImpl$Read;->this$0:Lcom/google/android/calendar/api/HabitClientFutureImpl;

    invoke-direct {p0}, Lcom/google/android/calendar/api/FuturePendingResult;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/google/android/calendar/api/HabitClientFutureImpl$Read;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    .line 31
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitClientFutureImpl$Read;->execute()V

    .line 32
    return-void
.end method


# virtual methods
.method protected calculateResult()Lcom/google/android/calendar/api/HabitClient$ReadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/calendar/api/HabitClientFutureImpl$Read;->this$0:Lcom/google/android/calendar/api/HabitClientFutureImpl;

    iget-object v1, p0, Lcom/google/android/calendar/api/HabitClientFutureImpl$Read;->mDescriptor:Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/HabitClientFutureImpl;->synchronousRead(Lcom/google/android/calendar/api/HabitDescriptor;)Lcom/google/android/calendar/api/HabitClient$ReadResult;

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
    .line 26
    invoke-virtual {p0}, Lcom/google/android/calendar/api/HabitClientFutureImpl$Read;->calculateResult()Lcom/google/android/calendar/api/HabitClient$ReadResult;

    move-result-object v0

    return-object v0
.end method

.method protected createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/HabitClient$ReadResult;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/calendar/api/HabitClientBase$Result;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/api/HabitClientBase$Result;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/HabitClientFutureImpl$Read;->createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/HabitClient$ReadResult;

    move-result-object v0

    return-object v0
.end method
