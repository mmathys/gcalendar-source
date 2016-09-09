.class Lio/grpc/internal/DelayedClientTransport$PendingStream;
.super Lio/grpc/internal/DelayedStream;
.source "DelayedClientTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DelayedClientTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingStream"
.end annotation


# instance fields
.field private final callOptions:Lio/grpc/CallOptions;

.field private final context:Lio/grpc/Context;

.field private final headers:Lio/grpc/Metadata;

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor",
            "<**>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/grpc/internal/DelayedClientTransport;


# direct methods
.method private constructor <init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor",
            "<**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    iput-object p1, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    invoke-direct {p0}, Lio/grpc/internal/DelayedStream;-><init>()V

    .line 379
    iput-object p2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->method:Lio/grpc/MethodDescriptor;

    .line 380
    iput-object p3, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->headers:Lio/grpc/Metadata;

    .line 381
    iput-object p4, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->callOptions:Lio/grpc/CallOptions;

    .line 382
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->context:Lio/grpc/Context;

    .line 383
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Lio/grpc/internal/DelayedClientTransport$1;)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/internal/DelayedClientTransport$PendingStream;-><init>(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)V

    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/DelayedClientTransport$PendingStream;Lio/grpc/internal/ClientTransport;)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lio/grpc/internal/DelayedClientTransport$PendingStream;->createRealStream(Lio/grpc/internal/ClientTransport;)V

    return-void
.end method

.method static synthetic access$400(Lio/grpc/internal/DelayedClientTransport$PendingStream;)Lio/grpc/CallOptions;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->callOptions:Lio/grpc/CallOptions;

    return-object v0
.end method

.method private createRealStream(Lio/grpc/internal/ClientTransport;)V
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->context:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v1

    .line 389
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->method:Lio/grpc/MethodDescriptor;

    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->headers:Lio/grpc/Metadata;

    iget-object v3, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->callOptions:Lio/grpc/CallOptions;

    invoke-interface {p1, v0, v2, v3}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 391
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->context:Lio/grpc/Context;

    invoke-virtual {v2, v1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 393
    invoke-virtual {p0, v0}, Lio/grpc/internal/DelayedClientTransport$PendingStream;->setStream(Lio/grpc/internal/ClientStream;)V

    .line 394
    return-void

    .line 391
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->context:Lio/grpc/Context;

    invoke-virtual {v2, v1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v0
.end method


# virtual methods
.method public cancel(Lio/grpc/Status;)V
    .locals 3

    .prologue
    .line 398
    invoke-super {p0, p1}, Lio/grpc/internal/DelayedStream;->cancel(Lio/grpc/Status;)V

    .line 399
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    # getter for: Lio/grpc/internal/DelayedClientTransport;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lio/grpc/internal/DelayedClientTransport;->access$200(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    # getter for: Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;
    invoke-static {v0}, Lio/grpc/internal/DelayedClientTransport;->access$500(Lio/grpc/internal/DelayedClientTransport;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    # getter for: Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;
    invoke-static {v0}, Lio/grpc/internal/DelayedClientTransport;->access$500(Lio/grpc/internal/DelayedClientTransport;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 402
    iget-object v2, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    # getter for: Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;
    invoke-static {v2}, Lio/grpc/internal/DelayedClientTransport;->access$500(Lio/grpc/internal/DelayedClientTransport;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    # getter for: Lio/grpc/internal/DelayedClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;
    invoke-static {v0}, Lio/grpc/internal/DelayedClientTransport;->access$300(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportInUse(Z)V

    .line 404
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    # getter for: Lio/grpc/internal/DelayedClientTransport;->shutdown:Z
    invoke-static {v0}, Lio/grpc/internal/DelayedClientTransport;->access$600(Lio/grpc/internal/DelayedClientTransport;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    const/4 v2, 0x0

    # setter for: Lio/grpc/internal/DelayedClientTransport;->pendingStreams:Ljava/util/Collection;
    invoke-static {v0, v2}, Lio/grpc/internal/DelayedClientTransport;->access$502(Lio/grpc/internal/DelayedClientTransport;Ljava/util/Collection;)Ljava/util/Collection;

    .line 406
    iget-object v0, p0, Lio/grpc/internal/DelayedClientTransport$PendingStream;->this$0:Lio/grpc/internal/DelayedClientTransport;

    # getter for: Lio/grpc/internal/DelayedClientTransport;->listener:Lio/grpc/internal/ManagedClientTransport$Listener;
    invoke-static {v0}, Lio/grpc/internal/DelayedClientTransport;->access$300(Lio/grpc/internal/DelayedClientTransport;)Lio/grpc/internal/ManagedClientTransport$Listener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ManagedClientTransport$Listener;->transportTerminated()V

    .line 410
    :cond_0
    monitor-exit v1

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
