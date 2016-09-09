.class public Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;
.super Lio/grpc/stub/AbstractStub;
.source "TimeServiceGrpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeServiceBlockingStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractStub",
        "<",
        "Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lio/grpc/stub/AbstractStub;-><init>(Lio/grpc/Channel;)V

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Channel;Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$1;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;-><init>(Lio/grpc/Channel;)V

    return-void
.end method

.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    .line 180
    return-void
.end method


# virtual methods
.method protected build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;

    invoke-direct {v0, p1, p2}, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method protected bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;

    move-result-object v0

    return-object v0
.end method

.method public suggestTime(Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;)Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;
    .locals 3

    .prologue
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    sget-object v1, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc;->METHOD_SUGGEST_TIME:Lio/grpc/MethodDescriptor;

    invoke-virtual {p0}, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 195
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;

    return-object v0
.end method
