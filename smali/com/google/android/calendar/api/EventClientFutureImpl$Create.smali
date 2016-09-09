.class Lcom/google/android/calendar/api/EventClientFutureImpl$Create;
.super Lcom/google/android/calendar/api/FuturePendingResult;
.source "EventClientFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/EventClientFutureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Create"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/api/FuturePendingResult",
        "<",
        "Lcom/google/android/calendar/api/EventClient$CreateResult;",
        ">;"
    }
.end annotation


# instance fields
.field final mEvent:Lcom/google/android/calendar/api/EventModifications;

.field final synthetic this$0:Lcom/google/android/calendar/api/EventClientFutureImpl;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/api/EventClientFutureImpl;Lcom/google/android/calendar/api/EventModifications;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Create;->this$0:Lcom/google/android/calendar/api/EventClientFutureImpl;

    invoke-direct {p0}, Lcom/google/android/calendar/api/FuturePendingResult;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Create;->mEvent:Lcom/google/android/calendar/api/EventModifications;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventClientFutureImpl$Create;->execute()V

    .line 14
    return-void
.end method


# virtual methods
.method protected calculateResult()Lcom/google/android/calendar/api/EventClient$CreateResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Create;->this$0:Lcom/google/android/calendar/api/EventClientFutureImpl;

    iget-object v1, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Create;->mEvent:Lcom/google/android/calendar/api/EventModifications;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/EventClientFutureImpl;->synchronousCreate(Lcom/google/android/calendar/api/EventModifications;)Lcom/google/android/calendar/api/EventClient$CreateResult;

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
    .line 8
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventClientFutureImpl$Create;->calculateResult()Lcom/google/android/calendar/api/EventClient$CreateResult;

    move-result-object v0

    return-object v0
.end method

.method protected createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/EventClient$CreateResult;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/calendar/api/EventClientBase$Result;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/api/EventClientBase$Result;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/EventClientFutureImpl$Create;->createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/EventClient$CreateResult;

    move-result-object v0

    return-object v0
.end method
