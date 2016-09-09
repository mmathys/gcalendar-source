.class Lio/grpc/internal/DelayedClientTransport$PendingPing$1;
.super Ljava/lang/Object;
.source "DelayedClientTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientTransport$PendingPing;->createRealPing(Lio/grpc/internal/ClientTransport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedClientTransport$PendingPing;

.field final synthetic val$ex:Ljava/lang/UnsupportedOperationException;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientTransport$PendingPing;Ljava/lang/UnsupportedOperationException;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport$PendingPing$1;->this$0:Lio/grpc/internal/DelayedClientTransport$PendingPing;

    iput-object p2, p0, Lio/grpc/internal/DelayedClientTransport$PendingPing$1;->val$ex:Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingPing$1;->this$0:Lio/grpc/internal/DelayedClientTransport$PendingPing;

    # getter for: Lio/grpc/internal/DelayedClientTransport$PendingPing;->callback:Lio/grpc/internal/ClientTransport$PingCallback;
    invoke-static {v0}, Lio/grpc/internal/DelayedClientTransport$PendingPing;->access$700(Lio/grpc/internal/DelayedClientTransport$PendingPing;)Lio/grpc/internal/ClientTransport$PingCallback;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport$PendingPing$1;->val$ex:Ljava/lang/UnsupportedOperationException;

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientTransport$PingCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 431
    return-void
.end method
