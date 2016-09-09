.class public Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;
.super Lcom/google/calendar/v2/client/service/common/ChangeNotifier;
.source "CollectionChangeNotifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/calendar/v2/client/service/common/ChangeNotifier",
        "<",
        "Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private batchLevel:I

.field private collectionDelta:Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->batchLevel:I

    .line 28
    invoke-static {}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->newInstance()Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->collectionDelta:Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    .line 29
    return-void
.end method

.method private maybeNotifyListeners(I)V
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    monitor-enter p0

    .line 67
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->collectionDelta:Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    invoke-virtual {v1}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->hasChanges()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->collectionDelta:Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    .line 69
    invoke-static {}, Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;->newInstance()Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->collectionDelta:Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;

    .line 71
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0, v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->notifyListeners(Ljava/lang/Object;)V

    .line 76
    :cond_1
    return-void

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public finishBatchUpdate()V
    .locals 2

    .prologue
    .line 47
    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->batchLevel:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Must call startBatchUpdate before finishBatchUpdate."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 51
    iget v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->batchLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->batchLevel:I

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-direct {p0, v0}, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->maybeNotifyListeners(I)V

    .line 54
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized startBatchUpdate()Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->batchLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->batchLevel:I

    .line 38
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/CollectionChangeNotifier;->collectionDelta:Lcom/google/calendar/v2/client/service/common/CollectionDeltaImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
