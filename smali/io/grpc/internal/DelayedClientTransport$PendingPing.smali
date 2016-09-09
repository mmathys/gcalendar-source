.class Lio/grpc/internal/DelayedClientTransport$PendingPing;
.super Ljava/lang/Object;
.source "DelayedClientTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DelayedClientTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingPing"
.end annotation


# instance fields
.field private final callback:Lio/grpc/internal/ClientTransport$PingCallback;

.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport$PendingPing;->callback:Lio/grpc/internal/ClientTransport$PingCallback;

    .line 420
    iput-object p2, p0, Lio/grpc/internal/DelayedClientTransport$PendingPing;->executor:Ljava/util/concurrent/Executor;

    .line 421
    return-void
.end method

.method static synthetic access$700(Lio/grpc/internal/DelayedClientTransport$PendingPing;)Lio/grpc/internal/ClientTransport$PingCallback;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingPing;->callback:Lio/grpc/internal/ClientTransport$PingCallback;

    return-object v0
.end method


# virtual methods
.method public createRealPing(Lio/grpc/internal/ClientTransport;)V
    .locals 3

    .prologue
    .line 425
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingPing;->callback:Lio/grpc/internal/ClientTransport$PingCallback;

    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport$PendingPing;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, v1}, Lio/grpc/internal/ClientTransport;->ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport$PendingPing;->executor:Ljava/util/concurrent/Executor;

    new-instance v2, Lio/grpc/internal/DelayedClientTransport$PendingPing$1;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/DelayedClientTransport$PendingPing$1;-><init>(Lio/grpc/internal/DelayedClientTransport$PendingPing;Ljava/lang/UnsupportedOperationException;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
