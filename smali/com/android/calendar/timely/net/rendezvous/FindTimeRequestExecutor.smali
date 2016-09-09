.class public Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;
.super Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;
.source "FindTimeRequestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor",
        "<",
        "Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private suggestTimeCall:Lcom/android/calendar/timely/net/grpc/GrpcCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/timely/net/grpc/GrpcCall",
            "<",
            "Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;",
            "Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/timely/net/grpc/GrpcRequestExecutor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor$1;-><init>(Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;)V

    iput-object v0, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;->suggestTimeCall:Lcom/android/calendar/timely/net/grpc/GrpcCall;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;)Lio/grpc/stub/AbstractStub;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;->mStub:Lio/grpc/stub/AbstractStub;

    return-object v0
.end method

.method private handleCall(Lcom/android/calendar/timely/net/grpc/GrpcCall;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/RuntimeException;",
            ">(",
            "Lcom/android/calendar/timely/net/grpc/GrpcCall",
            "<TI;TO;TE;>;TI;)TO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/timely/FindTimeSuggestionException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;->call(Lcom/android/calendar/timely/net/grpc/GrpcCall;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/android/calendar/timely/net/exceptions/GrpcStubException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/calendar/timely/net/exceptions/GrpcRequestException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 95
    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :goto_0
    new-instance v1, Lcom/android/calendar/timely/FindTimeSuggestionException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/timely/FindTimeSuggestionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected getAuthScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "oauth2:https://www.googleapis.com/auth/calendar.readonly"

    return-object v0
.end method

.method protected getServerTargetProd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "calendarsuggest.googleapis.com:443/v2/times:suggest"

    return-object v0
.end method

.method protected getStub(Lio/grpc/Channel;)Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;
    .locals 1

    .prologue
    .line 82
    invoke-static {p1}, Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc;->newBlockingStub(Lio/grpc/Channel;)Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getStub(Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;->getStub(Lio/grpc/Channel;)Lcom/google/calendar/suggest/v2/nano/TimeServiceGrpc$TimeServiceBlockingStub;

    move-result-object v0

    return-object v0
.end method

.method public suggestTime(Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;)Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/timely/FindTimeSuggestionException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;->suggestTimeCall:Lcom/android/calendar/timely/net/grpc/GrpcCall;

    invoke-direct {p0, v0, p1}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRequestExecutor;->handleCall(Lcom/android/calendar/timely/net/grpc/GrpcCall;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;

    return-object v0
.end method
