.class final Lio/grpc/internal/GrpcUtil$1;
.super Ljava/lang/Object;
.source "GrpcUtil.java"

# interfaces
.implements Lio/grpc/internal/SharedResourceHolder$Resource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/GrpcUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/internal/SharedResourceHolder$Resource",
        "<",
        "Ljava/util/concurrent/ExecutorService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 381
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0, p1}, Lio/grpc/internal/GrpcUtil$1;->close(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public close(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 390
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 391
    return-void
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lio/grpc/internal/GrpcUtil$1;->create()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public create()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 385
    const-string v0, "grpc-default-executor-%d"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/GrpcUtil;->getThreadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    const-string v0, "grpc-default-executor"

    return-object v0
.end method
