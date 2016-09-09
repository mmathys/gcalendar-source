.class Lio/grpc/internal/AbstractManagedChannelImplBuilder$AuthorityOverridingTransportFactory;
.super Ljava/lang/Object;
.source "AbstractManagedChannelImplBuilder.java"

# interfaces
.implements Lio/grpc/internal/ClientTransportFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthorityOverridingTransportFactory"
.end annotation


# instance fields
.field final authorityOverride:Ljava/lang/String;

.field final factory:Lio/grpc/internal/ClientTransportFactory;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientTransportFactory;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const-string v0, "factory should not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ClientTransportFactory;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder$AuthorityOverridingTransportFactory;->factory:Lio/grpc/internal/ClientTransportFactory;

    .line 288
    const-string v0, "authorityOverride should not be null"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder$AuthorityOverridingTransportFactory;->authorityOverride:Ljava/lang/String;

    .line 290
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder$AuthorityOverridingTransportFactory;->factory:Lio/grpc/internal/ClientTransportFactory;

    invoke-interface {v0}, Lio/grpc/internal/ClientTransportFactory;->close()V

    .line 301
    return-void
.end method

.method public newClientTransport(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder$AuthorityOverridingTransportFactory;->factory:Lio/grpc/internal/ClientTransportFactory;

    iget-object v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder$AuthorityOverridingTransportFactory;->authorityOverride:Ljava/lang/String;

    invoke-interface {v0, p1, v1, p3}, Lio/grpc/internal/ClientTransportFactory;->newClientTransport(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v0

    return-object v0
.end method
