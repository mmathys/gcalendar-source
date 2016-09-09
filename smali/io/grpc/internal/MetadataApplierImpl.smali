.class final Lio/grpc/internal/MetadataApplierImpl;
.super Ljava/lang/Object;
.source "MetadataApplierImpl.java"

# interfaces
.implements Lio/grpc/CallCredentials$MetadataApplier;


# instance fields
.field private final callOptions:Lio/grpc/CallOptions;

.field private final ctx:Lio/grpc/Context;

.field delayedStream:Lio/grpc/internal/DelayedStream;

.field finalized:Z

.field private final lock:Ljava/lang/Object;

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor",
            "<**>;"
        }
    .end annotation
.end field

.field private final origHeaders:Lio/grpc/Metadata;

.field private returnedStream:Lio/grpc/internal/ClientStream;

.field private final transport:Lio/grpc/internal/ClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ClientTransport;",
            "Lio/grpc/MethodDescriptor",
            "<**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->lock:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lio/grpc/internal/MetadataApplierImpl;->transport:Lio/grpc/internal/ClientTransport;

    .line 71
    iput-object p2, p0, Lio/grpc/internal/MetadataApplierImpl;->method:Lio/grpc/MethodDescriptor;

    .line 72
    iput-object p3, p0, Lio/grpc/internal/MetadataApplierImpl;->origHeaders:Lio/grpc/Metadata;

    .line 73
    iput-object p4, p0, Lio/grpc/internal/MetadataApplierImpl;->callOptions:Lio/grpc/CallOptions;

    .line 74
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->ctx:Lio/grpc/Context;

    .line 75
    return-void
.end method

.method private finalizeWith(Lio/grpc/internal/ClientStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 100
    iget-boolean v0, p0, Lio/grpc/internal/MetadataApplierImpl;->finalized:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "already finalized"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 101
    iput-boolean v1, p0, Lio/grpc/internal/MetadataApplierImpl;->finalized:Z

    .line 102
    iget-object v3, p0, Lio/grpc/internal/MetadataApplierImpl;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 103
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->returnedStream:Lio/grpc/internal/ClientStream;

    if-nez v0, :cond_1

    .line 106
    iput-object p1, p0, Lio/grpc/internal/MetadataApplierImpl;->returnedStream:Lio/grpc/internal/ClientStream;

    .line 107
    monitor-exit v3

    .line 114
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 100
    goto :goto_0

    .line 109
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->delayedStream:Lio/grpc/internal/DelayedStream;

    if-eqz v0, :cond_2

    :goto_2
    const-string v0, "delayedStream is null"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->delayedStream:Lio/grpc/internal/DelayedStream;

    invoke-virtual {v0, p1}, Lio/grpc/internal/DelayedStream;->setStream(Lio/grpc/internal/ClientStream;)V

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v1, v2

    .line 112
    goto :goto_2
.end method


# virtual methods
.method public apply(Lio/grpc/Metadata;)V
    .locals 5

    .prologue
    .line 79
    iget-boolean v0, p0, Lio/grpc/internal/MetadataApplierImpl;->finalized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "apply() or fail() already called"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 80
    const-string v0, "headers"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->origHeaders:Lio/grpc/Metadata;

    invoke-virtual {v0, p1}, Lio/grpc/Metadata;->merge(Lio/grpc/Metadata;)V

    .line 83
    iget-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->ctx:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->transport:Lio/grpc/internal/ClientTransport;

    iget-object v2, p0, Lio/grpc/internal/MetadataApplierImpl;->method:Lio/grpc/MethodDescriptor;

    iget-object v3, p0, Lio/grpc/internal/MetadataApplierImpl;->origHeaders:Lio/grpc/Metadata;

    iget-object v4, p0, Lio/grpc/internal/MetadataApplierImpl;->callOptions:Lio/grpc/CallOptions;

    invoke-interface {v0, v2, v3, v4}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 87
    iget-object v2, p0, Lio/grpc/internal/MetadataApplierImpl;->ctx:Lio/grpc/Context;

    invoke-virtual {v2, v1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 89
    invoke-direct {p0, v0}, Lio/grpc/internal/MetadataApplierImpl;->finalizeWith(Lio/grpc/internal/ClientStream;)V

    .line 90
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/MetadataApplierImpl;->ctx:Lio/grpc/Context;

    invoke-virtual {v2, v1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v0
.end method

.method public fail(Lio/grpc/Status;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cannot fail with OK status"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 95
    iget-boolean v0, p0, Lio/grpc/internal/MetadataApplierImpl;->finalized:Z

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "apply() or fail() already called"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 96
    new-instance v0, Lio/grpc/internal/FailingClientStream;

    invoke-direct {v0, p1}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/MetadataApplierImpl;->finalizeWith(Lio/grpc/internal/ClientStream;)V

    .line 97
    return-void

    :cond_0
    move v0, v2

    .line 94
    goto :goto_0

    :cond_1
    move v1, v2

    .line 95
    goto :goto_1
.end method

.method returnStream()Lio/grpc/internal/ClientStream;
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lio/grpc/internal/MetadataApplierImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->returnedStream:Lio/grpc/internal/ClientStream;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lio/grpc/internal/DelayedStream;

    invoke-direct {v0}, Lio/grpc/internal/DelayedStream;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->delayedStream:Lio/grpc/internal/DelayedStream;

    .line 124
    iget-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->delayedStream:Lio/grpc/internal/DelayedStream;

    iput-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->returnedStream:Lio/grpc/internal/ClientStream;

    monitor-exit v1

    .line 126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/MetadataApplierImpl;->returnedStream:Lio/grpc/internal/ClientStream;

    monitor-exit v1

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
