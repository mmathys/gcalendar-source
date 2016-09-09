.class Lio/grpc/internal/TransportSet$BaseTransportListener;
.super Ljava/lang/Object;
.source "TransportSet.java"

# interfaces
.implements Lio/grpc/internal/ManagedClientTransport$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/TransportSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseTransportListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/TransportSet;

.field protected final transport:Lio/grpc/internal/ManagedClientTransport;


# direct methods
.method public constructor <init>(Lio/grpc/internal/TransportSet;Lio/grpc/internal/ManagedClientTransport;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->this$0:Lio/grpc/internal/TransportSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p2, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->transport:Lio/grpc/internal/ManagedClientTransport;

    .line 350
    return-void
.end method


# virtual methods
.method public transportInUse(Z)V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;
    invoke-static {v0}, Lio/grpc/internal/TransportSet;->access$600(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/InUseStateAggregator;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->transport:Lio/grpc/internal/ManagedClientTransport;

    invoke-virtual {v0, v1, p1}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 358
    return-void
.end method

.method public transportReady()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public transportShutdown(Lio/grpc/Status;)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public transportTerminated()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 365
    .line 366
    iget-object v1, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;
    invoke-static {v1}, Lio/grpc/internal/TransportSet;->access$600(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/InUseStateAggregator;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->transport:Lio/grpc/internal/ManagedClientTransport;

    invoke-virtual {v1, v2, v0}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 367
    iget-object v1, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lio/grpc/internal/TransportSet;->access$000(Lio/grpc/internal/TransportSet;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->transports:Ljava/util/Collection;
    invoke-static {v2}, Lio/grpc/internal/TransportSet;->access$700(Lio/grpc/internal/TransportSet;)Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->transport:Lio/grpc/internal/ManagedClientTransport;

    invoke-interface {v2, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 369
    iget-object v2, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->shutdown:Z
    invoke-static {v2}, Lio/grpc/internal/TransportSet;->access$800(Lio/grpc/internal/TransportSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->transports:Ljava/util/Collection;
    invoke-static {v2}, Lio/grpc/internal/TransportSet;->access$700(Lio/grpc/internal/TransportSet;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    # getter for: Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/internal/TransportSet;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    # getter for: Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/internal/TransportSet;->access$500()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "[{0}] Terminated"

    iget-object v4, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->this$0:Lio/grpc/internal/TransportSet;

    invoke-virtual {v4}, Lio/grpc/internal/TransportSet;->getLogId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    :cond_0
    const/4 v0, 0x1

    .line 374
    iget-object v2, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # invokes: Lio/grpc/internal/TransportSet;->cancelReconnectTask()V
    invoke-static {v2}, Lio/grpc/internal/TransportSet;->access$900(Lio/grpc/internal/TransportSet;)V

    .line 376
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->callback:Lio/grpc/internal/TransportSet$Callback;
    invoke-static {v0}, Lio/grpc/internal/TransportSet;->access$100(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/TransportSet$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/TransportSet$BaseTransportListener;->this$0:Lio/grpc/internal/TransportSet;

    invoke-virtual {v0, v1}, Lio/grpc/internal/TransportSet$Callback;->onTerminated(Lio/grpc/internal/TransportSet;)V

    .line 380
    :cond_2
    return-void

    .line 376
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
