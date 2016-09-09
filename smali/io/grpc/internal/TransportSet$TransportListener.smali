.class Lio/grpc/internal/TransportSet$TransportListener;
.super Lio/grpc/internal/TransportSet$BaseTransportListener;
.source "TransportSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/TransportSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransportListener"
.end annotation


# instance fields
.field private final address:Ljava/net/SocketAddress;

.field private final delayedTransport:Lio/grpc/internal/DelayedClientTransport;

.field final synthetic this$0:Lio/grpc/internal/TransportSet;


# direct methods
.method public constructor <init>(Lio/grpc/internal/TransportSet;Lio/grpc/internal/ManagedClientTransport;Lio/grpc/internal/DelayedClientTransport;Ljava/net/SocketAddress;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    .line 390
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/TransportSet$BaseTransportListener;-><init>(Lio/grpc/internal/TransportSet;Lio/grpc/internal/ManagedClientTransport;)V

    .line 391
    iput-object p4, p0, Lio/grpc/internal/TransportSet$TransportListener;->address:Ljava/net/SocketAddress;

    .line 392
    iput-object p3, p0, Lio/grpc/internal/TransportSet$TransportListener;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    .line 393
    return-void
.end method


# virtual methods
.method public transportReady()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 397
    # getter for: Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/internal/TransportSet;->access$500()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    # getter for: Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/internal/TransportSet;->access$500()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "[{0}] {1} for {2} is ready"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    .line 399
    invoke-virtual {v6}, Lio/grpc/internal/TransportSet;->getLogId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lio/grpc/internal/TransportSet$TransportListener;->transport:Lio/grpc/internal/ManagedClientTransport;

    invoke-interface {v6}, Lio/grpc/internal/ManagedClientTransport;->getLogId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x2

    iget-object v7, p0, Lio/grpc/internal/TransportSet$TransportListener;->address:Ljava/net/SocketAddress;

    aput-object v7, v5, v6

    .line 398
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    :cond_0
    invoke-super {p0}, Lio/grpc/internal/TransportSet$BaseTransportListener;->transportReady()V

    .line 403
    iget-object v2, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lio/grpc/internal/TransportSet;->access$000(Lio/grpc/internal/TransportSet;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 404
    :try_start_0
    iget-object v3, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->shutdown:Z
    invoke-static {v3}, Lio/grpc/internal/TransportSet;->access$800(Lio/grpc/internal/TransportSet;)Z

    move-result v3

    .line 405
    iget-object v4, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    const/4 v5, 0x0

    # setter for: Lio/grpc/internal/TransportSet;->reconnectPolicy:Lio/grpc/internal/BackoffPolicy;
    invoke-static {v4, v5}, Lio/grpc/internal/TransportSet;->access$1002(Lio/grpc/internal/TransportSet;Lio/grpc/internal/BackoffPolicy;)Lio/grpc/internal/BackoffPolicy;

    .line 406
    iget-object v4, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    const/4 v5, 0x0

    # setter for: Lio/grpc/internal/TransportSet;->nextAddressIndex:I
    invoke-static {v4, v5}, Lio/grpc/internal/TransportSet;->access$1102(Lio/grpc/internal/TransportSet;I)I

    .line 407
    iget-object v4, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->shutdown:Z
    invoke-static {v4}, Lio/grpc/internal/TransportSet;->access$800(Lio/grpc/internal/TransportSet;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 412
    iget-object v4, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;
    invoke-static {v4}, Lio/grpc/internal/TransportSet;->access$400(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_0
    const-string v1, "Unexpected non-null activeTransport"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 420
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    iget-object v0, p0, Lio/grpc/internal/TransportSet$TransportListener;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    iget-object v1, p0, Lio/grpc/internal/TransportSet$TransportListener;->transport:Lio/grpc/internal/ManagedClientTransport;

    invoke-virtual {v0, v1}, Lio/grpc/internal/DelayedClientTransport;->setTransport(Lio/grpc/internal/ClientTransport;)V

    .line 423
    iget-object v0, p0, Lio/grpc/internal/TransportSet$TransportListener;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v0}, Lio/grpc/internal/DelayedClientTransport;->shutdown()V

    .line 424
    if-eqz v3, :cond_2

    .line 426
    iget-object v0, p0, Lio/grpc/internal/TransportSet$TransportListener;->transport:Lio/grpc/internal/ManagedClientTransport;

    invoke-interface {v0}, Lio/grpc/internal/ManagedClientTransport;->shutdown()V

    .line 428
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->loadBalancer:Lio/grpc/LoadBalancer;
    invoke-static {v0}, Lio/grpc/internal/TransportSet;->access$1400(Lio/grpc/internal/TransportSet;)Lio/grpc/LoadBalancer;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->addressGroup:Lio/grpc/EquivalentAddressGroup;
    invoke-static {v1}, Lio/grpc/internal/TransportSet;->access$1300(Lio/grpc/internal/TransportSet;)Lio/grpc/EquivalentAddressGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/LoadBalancer;->handleTransportReady(Lio/grpc/EquivalentAddressGroup;)V

    .line 429
    return-void

    :cond_3
    move v0, v1

    .line 412
    goto :goto_0

    .line 414
    :cond_4
    :try_start_1
    iget-object v4, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;
    invoke-static {v4}, Lio/grpc/internal/TransportSet;->access$400(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/TransportSet$TransportListener;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    if-ne v4, v5, :cond_1

    .line 416
    iget-object v4, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->pendingTransport:Lio/grpc/internal/ConnectionClientTransport;
    invoke-static {v4}, Lio/grpc/internal/TransportSet;->access$1200(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/TransportSet$TransportListener;->transport:Lio/grpc/internal/ManagedClientTransport;

    if-ne v4, v5, :cond_5

    :goto_2
    const-string v1, "transport mismatch"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    iget-object v1, p0, Lio/grpc/internal/TransportSet$TransportListener;->transport:Lio/grpc/internal/ManagedClientTransport;

    # setter for: Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;
    invoke-static {v0, v1}, Lio/grpc/internal/TransportSet;->access$402(Lio/grpc/internal/TransportSet;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;

    .line 418
    iget-object v0, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    const/4 v1, 0x0

    # setter for: Lio/grpc/internal/TransportSet;->pendingTransport:Lio/grpc/internal/ConnectionClientTransport;
    invoke-static {v0, v1}, Lio/grpc/internal/TransportSet;->access$1202(Lio/grpc/internal/TransportSet;Lio/grpc/internal/ConnectionClientTransport;)Lio/grpc/internal/ConnectionClientTransport;

    goto :goto_1

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v0, v1

    .line 416
    goto :goto_2
.end method

.method public transportShutdown(Lio/grpc/Status;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 433
    .line 435
    # getter for: Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/internal/TransportSet;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    # getter for: Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/internal/TransportSet;->access$500()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "[{0}] {1} for {2} is being shutdown with status {3}"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    .line 437
    invoke-virtual {v7}, Lio/grpc/internal/TransportSet;->getLogId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v7, p0, Lio/grpc/internal/TransportSet$TransportListener;->transport:Lio/grpc/internal/ManagedClientTransport;

    invoke-interface {v7}, Lio/grpc/internal/ManagedClientTransport;->getLogId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x2

    iget-object v8, p0, Lio/grpc/internal/TransportSet$TransportListener;->address:Ljava/net/SocketAddress;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p1, v6, v7

    .line 436
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    :cond_0
    invoke-super {p0, p1}, Lio/grpc/internal/TransportSet$BaseTransportListener;->transportShutdown(Lio/grpc/Status;)V

    .line 441
    iget-object v3, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lio/grpc/internal/TransportSet;->access$000(Lio/grpc/internal/TransportSet;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 442
    :try_start_0
    iget-object v4, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;
    invoke-static {v4}, Lio/grpc/internal/TransportSet;->access$400(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/TransportSet$TransportListener;->transport:Lio/grpc/internal/ManagedClientTransport;

    if-ne v4, v5, :cond_5

    .line 445
    iget-object v4, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    const/4 v5, 0x0

    # setter for: Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;
    invoke-static {v4, v5}, Lio/grpc/internal/TransportSet;->access$402(Lio/grpc/internal/TransportSet;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;

    .line 446
    iget-object v4, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->shutdown:Z
    invoke-static {v4}, Lio/grpc/internal/TransportSet;->access$800(Lio/grpc/internal/TransportSet;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_0
    move-object v9, v2

    move v2, v1

    move v1, v0

    move-object v0, v9

    .line 459
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    if-eqz v0, :cond_1

    .line 461
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 463
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->loadBalancer:Lio/grpc/LoadBalancer;
    invoke-static {v0}, Lio/grpc/internal/TransportSet;->access$1400(Lio/grpc/internal/TransportSet;)Lio/grpc/LoadBalancer;

    move-result-object v0

    iget-object v3, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->addressGroup:Lio/grpc/EquivalentAddressGroup;
    invoke-static {v3}, Lio/grpc/internal/TransportSet;->access$1300(Lio/grpc/internal/TransportSet;)Lio/grpc/EquivalentAddressGroup;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lio/grpc/LoadBalancer;->handleTransportShutdown(Lio/grpc/EquivalentAddressGroup;Lio/grpc/Status;)V

    .line 464
    if-eqz v2, :cond_2

    .line 465
    iget-object v0, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->callback:Lio/grpc/internal/TransportSet$Callback;
    invoke-static {v0}, Lio/grpc/internal/TransportSet;->access$100(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/TransportSet$Callback;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/TransportSet$Callback;->onAllAddressesFailed()V

    .line 467
    :cond_2
    if-eqz v1, :cond_3

    .line 468
    iget-object v0, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->callback:Lio/grpc/internal/TransportSet$Callback;
    invoke-static {v0}, Lio/grpc/internal/TransportSet;->access$100(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/TransportSet$Callback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/TransportSet$Callback;->onConnectionClosedByServer(Lio/grpc/Status;)V

    .line 470
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 446
    goto :goto_0

    .line 447
    :cond_5
    :try_start_1
    iget-object v4, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;
    invoke-static {v4}, Lio/grpc/internal/TransportSet;->access$400(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/TransportSet$TransportListener;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    if-ne v4, v5, :cond_7

    .line 449
    iget-object v4, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->nextAddressIndex:I
    invoke-static {v4}, Lio/grpc/internal/TransportSet;->access$1100(Lio/grpc/internal/TransportSet;)I

    move-result v4

    if-nez v4, :cond_6

    .line 453
    iget-object v4, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    iget-object v5, p0, Lio/grpc/internal/TransportSet$TransportListener;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    # invokes: Lio/grpc/internal/TransportSet;->scheduleBackoff(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/Status;)V
    invoke-static {v4, v5, p1}, Lio/grpc/internal/TransportSet;->access$1500(Lio/grpc/internal/TransportSet;Lio/grpc/internal/DelayedClientTransport;Lio/grpc/Status;)V

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto :goto_1

    .line 456
    :cond_6
    iget-object v0, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    iget-object v2, p0, Lio/grpc/internal/TransportSet$TransportListener;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    # invokes: Lio/grpc/internal/TransportSet;->startNewTransport(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lio/grpc/internal/TransportSet;->access$300(Lio/grpc/internal/TransportSet;Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;

    move-result-object v0

    move v2, v1

    goto :goto_1

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    move-object v0, v2

    move v2, v1

    goto :goto_1
.end method

.method public transportTerminated()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 474
    # getter for: Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/internal/TransportSet;->access$500()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    # getter for: Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/internal/TransportSet;->access$500()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "[{0}] {1} for {2} is terminated"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    .line 476
    invoke-virtual {v6}, Lio/grpc/internal/TransportSet;->getLogId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lio/grpc/internal/TransportSet$TransportListener;->transport:Lio/grpc/internal/ManagedClientTransport;

    invoke-interface {v6}, Lio/grpc/internal/ManagedClientTransport;->getLogId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x2

    iget-object v7, p0, Lio/grpc/internal/TransportSet$TransportListener;->address:Ljava/net/SocketAddress;

    aput-object v7, v5, v6

    .line 475
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    :cond_0
    invoke-super {p0}, Lio/grpc/internal/TransportSet$BaseTransportListener;->transportTerminated()V

    .line 479
    iget-object v2, p0, Lio/grpc/internal/TransportSet$TransportListener;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;
    invoke-static {v2}, Lio/grpc/internal/TransportSet;->access$400(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/TransportSet$TransportListener;->transport:Lio/grpc/internal/ManagedClientTransport;

    if-eq v2, v3, :cond_1

    :goto_0
    const-string v1, "activeTransport still points to the delayedTransport. Seems transportShutdown() was not called."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 482
    return-void

    :cond_1
    move v0, v1

    .line 479
    goto :goto_0
.end method
