.class Lio/grpc/internal/DnsNameResolver$1;
.super Ljava/lang/Object;
.source "DnsNameResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DnsNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DnsNameResolver;


# direct methods
.method constructor <init>(Lio/grpc/internal/DnsNameResolver;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    # getter for: Lio/grpc/internal/DnsNameResolver;->resolutionTask:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v2}, Lio/grpc/internal/DnsNameResolver;->access$000(Lio/grpc/internal/DnsNameResolver;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    # getter for: Lio/grpc/internal/DnsNameResolver;->resolutionTask:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v2}, Lio/grpc/internal/DnsNameResolver;->access$000(Lio/grpc/internal/DnsNameResolver;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 138
    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    const/4 v3, 0x0

    # setter for: Lio/grpc/internal/DnsNameResolver;->resolutionTask:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v2, v3}, Lio/grpc/internal/DnsNameResolver;->access$002(Lio/grpc/internal/DnsNameResolver;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 140
    :cond_0
    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    # getter for: Lio/grpc/internal/DnsNameResolver;->shutdown:Z
    invoke-static {v2}, Lio/grpc/internal/DnsNameResolver;->access$100(Lio/grpc/internal/DnsNameResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    monitor-exit v1

    .line 177
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    # getter for: Lio/grpc/internal/DnsNameResolver;->listener:Lio/grpc/NameResolver$Listener;
    invoke-static {v2}, Lio/grpc/internal/DnsNameResolver;->access$200(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/NameResolver$Listener;

    move-result-object v2

    .line 144
    iget-object v3, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    const/4 v4, 0x1

    # setter for: Lio/grpc/internal/DnsNameResolver;->resolving:Z
    invoke-static {v3, v4}, Lio/grpc/internal/DnsNameResolver;->access$302(Lio/grpc/internal/DnsNameResolver;Z)Z

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    iget-object v3, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    # getter for: Lio/grpc/internal/DnsNameResolver;->host:Ljava/lang/String;
    invoke-static {v3}, Lio/grpc/internal/DnsNameResolver;->access$400(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/internal/DnsNameResolver;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v1

    .line 163
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 166
    aget-object v4, v1, v0

    .line 167
    new-instance v5, Lio/grpc/ResolvedServerInfo;

    new-instance v6, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    .line 168
    # getter for: Lio/grpc/internal/DnsNameResolver;->port:I
    invoke-static {v7}, Lio/grpc/internal/DnsNameResolver;->access$700(Lio/grpc/internal/DnsNameResolver;)I

    move-result v7

    invoke-direct {v6, v4, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    sget-object v4, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    invoke-direct {v5, v6, v4}, Lio/grpc/ResolvedServerInfo;-><init>(Ljava/net/SocketAddress;Lio/grpc/Attributes;)V

    .line 167
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    :try_start_4
    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 151
    :try_start_5
    iget-object v3, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    # getter for: Lio/grpc/internal/DnsNameResolver;->shutdown:Z
    invoke-static {v3}, Lio/grpc/internal/DnsNameResolver;->access$100(Lio/grpc/internal/DnsNameResolver;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 173
    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    monitor-enter v1

    .line 174
    :try_start_6
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    const/4 v2, 0x0

    # setter for: Lio/grpc/internal/DnsNameResolver;->resolving:Z
    invoke-static {v0, v2}, Lio/grpc/internal/DnsNameResolver;->access$302(Lio/grpc/internal/DnsNameResolver;Z)Z

    .line 175
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 156
    :cond_2
    :try_start_7
    iget-object v3, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    iget-object v4, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    .line 157
    # getter for: Lio/grpc/internal/DnsNameResolver;->timerService:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v4}, Lio/grpc/internal/DnsNameResolver;->access$600(Lio/grpc/internal/DnsNameResolver;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    new-instance v5, Lio/grpc/internal/LogExceptionRunnable;

    iget-object v6, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    # getter for: Lio/grpc/internal/DnsNameResolver;->resolutionRunnableOnExecutor:Ljava/lang/Runnable;
    invoke-static {v6}, Lio/grpc/internal/DnsNameResolver;->access$500(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v6, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    .line 156
    # setter for: Lio/grpc/internal/DnsNameResolver;->resolutionTask:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v3, v4}, Lio/grpc/internal/DnsNameResolver;->access$002(Lio/grpc/internal/DnsNameResolver;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 159
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 160
    :try_start_8
    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/grpc/NameResolver$Listener;->onError(Lio/grpc/Status;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 173
    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    monitor-enter v1

    .line 174
    :try_start_9
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    const/4 v2, 0x0

    # setter for: Lio/grpc/internal/DnsNameResolver;->resolving:Z
    invoke-static {v0, v2}, Lio/grpc/internal/DnsNameResolver;->access$302(Lio/grpc/internal/DnsNameResolver;Z)Z

    .line 175
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 159
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 173
    :catchall_4
    move-exception v0

    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    monitor-enter v1

    .line 174
    :try_start_c
    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    const/4 v3, 0x0

    # setter for: Lio/grpc/internal/DnsNameResolver;->resolving:Z
    invoke-static {v2, v3}, Lio/grpc/internal/DnsNameResolver;->access$302(Lio/grpc/internal/DnsNameResolver;Z)Z

    .line 175
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v0

    .line 171
    :cond_3
    :try_start_d
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    .line 170
    invoke-interface {v2, v0, v1}, Lio/grpc/NameResolver$Listener;->onUpdate(Ljava/util/List;Lio/grpc/Attributes;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 173
    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    monitor-enter v1

    .line 174
    :try_start_e
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$1;->this$0:Lio/grpc/internal/DnsNameResolver;

    const/4 v2, 0x0

    # setter for: Lio/grpc/internal/DnsNameResolver;->resolving:Z
    invoke-static {v0, v2}, Lio/grpc/internal/DnsNameResolver;->access$302(Lio/grpc/internal/DnsNameResolver;Z)Z

    .line 175
    monitor-exit v1

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :catchall_6
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0
.end method
