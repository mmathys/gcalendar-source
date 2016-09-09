.class Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;
.super Ljava/lang/Object;
.source "SerializeReentrantCallsDirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private executing:Z

.field private taskQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->log:Ljava/util/logging/Logger;

    .line 52
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private completeQueuedTasks()V
    .locals 6

    .prologue
    .line 80
    .line 81
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 86
    sget-object v2, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x23

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Exception while executing runnable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method private enqueue(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    .line 95
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 61
    const-string v0, "\'task\' must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-boolean v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->executing:Z

    if-nez v0, :cond_3

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->executing:Z

    .line 65
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->completeQueuedTasks()V

    .line 72
    :cond_0
    iput-boolean v6, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->executing:Z

    .line 77
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    :try_start_1
    sget-object v1, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x23

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Exception while executing runnable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    iget-object v0, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0}, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->completeQueuedTasks()V

    .line 72
    :cond_1
    iput-boolean v6, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->executing:Z

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->taskQueue:Ljava/util/ArrayDeque;

    if-eqz v1, :cond_2

    .line 70
    invoke-direct {p0}, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->completeQueuedTasks()V

    .line 72
    :cond_2
    iput-boolean v6, p0, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->executing:Z

    throw v0

    .line 75
    :cond_3
    invoke-direct {p0, p1}, Lio/grpc/internal/SerializeReentrantCallsDirectExecutor;->enqueue(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
