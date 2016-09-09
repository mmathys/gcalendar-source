.class Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Lio/grpc/TransportManager$InterimTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterimTransportImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/TransportManager$InterimTransport",
        "<",
        "Lio/grpc/internal/ClientTransport;",
        ">;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private final delayedTransport:Lio/grpc/internal/DelayedClientTransport;

.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 3

    .prologue
    .line 716
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    new-instance v0, Lio/grpc/internal/DelayedClientTransport;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->executor:Ljava/util/concurrent/Executor;
    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImpl;->access$1300(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/internal/DelayedClientTransport;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    .line 718
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl$1;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl$1;-><init>(Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;Lio/grpc/internal/ManagedChannelImpl;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/DelayedClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;

    .line 736
    # getter for: Lio/grpc/internal/ManagedChannelImpl;->lock:Ljava/lang/Object;
    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImpl;->access$000(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 737
    :try_start_0
    # getter for: Lio/grpc/internal/ManagedChannelImpl;->delayedTransports:Ljava/util/HashSet;
    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImpl;->access$2600(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 738
    # getter for: Lio/grpc/internal/ManagedChannelImpl;->shutdown:Z
    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImpl;->access$100(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v0

    .line 739
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_TRANSPORT:Lio/grpc/internal/ClientTransport;
    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$1100()Lio/grpc/internal/ClientTransport;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/DelayedClientTransport;->setTransport(Lio/grpc/internal/ClientTransport;)V

    .line 742
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v0}, Lio/grpc/internal/DelayedClientTransport;->shutdown()V

    .line 744
    :cond_0
    return-void

    .line 739
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$2500(Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;)Lio/grpc/internal/DelayedClientTransport;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    return-object v0
.end method


# virtual methods
.method public closeWithError(Lio/grpc/Status;)V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v0, p1}, Lio/grpc/internal/DelayedClientTransport;->shutdownNow(Lio/grpc/Status;)V

    .line 761
    return-void
.end method

.method public closeWithRealTransports(Lcom/google/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lio/grpc/internal/ClientTransport;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v0, p1}, Lio/grpc/internal/DelayedClientTransport;->setTransportSupplier(Lcom/google/common/base/Supplier;)V

    .line 755
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v0}, Lio/grpc/internal/DelayedClientTransport;->shutdown()V

    .line 756
    return-void
.end method

.method public transport()Lio/grpc/internal/ClientTransport;
    .locals 2

    .prologue
    .line 748
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "already closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 749
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    return-object v0

    .line 748
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic transport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 712
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->transport()Lio/grpc/internal/ClientTransport;

    move-result-object v0

    return-object v0
.end method
