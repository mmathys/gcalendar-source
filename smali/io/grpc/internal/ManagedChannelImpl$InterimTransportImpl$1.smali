.class Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl$1;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Lio/grpc/internal/ManagedClientTransport$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;

.field final synthetic val$this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl$1;->val$this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transportInUse(Z)V
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->access$2500(Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 733
    return-void
.end method

.method public transportReady()V
    .locals 0

    .prologue
    .line 729
    return-void
.end method

.method public transportShutdown(Lio/grpc/Status;)V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method public transportTerminated()V
    .locals 3

    .prologue
    .line 722
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$000(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 723
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->delayedTransports:Ljava/util/HashSet;
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2600(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;
    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->access$2500(Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 724
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # invokes: Lio/grpc/internal/ManagedChannelImpl;->maybeTerminateChannel()V
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2200(Lio/grpc/internal/ManagedChannelImpl;)V

    .line 725
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl$1;->this$1:Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->delayedTransport:Lio/grpc/internal/DelayedClientTransport;
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;->access$2500(Lio/grpc/internal/ManagedChannelImpl$InterimTransportImpl;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 727
    return-void

    .line 725
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
