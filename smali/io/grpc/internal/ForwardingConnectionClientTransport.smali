.class abstract Lio/grpc/internal/ForwardingConnectionClientTransport;
.super Ljava/lang/Object;
.source "ForwardingConnectionClientTransport.java"

# interfaces
.implements Lio/grpc/internal/ConnectionClientTransport;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Lio/grpc/internal/ConnectionClientTransport;
.end method

.method public getAttrs()Lio/grpc/Attributes;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ConnectionClientTransport;->getAttrs()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getLogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ConnectionClientTransport;->getLogId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    .locals 1
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
    .line 61
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/internal/ConnectionClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    return-object v0
.end method

.method public ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/grpc/internal/ConnectionClientTransport;->ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V

    .line 72
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ConnectionClientTransport;->shutdown()V

    .line 51
    return-void
.end method

.method public shutdownNow(Lio/grpc/Status;)V
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ConnectionClientTransport;->shutdownNow(Lio/grpc/Status;)V

    .line 56
    return-void
.end method

.method public start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ConnectionClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->delegate()Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
