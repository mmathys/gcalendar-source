.class Lio/grpc/internal/FailingClientTransport;
.super Ljava/lang/Object;
.source "FailingClientTransport.java"

# interfaces
.implements Lio/grpc/internal/ClientTransport;


# instance fields
.field final error:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/Status;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 54
    iput-object p1, p0, Lio/grpc/internal/FailingClientTransport;->error:Lio/grpc/Status;

    .line 55
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor",
            "<**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lio/grpc/internal/FailingClientStream;

    iget-object v1, p0, Lio/grpc/internal/FailingClientTransport;->error:Lio/grpc/Status;

    invoke-direct {v0, v1}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;)V

    return-object v0
.end method

.method public ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lio/grpc/internal/FailingClientTransport$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/FailingClientTransport$1;-><init>(Lio/grpc/internal/FailingClientTransport;Lio/grpc/internal/ClientTransport$PingCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method
