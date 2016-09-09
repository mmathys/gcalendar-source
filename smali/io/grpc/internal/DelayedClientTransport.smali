.class Lio/grpc/internal/DelayedClientTransport;
.super Ljava/lang/Object;
.source "DelayedClientTransport.java"

# interfaces
.implements Lio/grpc/internal/ManagedClientTransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/DelayedClientTransport$PendingPing;,
        Lio/grpc/internal/DelayedClientTransport$PendingStream;
    }
.end annotation


# instance fields
.field private backoffStatus:Lio/grpc/Status;

.field private listener:Lio/grpc/internal/ManagedClientTransport$Listener;

.field private final lock:Ljava/lang/Object;

.field private pendingPings:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lio/grpc/internal/DelayedClientTransport$PendingPing;",
            ">;"
        }
    .end annotation
.end field

.field private pendingStreams:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lio/grpc/internal/DelayedClientTransport$PendingStream;",
            ">;"
        }
    .end annotation
.end field

.field private shutdown:Z

.field private final streamCreationExecutor:Ljava/util/concurrent/Executor;

.field private volatile transportSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lio/grpc/internal/ClientTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingPings:Ljava/util/Collection;

    .line 95
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport;->streamCreationExecutor:Ljava/util/concurrent/Executor;

    .line 96
    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/internal/DelayedClientTransport;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$502(Lio/grpc/internal/DelayedClientTransport;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    return-object p1
.end method

.method static synthetic access$600(Lio/grpc/internal/DelayedClientTransport;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientTransport;->shutdown:Z

    return v0
.end method


# virtual methods
.method endBackoff()V
    .locals 2

    .prologue
    .line 355
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->backoffStatus:Lio/grpc/Status;

    .line 357
    monitor-exit v1

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    invoke-static {p0}, Lio/grpc/internal/GrpcUtil;->getLogId(Lio/grpc/internal/WithLogId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPendingStreamsCount()I
    .locals 2

    .prologue
    .line 292
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTransportSupplier()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lio/grpc/internal/ClientTransport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->transportSupplier:Lcom/google/common/base/Supplier;

    return-object v0
.end method

.method public hasPendingStreams()Z
    .locals 2

    .prologue
    .line 285
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isInBackoffPeriod()Z
    .locals 2

    .prologue
    .line 305
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->backoffStatus:Lio/grpc/Status;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    .locals 8
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

    .prologue
    const/4 v7, 0x1

    .line 118
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->transportSupplier:Lcom/google/common/base/Supplier;

    .line 119
    if-nez v0, :cond_3

    .line 120
    iget-object v6, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 122
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->transportSupplier:Lcom/google/common/base/Supplier;

    .line 123
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lio/grpc/internal/DelayedClientTransport;->shutdown:Z

    if-nez v1, :cond_2

    .line 124
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->backoffStatus:Lio/grpc/Status;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lio/grpc/CallOptions;->isWaitForReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lio/grpc/internal/FailingClientStream;

    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->backoffStatus:Lio/grpc/Status;

    invoke-direct {v0, v1}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;)V

    monitor-exit v6

    .line 139
    :goto_0
    return-object v0

    .line 127
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedClientTransport$PendingStream;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lio/grpc/internal/DelayedClientTransport$PendingStream;-><init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Lio/grpc/internal/DelayedClientTransport$1;)V

    .line 128
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 130
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportInUse(Z)V

    .line 132
    :cond_1
    monitor-exit v6

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :cond_3
    if-eqz v0, :cond_4

    .line 137
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ClientTransport;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_4
    new-instance v0, Lio/grpc/internal/FailingClientStream;

    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "transport shutdown"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;)V

    goto :goto_0
.end method

.method public ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->transportSupplier:Lcom/google/common/base/Supplier;

    .line 150
    if-nez v0, :cond_1

    .line 151
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->transportSupplier:Lcom/google/common/base/Supplier;

    .line 154
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lio/grpc/internal/DelayedClientTransport;->shutdown:Z

    if-nez v2, :cond_0

    .line 155
    new-instance v0, Lio/grpc/internal/DelayedClientTransport$PendingPing;

    invoke-direct {v0, p1, p2}, Lio/grpc/internal/DelayedClientTransport$PendingPing;-><init>(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V

    .line 156
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport;->pendingPings:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    monitor-exit v1

    .line 171
    :goto_0
    return-void

    .line 159
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    if-eqz v0, :cond_2

    .line 162
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ClientTransport;

    invoke-interface {v0, p1, p2}, Lio/grpc/internal/ClientTransport;->ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 165
    :cond_2
    new-instance v0, Lio/grpc/internal/DelayedClientTransport$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientTransport$1;-><init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/internal/ClientTransport$PingCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setTransport(Lio/grpc/internal/ClientTransport;)V
    .locals 2

    .prologue
    .line 226
    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "delayed transport calling setTransport on itself"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 228
    invoke-static {p1}, Lcom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lcom/google/common/base/Supplier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/DelayedClientTransport;->setTransportSupplier(Lcom/google/common/base/Supplier;)V

    .line 229
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTransportSupplier(Lcom/google/common/base/Supplier;)V
    .locals 4
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
    .line 242
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 243
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->transportSupplier:Lcom/google/common/base/Supplier;

    if-eqz v0, :cond_0

    .line 244
    monitor-exit v2

    .line 282
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v1, "start() not called"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 247
    const-string v0, "supplier"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Supplier;

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->transportSupplier:Lcom/google/common/base/Supplier;

    .line 248
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingPings:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/DelayedClientTransport$PendingPing;

    .line 249
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ClientTransport;

    invoke-virtual {v0, v1}, Lio/grpc/internal/DelayedClientTransport$PendingPing;->createRealPing(Lio/grpc/internal/ClientTransport;)V

    goto :goto_2

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 246
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 251
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingPings:Ljava/util/Collection;

    .line 252
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientTransport;->shutdown:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 253
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-interface {v0}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportTerminated()V

    .line 255
    :cond_3
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 256
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    .line 260
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->streamCreationExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lio/grpc/internal/DelayedClientTransport$2;

    invoke-direct {v3, p0, v0, p1}, Lio/grpc/internal/DelayedClientTransport$2;-><init>(Lio/grpc/internal/DelayedClientTransport;Ljava/util/Collection;Lcom/google/common/base/Supplier;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 277
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    .line 278
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientTransport;->shutdown:Z

    if-nez v0, :cond_5

    .line 279
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-interface {v0}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportReady()V

    .line 281
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientTransport;->shutdown:Z

    if-eqz v0, :cond_0

    .line 182
    monitor-exit v1

    .line 192
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/DelayedClientTransport;->shutdown:Z

    .line 185
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v3, "Channel requested transport to shut down"

    .line 186
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 185
    invoke-interface {v0, v2}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportShutdown(Lio/grpc/Status;)V

    .line 187
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    .line 189
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-interface {v0}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportTerminated()V

    .line 191
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdownNow(Lio/grpc/Status;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0}, Lio/grpc/internal/DelayedClientTransport;->shutdown()V

    .line 202
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    if-eqz v2, :cond_0

    .line 204
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    .line 205
    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    .line 207
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    if-eqz v0, :cond_2

    .line 209
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/DelayedClientTransport$PendingStream;

    .line 210
    invoke-virtual {v0, p1}, Lio/grpc/internal/DelayedClientTransport$PendingStream;->cancel(Lio/grpc/Status;)V

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 212
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    invoke-interface {v0}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportTerminated()V

    .line 215
    :cond_2
    return-void
.end method

.method public start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 100
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedClientTransport$Listener;

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method startBackoff(Lio/grpc/Status;)V
    .locals 5

    .prologue
    .line 324
    iget-object v1, p0, Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->backoffStatus:Lio/grpc/Status;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 326
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "Channel in TRANSIENT_FAILURE state"

    invoke-virtual {v0, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 327
    invoke-virtual {p1}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->backoffStatus:Lio/grpc/Status;

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 330
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 331
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/DelayedClientTransport$PendingStream;

    .line 333
    # getter for: Lio/grpc/internal/DelayedClientTransport$PendingStream;->callOptions:Lio/grpc/CallOptions;
    invoke-static {v0}, Lio/grpc/internal/DelayedClientTransport$PendingStream;->access$400(Lio/grpc/internal/DelayedClientTransport$PendingStream;)Lio/grpc/CallOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/CallOptions;->isWaitForReady()Z

    move-result v4

    if-nez v4, :cond_0

    .line 334
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 338
    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport;->streamCreationExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lio/grpc/internal/DelayedClientTransport$3;

    invoke-direct {v3, p0, v2, p1}, Lio/grpc/internal/DelayedClientTransport$3;-><init>(Lio/grpc/internal/DelayedClientTransport;Ljava/util/ArrayList;Lio/grpc/Status;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 347
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    return-void
.end method
