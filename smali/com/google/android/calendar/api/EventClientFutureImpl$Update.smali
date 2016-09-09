.class Lcom/google/android/calendar/api/EventClientFutureImpl$Update;
.super Lcom/google/android/calendar/api/FuturePendingResult;
.source "EventClientFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/EventClientFutureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Update"
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
.field final mEvent:Lcom/google/android/calendar/api/EventModifications;

.field final mOptions:Lcom/google/android/calendar/api/EventUpdateOptions;

.field final synthetic this$0:Lcom/google/android/calendar/api/EventClientFutureImpl;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/api/EventClientFutureImpl;Lcom/google/android/calendar/api/EventModifications;Lcom/google/android/calendar/api/EventUpdateOptions;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Update;->this$0:Lcom/google/android/calendar/api/EventClientFutureImpl;

    invoke-direct {p0}, Lcom/google/android/calendar/api/FuturePendingResult;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Update;->mEvent:Lcom/google/android/calendar/api/EventModifications;

    .line 52
    iput-object p3, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Update;->mOptions:Lcom/google/android/calendar/api/EventUpdateOptions;

    .line 53
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventClientFutureImpl$Update;->execute()V

    .line 54
    return-void
.end method


# virtual methods
.method protected calculateResult()Lcom/google/android/calendar/api/EventClient$GenericResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Update;->this$0:Lcom/google/android/calendar/api/EventClientFutureImpl;

    iget-object v1, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Update;->mEvent:Lcom/google/android/calendar/api/EventModifications;

    iget-object v2, p0, Lcom/google/android/calendar/api/EventClientFutureImpl$Update;->mOptions:Lcom/google/android/calendar/api/EventUpdateOptions;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/calendar/api/EventClientFutureImpl;->synchronousUpdate(Lcom/google/android/calendar/api/EventModifications;Lcom/google/android/calendar/api/EventUpdateOptions;)Lcom/google/android/calendar/api/EventClient$GenericResult;

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
    .line 46
    invoke-virtual {p0}, Lcom/google/android/calendar/api/EventClientFutureImpl$Update;->calculateResult()Lcom/google/android/calendar/api/EventClient$GenericResult;

    move-result-object v0

    return-object v0
.end method

.method protected createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/EventClient$GenericResult;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/google/android/calendar/api/EventClientBase$Result;

    invoke-direct {v0, p1}, Lcom/google/android/calendar/api/EventClientBase$Result;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected bridge synthetic createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/api/EventClientFutureImpl$Update;->createFailedResult(Ljava/lang/Throwable;)Lcom/google/android/calendar/api/EventClient$GenericResult;

    move-result-object v0

    return-object v0
.end method
