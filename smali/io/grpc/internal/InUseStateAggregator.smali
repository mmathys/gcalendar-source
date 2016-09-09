.class abstract Lio/grpc/internal/InUseStateAggregator;
.super Ljava/lang/Object;
.source "InUseStateAggregator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final inUseObjects:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/InUseStateAggregator;->inUseObjects:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method abstract getLock()Ljava/lang/Object;
.end method

.method abstract handleInUse()V
.end method

.method abstract handleNotInUse()V
.end method

.method final isInUse()Z
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lio/grpc/internal/InUseStateAggregator;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/InUseStateAggregator;->inUseObjects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final updateObjectInUse(Ljava/lang/Object;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lio/grpc/internal/InUseStateAggregator;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/InUseStateAggregator;->inUseObjects:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 52
    if-eqz p2, :cond_1

    .line 53
    iget-object v2, p0, Lio/grpc/internal/InUseStateAggregator;->inUseObjects:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lio/grpc/internal/InUseStateAggregator;->handleInUse()V

    .line 63
    :cond_0
    :goto_0
    monitor-exit v1

    .line 64
    return-void

    .line 58
    :cond_1
    iget-object v2, p0, Lio/grpc/internal/InUseStateAggregator;->inUseObjects:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 59
    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 60
    invoke-virtual {p0}, Lio/grpc/internal/InUseStateAggregator;->handleNotInUse()V

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
