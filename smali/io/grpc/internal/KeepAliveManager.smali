.class public Lio/grpc/internal/KeepAliveManager;
.super Ljava/lang/Object;
.source "KeepAliveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/KeepAliveManager$SystemTicker;,
        Lio/grpc/internal/KeepAliveManager$Ticker;,
        Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;,
        Lio/grpc/internal/KeepAliveManager$State;
    }
.end annotation


# static fields
.field private static final MIN_KEEPALIVE_DELAY_NANOS:J

.field private static final SYSTEM_TICKER:Lio/grpc/internal/KeepAliveManager$SystemTicker;


# instance fields
.field private keepAliveDelayInNanos:J

.field private keepAliveTimeoutInNanos:J

.field private nextKeepaliveTime:J

.field private final pingCallback:Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;

.field private pingFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final sendPing:Ljava/lang/Runnable;

.field private final shutdown:Ljava/lang/Runnable;

.field private shutdownFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private state:Lio/grpc/internal/KeepAliveManager$State;

.field private final ticker:Lio/grpc/internal/KeepAliveManager$Ticker;

.field private final transport:Lio/grpc/internal/ManagedClientTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lio/grpc/internal/KeepAliveManager$SystemTicker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/internal/KeepAliveManager$SystemTicker;-><init>(Lio/grpc/internal/KeepAliveManager$1;)V

    sput-object v0, Lio/grpc/internal/KeepAliveManager;->SYSTEM_TICKER:Lio/grpc/internal/KeepAliveManager$SystemTicker;

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/KeepAliveManager;->MIN_KEEPALIVE_DELAY_NANOS:J

    return-void
.end method

.method public constructor <init>(Lio/grpc/internal/ManagedClientTransport;Ljava/util/concurrent/ScheduledExecutorService;JJ)V
    .locals 3

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->IDLE:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    .line 58
    new-instance v0, Lio/grpc/internal/KeepAliveManager$1;

    invoke-direct {v0, p0}, Lio/grpc/internal/KeepAliveManager$1;-><init>(Lio/grpc/internal/KeepAliveManager;)V

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->shutdown:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Lio/grpc/internal/KeepAliveManager$2;

    invoke-direct {v0, p0}, Lio/grpc/internal/KeepAliveManager$2;-><init>(Lio/grpc/internal/KeepAliveManager;)V

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->sendPing:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;-><init>(Lio/grpc/internal/KeepAliveManager;Lio/grpc/internal/KeepAliveManager$1;)V

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->pingCallback:Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;

    .line 137
    const-string v0, "transport"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedClientTransport;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->transport:Lio/grpc/internal/ManagedClientTransport;

    .line 138
    const-string v0, "scheduler"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 139
    sget-object v0, Lio/grpc/internal/KeepAliveManager;->SYSTEM_TICKER:Lio/grpc/internal/KeepAliveManager$SystemTicker;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->ticker:Lio/grpc/internal/KeepAliveManager$Ticker;

    .line 141
    sget-wide v0, Lio/grpc/internal/KeepAliveManager;->MIN_KEEPALIVE_DELAY_NANOS:J

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveDelayInNanos:J

    .line 142
    iput-wide p5, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveTimeoutInNanos:J

    .line 143
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->ticker:Lio/grpc/internal/KeepAliveManager$Ticker;

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager$Ticker;->read()J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lio/grpc/internal/KeepAliveManager;->nextKeepaliveTime:J

    .line 144
    return-void
.end method

.method constructor <init>(Lio/grpc/internal/ManagedClientTransport;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/KeepAliveManager$Ticker;JJ)V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->IDLE:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    .line 58
    new-instance v0, Lio/grpc/internal/KeepAliveManager$1;

    invoke-direct {v0, p0}, Lio/grpc/internal/KeepAliveManager$1;-><init>(Lio/grpc/internal/KeepAliveManager;)V

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->shutdown:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Lio/grpc/internal/KeepAliveManager$2;

    invoke-direct {v0, p0}, Lio/grpc/internal/KeepAliveManager$2;-><init>(Lio/grpc/internal/KeepAliveManager;)V

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->sendPing:Ljava/lang/Runnable;

    .line 100
    new-instance v0, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;-><init>(Lio/grpc/internal/KeepAliveManager;Lio/grpc/internal/KeepAliveManager$1;)V

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->pingCallback:Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;

    .line 149
    const-string v0, "transport"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedClientTransport;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->transport:Lio/grpc/internal/ManagedClientTransport;

    .line 150
    const-string v0, "scheduler"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 151
    const-string v0, "ticker"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/KeepAliveManager$Ticker;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->ticker:Lio/grpc/internal/KeepAliveManager$Ticker;

    .line 152
    iput-wide p4, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveDelayInNanos:J

    .line 153
    iput-wide p6, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveTimeoutInNanos:J

    .line 154
    invoke-virtual {p3}, Lio/grpc/internal/KeepAliveManager$Ticker;->read()J

    move-result-wide v0

    add-long/2addr v0, p4

    iput-wide v0, p0, Lio/grpc/internal/KeepAliveManager;->nextKeepaliveTime:J

    .line 155
    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$State;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    return-object v0
.end method

.method static synthetic access$1000(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$Ticker;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->ticker:Lio/grpc/internal/KeepAliveManager$Ticker;

    return-object v0
.end method

.method static synthetic access$102(Lio/grpc/internal/KeepAliveManager;Lio/grpc/internal/KeepAliveManager$State;)Lio/grpc/internal/KeepAliveManager$State;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->pingCallback:Lio/grpc/internal/KeepAliveManager$KeepAlivePingCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lio/grpc/internal/KeepAliveManager;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveDelayInNanos:J

    return-wide v0
.end method

.method static synthetic access$200(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/ManagedClientTransport;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->transport:Lio/grpc/internal/ManagedClientTransport;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/KeepAliveManager;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$302(Lio/grpc/internal/KeepAliveManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lio/grpc/internal/KeepAliveManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$400(Lio/grpc/internal/KeepAliveManager;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->shutdown:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lio/grpc/internal/KeepAliveManager;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveTimeoutInNanos:J

    return-wide v0
.end method

.method static synthetic access$600(Lio/grpc/internal/KeepAliveManager;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$702(Lio/grpc/internal/KeepAliveManager;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lio/grpc/internal/KeepAliveManager;->pingFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$800(Lio/grpc/internal/KeepAliveManager;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->sendPing:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lio/grpc/internal/KeepAliveManager;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lio/grpc/internal/KeepAliveManager;->nextKeepaliveTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lio/grpc/internal/KeepAliveManager;J)J
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lio/grpc/internal/KeepAliveManager;->nextKeepaliveTime:J

    return-wide p1
.end method


# virtual methods
.method public declared-synchronized onDataReceived()V
    .locals 4

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->ticker:Lio/grpc/internal/KeepAliveManager$Ticker;

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveManager$Ticker;->read()J

    move-result-wide v0

    iget-wide v2, p0, Lio/grpc/internal/KeepAliveManager;->keepAliveDelayInNanos:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/internal/KeepAliveManager;->nextKeepaliveTime:J

    .line 165
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->PING_SCHEDULED:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v0, v1, :cond_0

    .line 166
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->PING_DELAYED:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransportActive()V
    .locals 6

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->IDLE:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v0, v1, :cond_0

    .line 177
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->PING_SCHEDULED:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    .line 178
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/grpc/internal/KeepAliveManager;->sendPing:Ljava/lang/Runnable;

    iget-wide v2, p0, Lio/grpc/internal/KeepAliveManager;->nextKeepaliveTime:J

    iget-object v4, p0, Lio/grpc/internal/KeepAliveManager;->ticker:Lio/grpc/internal/KeepAliveManager$Ticker;

    invoke-virtual {v4}, Lio/grpc/internal/KeepAliveManager$Ticker;->read()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->pingFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_0
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransportIdle()V
    .locals 2

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->PING_SCHEDULED:Lio/grpc/internal/KeepAliveManager$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->PING_DELAYED:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v0, v1, :cond_1

    .line 188
    :cond_0
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->IDLE:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    .line 190
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    if-ne v0, v1, :cond_2

    .line 191
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->IDLE_AND_PING_SENT:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_2
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onTransportShutdown()V
    .locals 2

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    sget-object v1, Lio/grpc/internal/KeepAliveManager$State;->DISCONNECTED:Lio/grpc/internal/KeepAliveManager$State;

    if-eq v0, v1, :cond_1

    .line 200
    sget-object v0, Lio/grpc/internal/KeepAliveManager$State;->DISCONNECTED:Lio/grpc/internal/KeepAliveManager$State;

    iput-object v0, p0, Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;

    .line 201
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->shutdownFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 204
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->pingFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager;->pingFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_1
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
