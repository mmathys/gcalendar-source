.class public final Lio/grpc/internal/SharedResourceHolder;
.super Ljava/lang/Object;
.source "SharedResourceHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/SharedResourceHolder$Instance;,
        Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;,
        Lio/grpc/internal/SharedResourceHolder$Resource;
    }
.end annotation


# static fields
.field private static final holder:Lio/grpc/internal/SharedResourceHolder;


# instance fields
.field private destroyer:Ljava/util/concurrent/ScheduledExecutorService;

.field private final destroyerFactory:Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;

.field private final instances:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lio/grpc/internal/SharedResourceHolder$Resource",
            "<*>;",
            "Lio/grpc/internal/SharedResourceHolder$Instance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lio/grpc/internal/SharedResourceHolder;

    new-instance v1, Lio/grpc/internal/SharedResourceHolder$1;

    invoke-direct {v1}, Lio/grpc/internal/SharedResourceHolder$1;-><init>()V

    invoke-direct {v0, v1}, Lio/grpc/internal/SharedResourceHolder;-><init>(Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;)V

    sput-object v0, Lio/grpc/internal/SharedResourceHolder;->holder:Lio/grpc/internal/SharedResourceHolder;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/SharedResourceHolder;->instances:Ljava/util/IdentityHashMap;

    .line 81
    iput-object p1, p0, Lio/grpc/internal/SharedResourceHolder;->destroyerFactory:Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/SharedResourceHolder;)Ljava/util/IdentityHashMap;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder;->instances:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/SharedResourceHolder;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder;->destroyer:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$102(Lio/grpc/internal/SharedResourceHolder;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lio/grpc/internal/SharedResourceHolder;->destroyer:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p1
.end method

.method public static get(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/SharedResourceHolder$Resource",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 91
    sget-object v0, Lio/grpc/internal/SharedResourceHolder;->holder:Lio/grpc/internal/SharedResourceHolder;

    invoke-virtual {v0, p0}, Lio/grpc/internal/SharedResourceHolder;->getInternal(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static release(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/SharedResourceHolder$Resource",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, Lio/grpc/internal/SharedResourceHolder;->holder:Lio/grpc/internal/SharedResourceHolder;

    invoke-virtual {v0, p0, p1}, Lio/grpc/internal/SharedResourceHolder;->releaseInternal(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized getInternal(Lio/grpc/internal/SharedResourceHolder$Resource;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/SharedResourceHolder$Resource",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder;->instances:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/SharedResourceHolder$Instance;

    .line 120
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lio/grpc/internal/SharedResourceHolder$Instance;

    invoke-interface {p1}, Lio/grpc/internal/SharedResourceHolder$Resource;->create()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/internal/SharedResourceHolder$Instance;-><init>(Ljava/lang/Object;)V

    .line 122
    iget-object v1, p0, Lio/grpc/internal/SharedResourceHolder;->instances:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    iget-object v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->destroyTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->destroyTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 126
    const/4 v1, 0x0

    iput-object v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->destroyTask:Ljava/util/concurrent/ScheduledFuture;

    .line 128
    :cond_1
    iget v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I

    .line 129
    iget-object v0, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->payload:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized releaseInternal(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/SharedResourceHolder$Resource",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder;->instances:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/SharedResourceHolder$Instance;

    .line 137
    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "No cached instance found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_0
    :try_start_1
    iget-object v3, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->payload:Ljava/lang/Object;

    if-ne p2, v3, :cond_2

    move v3, v1

    :goto_0
    const-string v4, "Releasing the wrong instance"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 141
    iget v3, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I

    if-lez v3, :cond_3

    move v3, v1

    :goto_1
    const-string v4, "Refcount has already reached zero"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 142
    iget v3, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I

    .line 143
    iget v3, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I

    if-nez v3, :cond_1

    .line 144
    sget-boolean v3, Lio/grpc/internal/GrpcUtil;->IS_RESTRICTED_APPENGINE:Z

    if-eqz v3, :cond_4

    .line 148
    invoke-interface {p1, p2}, Lio/grpc/internal/SharedResourceHolder$Resource;->close(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder;->instances:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :cond_1
    :goto_2
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_2
    move v3, v2

    .line 140
    goto :goto_0

    :cond_3
    move v3, v2

    .line 141
    goto :goto_1

    .line 151
    :cond_4
    :try_start_2
    iget-object v3, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->destroyTask:Ljava/util/concurrent/ScheduledFuture;

    if-nez v3, :cond_6

    :goto_3
    const-string v2, "Destroy task already scheduled"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 153
    iget-object v1, p0, Lio/grpc/internal/SharedResourceHolder;->destroyer:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_5

    .line 154
    iget-object v1, p0, Lio/grpc/internal/SharedResourceHolder;->destroyerFactory:Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;

    invoke-interface {v1}, Lio/grpc/internal/SharedResourceHolder$ScheduledExecutorFactory;->createScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/SharedResourceHolder;->destroyer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 156
    :cond_5
    iget-object v1, p0, Lio/grpc/internal/SharedResourceHolder;->destroyer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lio/grpc/internal/LogExceptionRunnable;

    new-instance v3, Lio/grpc/internal/SharedResourceHolder$2;

    invoke-direct {v3, p0, v0, p1, p2}, Lio/grpc/internal/SharedResourceHolder$2;-><init>(Lio/grpc/internal/SharedResourceHolder;Lio/grpc/internal/SharedResourceHolder$Instance;Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lio/grpc/internal/LogExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->destroyTask:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_6
    move v1, v2

    .line 151
    goto :goto_3
.end method
