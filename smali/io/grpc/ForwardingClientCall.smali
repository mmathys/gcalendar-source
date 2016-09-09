.class public abstract Lio/grpc/ForwardingClientCall;
.super Lio/grpc/ClientCall;
.source "ForwardingClientCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall",
        "<TReqT;TRespT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lio/grpc/ClientCall;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lio/grpc/ForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method

.method protected abstract delegate()Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall",
            "<TReqT;TRespT;>;"
        }
    .end annotation
.end method

.method public halfClose()V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lio/grpc/ForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ClientCall;->halfClose()V

    .line 63
    return-void
.end method

.method public request(I)V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lio/grpc/ForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->request(I)V

    .line 53
    return-void
.end method

.method public sendMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lio/grpc/ForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener",
            "<TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lio/grpc/ForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    .line 48
    return-void
.end method
