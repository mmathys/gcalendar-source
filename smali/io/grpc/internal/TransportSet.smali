.class final Lio/grpc/internal/TransportSet;
.super Ljava/lang/Object;
.source "TransportSet.java"

# interfaces
.implements Lio/grpc/internal/WithLogId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/TransportSet$Callback;,
        Lio/grpc/internal/TransportSet$TransportListener;,
        Lio/grpc/internal/TransportSet$BaseTransportListener;
    }
.end annotation


# static fields
.field private static final SHUTDOWN_TRANSPORT:Lio/grpc/internal/ClientTransport;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile activeTransport:Lio/grpc/internal/ManagedClientTransport;

.field private final addressGroup:Lio/grpc/EquivalentAddressGroup;

.field private final appExecutor:Ljava/util/concurrent/Executor;

.field private final authority:Ljava/lang/String;

.field private final backoffPolicyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

.field private final callback:Lio/grpc/internal/TransportSet$Callback;

.field private final connectingTimer:Lcom/google/common/base/Stopwatch;

.field private final inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/InUseStateAggregator",
            "<",
            "Lio/grpc/internal/ManagedClientTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final loadBalancer:Lio/grpc/LoadBalancer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/LoadBalancer",
            "<",
            "Lio/grpc/internal/ClientTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private nextAddressIndex:I

.field private pendingTransport:Lio/grpc/internal/ConnectionClientTransport;

.field private reconnectPolicy:Lio/grpc/internal/BackoffPolicy;

.field private reconnectTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private shutdown:Z

.field private final transportFactory:Lio/grpc/internal/ClientTransportFactory;

.field private final transports:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lio/grpc/internal/ManagedClientTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const-class v0, Lio/grpc/internal/TransportSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;

    .line 64
    new-instance v0, Lio/grpc/internal/FailingClientTransport;

    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "TransportSet is shutdown"

    .line 65
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/internal/FailingClientTransport;-><init>(Lio/grpc/Status;)V

    sput-object v0, Lio/grpc/internal/TransportSet;->SHUTDOWN_TRANSPORT:Lio/grpc/internal/ClientTransport;

    .line 64
    return-void
.end method

.method constructor <init>(Lio/grpc/EquivalentAddressGroup;Ljava/lang/String;Ljava/lang/String;Lio/grpc/LoadBalancer;Lio/grpc/internal/BackoffPolicy$Provider;Lio/grpc/internal/ClientTransportFactory;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;Ljava/util/concurrent/Executor;Lio/grpc/internal/TransportSet$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/EquivalentAddressGroup;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/LoadBalancer",
            "<",
            "Lio/grpc/internal/ClientTransport;",
            ">;",
            "Lio/grpc/internal/BackoffPolicy$Provider;",
            "Lio/grpc/internal/ClientTransportFactory;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/common/base/Stopwatch;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lio/grpc/internal/TransportSet$Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/TransportSet;->lock:Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/TransportSet;->transports:Ljava/util/Collection;

    .line 105
    new-instance v0, Lio/grpc/internal/TransportSet$1;

    invoke-direct {v0, p0}, Lio/grpc/internal/TransportSet$1;-><init>(Lio/grpc/internal/TransportSet;)V

    iput-object v0, p0, Lio/grpc/internal/TransportSet;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    .line 155
    const-string v0, "addressGroup"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/EquivalentAddressGroup;

    iput-object v0, p0, Lio/grpc/internal/TransportSet;->addressGroup:Lio/grpc/EquivalentAddressGroup;

    .line 156
    iput-object p2, p0, Lio/grpc/internal/TransportSet;->authority:Ljava/lang/String;

    .line 157
    iput-object p3, p0, Lio/grpc/internal/TransportSet;->userAgent:Ljava/lang/String;

    .line 158
    iput-object p4, p0, Lio/grpc/internal/TransportSet;->loadBalancer:Lio/grpc/LoadBalancer;

    .line 159
    iput-object p5, p0, Lio/grpc/internal/TransportSet;->backoffPolicyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

    .line 160
    iput-object p6, p0, Lio/grpc/internal/TransportSet;->transportFactory:Lio/grpc/internal/ClientTransportFactory;

    .line 161
    iput-object p7, p0, Lio/grpc/internal/TransportSet;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 162
    invoke-interface {p8}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Stopwatch;

    iput-object v0, p0, Lio/grpc/internal/TransportSet;->connectingTimer:Lcom/google/common/base/Stopwatch;

    .line 163
    iput-object p9, p0, Lio/grpc/internal/TransportSet;->appExecutor:Ljava/util/concurrent/Executor;

    .line 164
    iput-object p10, p0, Lio/grpc/internal/TransportSet;->callback:Lio/grpc/internal/TransportSet$Callback;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/TransportSet;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/TransportSet$Callback;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->callback:Lio/grpc/internal/TransportSet$Callback;

    return-object v0
.end method

.method static synthetic access$1002(Lio/grpc/internal/TransportSet;Lio/grpc/internal/BackoffPolicy;)Lio/grpc/internal/BackoffPolicy;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lio/grpc/internal/TransportSet;->reconnectPolicy:Lio/grpc/internal/BackoffPolicy;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/internal/TransportSet;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lio/grpc/internal/TransportSet;->nextAddressIndex:I

    return v0
.end method

.method static synthetic access$1102(Lio/grpc/internal/TransportSet;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lio/grpc/internal/TransportSet;->nextAddressIndex:I

    return p1
.end method

.method static synthetic access$1200(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->pendingTransport:Lio/grpc/internal/ConnectionClientTransport;

    return-object v0
.end method

.method static synthetic access$1202(Lio/grpc/internal/TransportSet;Lio/grpc/internal/ConnectionClientTransport;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lio/grpc/internal/TransportSet;->pendingTransport:Lio/grpc/internal/ConnectionClientTransport;

    return-object p1
.end method

.method static synthetic access$1300(Lio/grpc/internal/TransportSet;)Lio/grpc/EquivalentAddressGroup;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->addressGroup:Lio/grpc/EquivalentAddressGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lio/grpc/internal/TransportSet;)Lio/grpc/LoadBalancer;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->loadBalancer:Lio/grpc/LoadBalancer;

    return-object v0
.end method

.method static synthetic access$1500(Lio/grpc/internal/TransportSet;Lio/grpc/internal/DelayedClientTransport;Lio/grpc/Status;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/TransportSet;->scheduleBackoff(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/Status;)V

    return-void
.end method

.method static synthetic access$202(Lio/grpc/internal/TransportSet;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lio/grpc/internal/TransportSet;->reconnectTask:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$300(Lio/grpc/internal/TransportSet;Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lio/grpc/internal/TransportSet;->startNewTransport(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/ManagedClientTransport;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;

    return-object v0
.end method

.method static synthetic access$402(Lio/grpc/internal/TransportSet;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;

    return-object p1
.end method

.method static synthetic access$500()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/InUseStateAggregator;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/internal/TransportSet;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->transports:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/internal/TransportSet;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lio/grpc/internal/TransportSet;->shutdown:Z

    return v0
.end method

.method static synthetic access$900(Lio/grpc/internal/TransportSet;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lio/grpc/internal/TransportSet;->cancelReconnectTask()V

    return-void
.end method

.method private cancelReconnectTask()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->reconnectTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->reconnectTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/TransportSet;->reconnectTask:Ljava/util/concurrent/ScheduledFuture;

    .line 337
    :cond_0
    return-void
.end method

.method private scheduleBackoff(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/Status;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->reconnectTask:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "previous reconnectTask is not done"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->reconnectPolicy:Lio/grpc/internal/BackoffPolicy;

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->backoffPolicyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

    invoke-interface {v0}, Lio/grpc/internal/BackoffPolicy$Provider;->get()Lio/grpc/internal/BackoffPolicy;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/TransportSet;->reconnectPolicy:Lio/grpc/internal/BackoffPolicy;

    .line 237
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->reconnectPolicy:Lio/grpc/internal/BackoffPolicy;

    .line 238
    invoke-interface {v0}, Lio/grpc/internal/BackoffPolicy;->nextBackoffMillis()J

    move-result-wide v4

    iget-object v0, p0, Lio/grpc/internal/TransportSet;->connectingTimer:Lcom/google/common/base/Stopwatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 239
    sget-object v0, Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    sget-object v0, Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "[{0}] Scheduling backoff for {1} ms"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 241
    invoke-virtual {p0}, Lio/grpc/internal/TransportSet;->getLogId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    .line 240
    invoke-virtual {v0, v3, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :cond_1
    invoke-virtual {p1, p2}, Lio/grpc/internal/DelayedClientTransport;->startBackoff(Lio/grpc/Status;)V

    .line 282
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v2, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;

    invoke-direct {v2, p0, p1}, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;-><init>(Lio/grpc/internal/TransportSet;Lio/grpc/internal/DelayedClientTransport;)V

    invoke-direct {v1, v2}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/TransportSet;->reconnectTask:Ljava/util/concurrent/ScheduledFuture;

    .line 284
    return-void

    :cond_2
    move v0, v2

    .line 232
    goto :goto_0
.end method

.method private startNewTransport(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->reconnectTask:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    const-string v3, "Should have no reconnectTask scheduled"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 205
    iget v0, p0, Lio/grpc/internal/TransportSet;->nextAddressIndex:I

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->connectingTimer:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->reset()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 208
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->addressGroup:Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v0}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v3

    .line 209
    iget v0, p0, Lio/grpc/internal/TransportSet;->nextAddressIndex:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lio/grpc/internal/TransportSet;->nextAddressIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    .line 210
    iget v4, p0, Lio/grpc/internal/TransportSet;->nextAddressIndex:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v4, v3, :cond_1

    .line 211
    iput v2, p0, Lio/grpc/internal/TransportSet;->nextAddressIndex:I

    .line 214
    :cond_1
    iget-object v3, p0, Lio/grpc/internal/TransportSet;->transportFactory:Lio/grpc/internal/ClientTransportFactory;

    iget-object v4, p0, Lio/grpc/internal/TransportSet;->authority:Ljava/lang/String;

    iget-object v5, p0, Lio/grpc/internal/TransportSet;->userAgent:Ljava/lang/String;

    .line 215
    invoke-interface {v3, v0, v4, v5}, Lio/grpc/internal/ClientTransportFactory;->newClientTransport(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v3

    .line 216
    sget-object v4, Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 217
    sget-object v4, Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "[{0}] Created {1} for {2}"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 218
    invoke-virtual {p0}, Lio/grpc/internal/TransportSet;->getLogId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-interface {v3}, Lio/grpc/internal/ConnectionClientTransport;->getLogId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v0, v7, v1

    .line 217
    invoke-virtual {v4, v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_2
    iput-object v3, p0, Lio/grpc/internal/TransportSet;->pendingTransport:Lio/grpc/internal/ConnectionClientTransport;

    .line 221
    iget-object v1, p0, Lio/grpc/internal/TransportSet;->transports:Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v1, Lio/grpc/internal/TransportSet$TransportListener;

    invoke-direct {v1, p0, v3, p1, v0}, Lio/grpc/internal/TransportSet$TransportListener;-><init>(Lio/grpc/internal/TransportSet;Lio/grpc/internal/ManagedClientTransport;Lio/grpc/internal/DelayedClientTransport;Ljava/net/SocketAddress;)V

    invoke-interface {v3, v1}, Lio/grpc/internal/ConnectionClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v2

    .line 203
    goto :goto_0
.end method


# virtual methods
.method public getLogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    invoke-static {p0}, Lio/grpc/internal/GrpcUtil;->getLogId(Lio/grpc/internal/WithLogId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final obtainActiveTransport()Lio/grpc/internal/ClientTransport;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;

    .line 174
    if-eqz v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-object v0

    .line 178
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/TransportSet;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;

    .line 181
    if-eqz v0, :cond_2

    .line 182
    monitor-exit v1

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 184
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lio/grpc/internal/TransportSet;->shutdown:Z

    if-eqz v0, :cond_3

    .line 185
    sget-object v0, Lio/grpc/internal/TransportSet;->SHUTDOWN_TRANSPORT:Lio/grpc/internal/ClientTransport;

    monitor-exit v1

    goto :goto_0

    .line 188
    :cond_3
    new-instance v0, Lio/grpc/internal/DelayedClientTransport;

    iget-object v2, p0, Lio/grpc/internal/TransportSet;->appExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v2}, Lio/grpc/internal/DelayedClientTransport;-><init>(Ljava/util/concurrent/Executor;)V

    .line 189
    iget-object v2, p0, Lio/grpc/internal/TransportSet;->transports:Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v2, Lio/grpc/internal/TransportSet$BaseTransportListener;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/TransportSet$BaseTransportListener;-><init>(Lio/grpc/internal/TransportSet;Lio/grpc/internal/ManagedClientTransport;)V

    invoke-virtual {v0, v2}, Lio/grpc/internal/DelayedClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;

    .line 191
    iput-object v0, p0, Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;

    .line 192
    invoke-direct {p0, v0}, Lio/grpc/internal/TransportSet;->startNewTransport(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;

    move-result-object v2

    .line 193
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    if-eqz v2, :cond_0

    .line 195
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method final shutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 294
    .line 295
    iget-object v2, p0, Lio/grpc/internal/TransportSet;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 296
    :try_start_0
    iget-boolean v3, p0, Lio/grpc/internal/TransportSet;->shutdown:Z

    if-eqz v3, :cond_1

    .line 297
    monitor-exit v2

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/grpc/internal/TransportSet;->shutdown:Z

    .line 301
    iget-object v3, p0, Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;

    .line 302
    iget-object v4, p0, Lio/grpc/internal/TransportSet;->pendingTransport:Lio/grpc/internal/ConnectionClientTransport;

    .line 303
    const/4 v5, 0x0

    iput-object v5, p0, Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;

    .line 304
    iget-object v5, p0, Lio/grpc/internal/TransportSet;->transports:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 306
    iget-object v5, p0, Lio/grpc/internal/TransportSet;->reconnectTask:Ljava/util/concurrent/ScheduledFuture;

    if-nez v5, :cond_2

    move v1, v0

    :cond_2
    const-string v5, "Should have no reconnectTask scheduled"

    invoke-static {v1, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 308
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    if-eqz v3, :cond_3

    .line 310
    invoke-interface {v3}, Lio/grpc/internal/ManagedClientTransport;->shutdown()V

    .line 312
    :cond_3
    if-eqz v4, :cond_4

    .line 313
    invoke-interface {v4}, Lio/grpc/internal/ConnectionClientTransport;->shutdown()V

    .line 315
    :cond_4
    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lio/grpc/internal/TransportSet;->callback:Lio/grpc/internal/TransportSet$Callback;

    invoke-virtual {v0, p0}, Lio/grpc/internal/TransportSet$Callback;->onTerminated(Lio/grpc/internal/TransportSet;)V

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
