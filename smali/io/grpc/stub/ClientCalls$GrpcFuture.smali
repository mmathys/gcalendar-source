.class Lio/grpc/stub/ClientCalls$GrpcFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "ClientCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GrpcFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<TRespT;>;"
    }
.end annotation


# instance fields
.field private final call:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall",
            "<*TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/ClientCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall",
            "<*TRespT;>;)V"
        }
    .end annotation

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 451
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$GrpcFuture;->call:Lio/grpc/ClientCall;

    .line 452
    return-void
.end method


# virtual methods
.method protected interruptTask()V
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$GrpcFuture;->call:Lio/grpc/ClientCall;

    const-string v1, "GrpcFuture was cancelled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    return-void
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)Z"
        }
    .end annotation

    .prologue
    .line 461
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 466
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
