.class Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;
.super Ljava/lang/Object;
.source "KeepAliveManager.java"

# interfaces
.implements Lio/grpc/internal/ClientTransport$PingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/KeepAliveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeepAlivePingCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/KeepAliveManager;


# direct methods
.method private constructor <init>(Lio/grpc/internal/KeepAliveManager;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/KeepAliveManager;Lio/grpc/internal/KeepAliveManager$1;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;-><init>(Lio/grpc/internal/KeepAliveManager;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v0}, Lio/grpc/internal/KeepAliveManager;->access$300(Lio/grpc/internal/KeepAliveManager;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 236
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->shutdown:Ljava/lang/Runnable;
    invoke-static {v0}, Lio/grpc/internal/KeepAliveManager;->access$400(Lio/grpc/internal/KeepAliveManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 238
    return-void

    .line 236
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSuccess(J)V
    .locals 7

    .prologue
    .line 214
    iget-object v1, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v0}, Lio/grpc/internal/KeepAliveManager;->access$300(Lio/grpc/internal/KeepAliveManager;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 216
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    iget-object v2, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->ticker:Lio/grpc/internal/KeepAliveManager$Ticker;
    invoke-static {v2}, Lio/grpc/internal/KeepAliveManager;->access$1000(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$Ticker;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/KeepAliveManager$Ticker;->read()J

    move-result-wide v2

    iget-object v4, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->keepAliveDelayInNanos:J
    invoke-static {v4}, Lio/grpc/internal/KeepAliveManager;->access$1300(Lio/grpc/internal/KeepAliveManager;)J

    move-result-wide v4

    add-long/2addr v2, v4

    # setter for: Lio/grpc/internal/KeepAliveManager;->nextKeepaliveTime:J
    invoke-static {v0, v2, v3}, Lio/grpc/internal/KeepAliveManager;->access$902(Lio/grpc/internal/KeepAliveManager;J)J

    .line 217
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    invoke-static {v0}, Lio/grpc/internal/KeepAliveManager;->access$100(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$State;

    move-result-object v0

    sget-object v2, Lio/grpc/internal/KeepAliveManager$State;->PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v0, v2, :cond_0

    .line 220
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    iget-object v2, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v2}, Lio/grpc/internal/KeepAliveManager;->access$600(Lio/grpc/internal/KeepAliveManager;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->sendPing:Ljava/lang/Runnable;
    invoke-static {v3}, Lio/grpc/internal/KeepAliveManager;->access$800(Lio/grpc/internal/KeepAliveManager;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->keepAliveDelayInNanos:J
    invoke-static {v4}, Lio/grpc/internal/KeepAliveManager;->access$1300(Lio/grpc/internal/KeepAliveManager;)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    # setter for: Lio/grpc/internal/KeepAliveManager;->pingFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v0, v2}, Lio/grpc/internal/KeepAliveManager;->access$702(Lio/grpc/internal/KeepAliveManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 221
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    sget-object v2, Lio/grpc/internal/KeepAliveManager$State;->PING_SCHEDULED:Lio/grpc/internal/KeepAliveManager$State;

    # setter for: Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    invoke-static {v0, v2}, Lio/grpc/internal/KeepAliveManager;->access$102(Lio/grpc/internal/KeepAliveManager;Lio/grpc/internal/KeepAliveManager$State;)Lio/grpc/internal/KeepAliveManager$State;

    .line 223
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    invoke-static {v0}, Lio/grpc/internal/KeepAliveManager;->access$100(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$State;

    move-result-object v0

    sget-object v2, Lio/grpc/internal/KeepAliveManager$State;->IDLE_AND_PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v0, v2, :cond_1

    .line 226
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;->this$0:Lio/grpc/internal/KeepAliveManager;

    sget-object v2, Lio/grpc/internal/KeepAliveManager$State;->IDLE:Lio/grpc/internal/KeepAliveManager$State;

    # setter for: Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    invoke-static {v0, v2}, Lio/grpc/internal/KeepAliveManager;->access$102(Lio/grpc/internal/KeepAliveManager;Lio/grpc/internal/KeepAliveManager$State;)Lio/grpc/internal/KeepAliveManager$State;

    .line 228
    :cond_1
    monitor-exit v1

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
