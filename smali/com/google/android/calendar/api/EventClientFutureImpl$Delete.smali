.class Lcom/google/android/calendar/api/EventClientFutureImpl$Delete;
.super Lcom/google/android/calendar/api/FuturePendingResult;
.source "EventClientFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/EventClientFutureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Delete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/calendar/api/FuturePendingResult",
        "<",
        "Lcom/google/android/calendar/api/EventClient$GenericResult;",
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
    .line 70
    iput-object p1, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Delete;->this$0:Lcom/google/android/calendar/api/EventClientFutureImpl;

    invoke-direct {p0}, Lcom/google/android/calendar/api/FuturePendingResult;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Delete;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    .line 72
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventClientFutureImpl$Delete;->execute()V

    .line 73
    return-void
.end method


# virtual methods
.method protected calculateResult()Lcom/google/android/calendar/api/EventClient$GenericResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Delete;->this$0:Lcom/google/android/calendar/api/EventClientFutureImpl;

    iget-object v1, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Delete;->mDescriptor:Lcom/google/android/calendar/api/EventDescriptor;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/api/EventClientFutureImpl;->synchronousDelete(Lcom/google/android/calendar/api/EventDescriptor;)Lcom/google/android/calendar/api/EventClient$GenericResult;

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
    .line 67
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventClientFutureImpl$Delete;->calculateResult()Lcom/google/android/calendar/api/EventClient$GenericResult;

    move-result-object v0

    return-object v0
.end method

.method protected createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/EventClient$GenericResult;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/calendar/api/EventClientBase$Result;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/api/EventClientBase$Result;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/EventClientFutureImpl$Delete;->createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/EventClient$GenericResult;

    move-result-object v0

    return-object v0
.end method
