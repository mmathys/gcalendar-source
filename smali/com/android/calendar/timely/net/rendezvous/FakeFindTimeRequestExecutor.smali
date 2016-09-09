.class public Lcom/android/calendar/timely/net/rendezvous/FakeFindTimeRequestExecutor;
.super Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;
.source "FakeFindTimeRequestExecutor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getAuthScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, ""

    return-object v0
.end method

.method protected getStub(Lio/grpc/Channel;)Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic getStub(Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/net/rendezvous/FakeFindTimeRequestExecutor;->getStub(Lio/grpc/Channel;)Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized initGrpcStub()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/timely/net/exceptions/GrpcStubException;
        }
    .end annotation

    .prologue
    .line 33
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public suggestTime(Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;)Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/timely/FindTimeSuggestionException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method
