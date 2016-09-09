.class Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor$1;
.super Ljava/lang/Object;
.source "FindTimeRequestExecutor.java"

# interfaces
.implements Lcom/android/calendar/timely/net/grpc/GrpcCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/calendar/timely/net/grpc/GrpcCall",
        "<",
        "Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;",
        "Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;",
        "Ljava/lang/RuntimeException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor$1;->this$0:Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;)Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor$1;->this$0:Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;

    # getter for: Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;->mStub:Lio/grpc/stub/AbstractStub;
    invoke-static {v0}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;->access$000(Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;

    const-wide/16 v2, 0x3a98

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;->withDeadlineAfter(JLjava/util/concurrent/TimeUnit;)Lio/grpc/stub/AbstractStub;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;

    .line 43
    invoke-virtual {v0, p1}, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;->suggestTime(Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;)Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    check-cast p1, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor$1;->call(Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;)Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;

    move-result-object v0

    return-object v0
.end method
