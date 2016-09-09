.class Lio/grpc/internal/DelayedClientTransport$3;
.super Ljava/lang/Object;
.source "DelayedClientTransport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientTransport;->startBackoff(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedClientTransport;

.field final synthetic val$failFastPendingStreams:Ljava/util/ArrayList;

.field final synthetic val$status:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientTransport;Ljava/util/ArrayList;Lio/grpc/Status;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport$3;->this$0:Lio/grpc/internal/DelayedClientTransport;

    iput-object p2, p0, Lio/grpc/internal/DelayedClientTransport$3;->val$failFastPendingStreams:Ljava/util/ArrayList;

    iput-object p3, p0, Lio/grpc/internal/DelayedClientTransport$3;->val$status:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$3;->val$failFastPendingStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/DelayedClientTransport$PendingStream;

    .line 342
    new-instance v2, Lio/grpc/internal/FailingClientStream;

    iget-object v3, p0, Lio/grpc/internal/DelayedClientTransport$3;->val$status:Lio/grpc/Status;

    invoke-direct {v2, v3}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;)V

    invoke-virtual {v0, v2}, Lio/grpc/internal/DelayedClientTransport$PendingStream;->setStream(Lio/grpc/internal/ClientStream;)V

    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method
