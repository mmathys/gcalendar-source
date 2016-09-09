.class public Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc;
.super Ljava/lang/Object;
.source "TimeServiceGrpc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;,
        Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$NanoFactory;
    }
.end annotation


# static fields
.field public static final METHOD_SUGGEST_TIME:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor",
            "<",
            "Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;",
            "Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "google.calendar.suggest.v2.TimeService"

    const-string v2, "SuggestTime"

    .line 42
    invoke-static {v1, v2}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$NanoFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$NanoFactory;-><init>(I)V

    .line 44
    invoke-static {v2}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    new-instance v3, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$NanoFactory;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$NanoFactory;-><init>(I)V

    .line 46
    invoke-static {v3}, Lio/grpc/protobuf/nano/NanoUtils;->marshaller(Lio/grpc/protobuf/nano/MessageNanoFactory;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    .line 40
    invoke-static {v0, v1, v2, v3}, Lio/grpc/MethodDescriptor;->create(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc;->METHOD_SUGGEST_TIME:Lio/grpc/MethodDescriptor;

    .line 39
    return-void
.end method

.method public static newBlockingStub(Lio/grpc/Channel;)Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;-><init>(Lio/grpc/Channel;Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$1;)V

    return-object v0
.end method
