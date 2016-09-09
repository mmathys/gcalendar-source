.class Lio/grpc/internal/DelayedClientTransport$1;
.super Ljava/lang/Object;
.source "DelayedClientTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientTransport;->ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedClientTransport;

.field final synthetic val$callback:Lio/grpc/internal/ClientTransport$PingCallback;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/internal/ClientTransport$PingCallback;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport$1;->this$0:Lio/grpc/internal/DelayedClientTransport;

    iput-object p2, p0, Lio/grpc/internal/DelayedClientTransport$1;->val$callback:Lio/grpc/internal/ClientTransport$PingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$1;->val$callback:Lio/grpc/internal/ClientTransport$PingCallback;

    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "transport shutdown"

    .line 168
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v1

    .line 167
    invoke-interface {v0, v1}, Lio/grpc/internal/ClientTransport$PingCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 169
    return-void
.end method
