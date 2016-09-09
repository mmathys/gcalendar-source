.class public interface abstract Lio/grpc/internal/ClientTransport;
.super Ljava/lang/Object;
.source "ClientTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ClientTransport$PingCallback;
    }
.end annotation


# virtual methods
.method public abstract newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
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
.end method

.method public abstract ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
.end method
