.class public Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;
.super Lio/grpc/stub/AbstractStub;
.source "MyndServiceGrpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyndServiceBlockingStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractStub",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lio/grpc/stub/AbstractStub;-><init>(Lio/grpc/Channel;)V

    .line 413
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Channel;Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$1;)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;-><init>(Lio/grpc/Channel;)V

    return-void
.end method

.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    .line 418
    return-void
.end method


# virtual methods
.method public assist(Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;)Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceResponse;
    .locals 3

    .prologue
    .line 455
    .line 456
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    sget-object v1, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;->METHOD_ASSIST:Lio/grpc/MethodDescriptor;

    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 455
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceResponse;

    return-object v0
.end method

.method protected build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;

    invoke-direct {v0, p1, p2}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method protected bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;

    move-result-object v0

    return-object v0
.end method

.method public log(Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;)Lcom/google/personalization/assist/annotate/api/nano/LoggingResponse;
    .locals 3

    .prologue
    .line 466
    .line 467
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    sget-object v1, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;->METHOD_LOG:Lio/grpc/MethodDescriptor;

    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 466
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/api/nano/LoggingResponse;

    return-object v0
.end method

.method public schedule(Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;)Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleResponse;
    .locals 3

    .prologue
    .line 477
    .line 478
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    sget-object v1, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;->METHOD_SCHEDULE:Lio/grpc/MethodDescriptor;

    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 477
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleResponse;

    return-object v0
.end method

.method public suggest(Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;
    .locals 3

    .prologue
    .line 444
    .line 445
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    sget-object v1, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc;->METHOD_SUGGEST:Lio/grpc/MethodDescriptor;

    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/MyndServiceGrpc$MyndServiceBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 444
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;

    return-object v0
.end method
