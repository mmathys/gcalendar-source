.class public interface abstract Lio/grpc/internal/ClientTransportFactory;
.super Ljava/lang/Object;
.source "ClientTransportFactory.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract newClientTransport(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/internal/ConnectionClientTransport;
.end method
