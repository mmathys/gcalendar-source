.class final Lio/grpc/internal/CallCredentialsApplyingTransportFactory;
.super Ljava/lang/Object;
.source "CallCredentialsApplyingTransportFactory.java"

# interfaces
.implements Lio/grpc/internal/ClientTransportFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;
    }
.end annotation


# instance fields
.field private final appExecutor:Ljava/util/concurrent/Executor;

.field private final delegate:Lio/grpc/internal/ClientTransportFactory;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientTransportFactory;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ClientTransportFactory;

    iput-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->delegate:Lio/grpc/internal/ClientTransportFactory;

    .line 55
    const-string v0, "appExecutor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->appExecutor:Ljava/util/concurrent/Executor;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->appExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->delegate:Lio/grpc/internal/ClientTransportFactory;

    invoke-interface {v0}, Lio/grpc/internal/ClientTransportFactory;->close()V

    .line 68
    return-void
.end method

.method public newClientTransport(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;

    iget-object v1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->delegate:Lio/grpc/internal/ClientTransportFactory;

    .line 62
    invoke-interface {v1, p1, p2, p3}, Lio/grpc/internal/ClientTransportFactory;->newClientTransport(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;-><init>(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;Lio/grpc/internal/ConnectionClientTransport;Ljava/lang/String;)V

    .line 61
    return-object v0
.end method
