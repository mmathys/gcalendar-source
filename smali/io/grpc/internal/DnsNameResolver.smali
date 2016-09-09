.class Lio/grpc/internal/DnsNameResolver;
.super Lio/grpc/NameResolver;
.source "DnsNameResolver.java"


# instance fields
.field private final authority:Ljava/lang/String;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private final executorResource:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final host:Ljava/lang/String;

.field private listener:Lio/grpc/NameResolver$Listener;

.field private final port:I

.field private final resolutionRunnable:Ljava/lang/Runnable;

.field private final resolutionRunnableOnExecutor:Ljava/lang/Runnable;

.field private resolutionTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private resolving:Z

.field private shutdown:Z

.field private timerService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final timerServiceResource:Lio/grpc/internal/SharedResourceHolder$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/SharedResourceHolder$Resource",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/Attributes;Lio/grpc/internal/SharedResourceHolder$Resource;Lio/grpc/internal/SharedResourceHolder$Resource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/Attributes;",
            "Lio/grpc/internal/SharedResourceHolder$Resource",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;",
            "Lio/grpc/internal/SharedResourceHolder$Resource",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Lio/grpc/NameResolver;-><init>()V

    .line 129
    new-instance v0, Lio/grpc/internal/DnsNameResolver$1;

    invoke-direct {v0, p0}, Lio/grpc/internal/DnsNameResolver$1;-><init>(Lio/grpc/internal/DnsNameResolver;)V

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->resolutionRunnable:Ljava/lang/Runnable;

    .line 180
    new-instance v0, Lio/grpc/internal/DnsNameResolver$2;

    invoke-direct {v0, p0}, Lio/grpc/internal/DnsNameResolver$2;-><init>(Lio/grpc/internal/DnsNameResolver;)V

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->resolutionRunnableOnExecutor:Ljava/lang/Runnable;

    .line 88
    iput-object p4, p0, Lio/grpc/internal/DnsNameResolver;->timerServiceResource:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 89
    iput-object p5, p0, Lio/grpc/internal/DnsNameResolver;->executorResource:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 92
    const-string v1, "//"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "nameUri (%s) doesn\'t have an authority"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->authority:Ljava/lang/String;

    .line 95
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "host"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;

    .line 96
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 97
    sget-object v0, Lio/grpc/NameResolver$Factory;->PARAMS_DEFAULT_PORT:Lio/grpc/Attributes$Key;

    invoke-virtual {p3, v0}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 98
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lio/grpc/internal/DnsNameResolver;->port:I

    .line 107
    :goto_1
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x45

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t contain a port, and default port is not set in params"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lio/grpc/internal/DnsNameResolver;->port:I

    goto :goto_1
.end method

.method static synthetic access$000(Lio/grpc/internal/DnsNameResolver;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->resolutionTask:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$002(Lio/grpc/internal/DnsNameResolver;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver;->resolutionTask:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$100(Lio/grpc/internal/DnsNameResolver;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->shutdown:Z

    return v0
.end method

.method static synthetic access$200(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/NameResolver$Listener;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->listener:Lio/grpc/NameResolver$Listener;

    return-object v0
.end method

.method static synthetic access$302(Lio/grpc/internal/DnsNameResolver;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lio/grpc/internal/DnsNameResolver;->resolving:Z

    return p1
.end method

.method static synthetic access$400(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->resolutionRunnableOnExecutor:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/internal/DnsNameResolver;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$700(Lio/grpc/internal/DnsNameResolver;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lio/grpc/internal/DnsNameResolver;->port:I

    return v0
.end method

.method static synthetic access$800(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->resolutionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lio/grpc/internal/DnsNameResolver;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private resolve()V
    .locals 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->resolving:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->shutdown:Z

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver;->resolutionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized refresh()V
    .locals 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->listener:Lio/grpc/NameResolver$Listener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 126
    invoke-direct {p0}, Lio/grpc/internal/DnsNameResolver;->resolve()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized shutdown()V
    .locals 2

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lio/grpc/internal/DnsNameResolver;->shutdown:Z

    .line 211
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->resolutionTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->resolutionTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 214
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->timerServiceResource:Lio/grpc/internal/SharedResourceHolder$Resource;

    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 217
    :cond_3
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executorResource:Lio/grpc/internal/SharedResourceHolder$Resource;

    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lio/grpc/internal/SharedResourceHolder;->release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized start(Lio/grpc/NameResolver$Listener;)V
    .locals 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->listener:Lio/grpc/NameResolver$Listener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->timerServiceResource:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v0}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->timerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 118
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executorResource:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-static {v0}, Lio/grpc/internal/SharedResourceHolder;->get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/ExecutorService;

    .line 119
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/NameResolver$Listener;

    iput-object v0, p0, Lio/grpc/internal/DnsNameResolver;->listener:Lio/grpc/NameResolver$Listener;

    .line 120
    invoke-direct {p0}, Lio/grpc/internal/DnsNameResolver;->resolve()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
