.class Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;
.super Lio/grpc/ClientCall$Listener;
.source "ClientCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnaryStreamToFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall$Listener",
        "<TRespT;>;"
    }
.end annotation


# instance fields
.field private final responseFuture:Lio/grpc/stub/ClientCalls$GrpcFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/ClientCalls$GrpcFuture",
            "<TRespT;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRespT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/stub/ClientCalls$GrpcFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/ClientCalls$GrpcFuture",
            "<TRespT;>;)V"
        }
    .end annotation

    .prologue
    .line 414
    invoke-direct {p0}, Lio/grpc/ClientCall$Listener;-><init>()V

    .line 415
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->responseFuture:Lio/grpc/stub/ClientCalls$GrpcFuture;

    .line 416
    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 3

    .prologue
    .line 433
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->responseFuture:Lio/grpc/stub/ClientCalls$GrpcFuture;

    sget-object v1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v2, "No value received for unary call"

    .line 437
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 438
    invoke-virtual {v1, p2}, Lio/grpc/Status;->asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;

    move-result-object v1

    .line 436
    invoke-virtual {v0, v1}, Lio/grpc/stub/ClientCalls$GrpcFuture;->setException(Ljava/lang/Throwable;)Z

    .line 440
    :cond_0
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->responseFuture:Lio/grpc/stub/ClientCalls$GrpcFuture;

    iget-object v1, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/grpc/stub/ClientCalls$GrpcFuture;->set(Ljava/lang/Object;)Z

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->responseFuture:Lio/grpc/stub/ClientCalls$GrpcFuture;

    invoke-virtual {p1, p2}, Lio/grpc/Status;->asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/stub/ClientCalls$GrpcFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 425
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v1, "More than one value received for unary call"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 428
    :cond_0
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$UnaryStreamToFuture;->value:Ljava/lang/Object;

    .line 429
    return-void
.end method
