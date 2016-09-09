.class Lio/grpc/internal/KeepAliveManager$2;
.super Ljava/lang/Object;
.source "KeepAliveManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/KeepAliveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/KeepAliveManager;


# direct methods
.method constructor <init>(Lio/grpc/internal/KeepAliveManager;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    invoke-static {v2}, Lio/grpc/internal/KeepAliveManager;->access$100(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$State;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/KeepAliveManager$State;->PING_SCHEDULED:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v2, v3, :cond_2

    .line 82
    const/4 v0, 0x1

    .line 83
    iget-object v2, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    sget-object v3, Lio/grpc/internal/KeepAliveManager$State;->PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    # setter for: Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    invoke-static {v2, v3}, Lio/grpc/internal/KeepAliveManager;->access$102(Lio/grpc/internal/KeepAliveManager;Lio/grpc/internal/KeepAliveManager$State;)Lio/grpc/internal/KeepAliveManager$State;

    .line 85
    iget-object v2, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    iget-object v3, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v3}, Lio/grpc/internal/KeepAliveManager;->access$600(Lio/grpc/internal/KeepAliveManager;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->shutdown:Ljava/lang/Runnable;
    invoke-static {v4}, Lio/grpc/internal/KeepAliveManager;->access$400(Lio/grpc/internal/KeepAliveManager;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->keepAliveTimeoutInNanos:J
    invoke-static {v5}, Lio/grpc/internal/KeepAliveManager;->access$500(Lio/grpc/internal/KeepAliveManager;)J

    move-result-wide v6

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    # setter for: Lio/grpc/internal/KeepAliveManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v2, v3}, Lio/grpc/internal/KeepAliveManager;->access$302(Lio/grpc/internal/KeepAliveManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 93
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->transport:Lio/grpc/internal/ManagedClientTransport;
    invoke-static {v0}, Lio/grpc/internal/KeepAliveManager;->access$200(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->pingCallback:Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;
    invoke-static {v1}, Lio/grpc/internal/KeepAliveManager;->access$1100(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;

    move-result-object v1

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/grpc/internal/ManagedClientTransport;->ping(Lio/grpc/internal/ClientTransport$PingCallback;Ljava/util/concurrent/Executor;)V

    .line 98
    :cond_1
    return-void

    .line 87
    :cond_2
    :try_start_1
    iget-object v2, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    invoke-static {v2}, Lio/grpc/internal/KeepAliveManager;->access$100(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$State;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/KeepAliveManager$State;->PING_DELAYED:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v2, v3, :cond_0

    .line 89
    iget-object v2, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    iget-object v3, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v3}, Lio/grpc/internal/KeepAliveManager;->access$600(Lio/grpc/internal/KeepAliveManager;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->sendPing:Ljava/lang/Runnable;
    invoke-static {v4}, Lio/grpc/internal/KeepAliveManager;->access$800(Lio/grpc/internal/KeepAliveManager;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->nextKeepaliveTime:J
    invoke-static {v5}, Lio/grpc/internal/KeepAliveManager;->access$900(Lio/grpc/internal/KeepAliveManager;)J

    move-result-wide v6

    iget-object v5, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->ticker:Lio/grpc/internal/KeepAliveManager$Ticker;
    invoke-static {v5}, Lio/grpc/internal/KeepAliveManager;->access$1000(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$Ticker;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/internal/KeepAliveManager$Ticker;->read()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    # setter for: Lio/grpc/internal/KeepAliveManager;->pingFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v2, v3}, Lio/grpc/internal/KeepAliveManager;->access$702(Lio/grpc/internal/KeepAliveManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 91
    iget-object v2, p0, Lio/grpc/internal/KeepAliveManager$2;->this$0:Lio/grpc/internal/KeepAliveManager;

    sget-object v3, Lio/grpc/internal/KeepAliveManager$State;->PING_SCHEDULED:Lio/grpc/internal/KeepAliveManager$State;

    # setter for: Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    invoke-static {v2, v3}, Lio/grpc/internal/KeepAliveManager;->access$102(Lio/grpc/internal/KeepAliveManager;Lio/grpc/internal/KeepAliveManager$State;)Lio/grpc/internal/KeepAliveManager$State;

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
