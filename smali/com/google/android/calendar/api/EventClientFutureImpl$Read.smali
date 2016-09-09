.class Lcom/google/android/calendar/api/EventClientFutureImpl$Read;
.super Lcom/google/android/calendar/api/FuturePendingResult;
.source "EventClientFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/EventClientFutureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Read"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/api/FuturePendingResult",
        "<",
        "Lcom/google/android/calendar/api/EventClient$ReadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

.field final synthetic this$0:Lcom/google/android/calendar/api/EventClientFutureImpl;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/api/EventClientFutureImpl;Lcom/google/android/calendar/api/EventDescriptor;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Read;->this$0:Lcom/google/android/calendar/api/EventClientFutureImpl;

    invoke-direct {p0}, Lcom/google/android/calendar/api/FuturePendingResult;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Read;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    .line 32
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventClientFutureImpl$Read;->execute()V

    .line 33
    return-void
.end method


# virtual methods
.method protected calculateResult()Lcom/google/android/calendar/api/EventClient$ReadResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Read;->this$0:Lcom/google/android/calendar/api/EventClientFutureImpl;

    iget-object v1, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Read;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/EventClientFutureImpl;->synchronousRead(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/calendar/api/EventClient$ReadResult;

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
    .line 27
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventClientFutureImpl$Read;->calculateResult()Lcom/google/android/calendar/api/EventClient$ReadResult;

    move-result-object v0

    return-object v0
.end method

.method protected createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/EventClient$ReadResult;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/calendar/api/EventClientBase$Result;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/api/EventClientBase$Result;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/EventClientFutureImpl$Read;->createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/EventClient$ReadResult;

    move-result-object v0

    return-object v0
.end method
