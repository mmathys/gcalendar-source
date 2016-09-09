.class public Lcom/google/calendar/v2/client/service/common/ChangeNotifier;
.super Ljava/lang/Object;
.source "ChangeNotifier.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Disposable;"
    }
.end annotation


# static fields
.field private static final listenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static getActiveListenerCountForTesting()I
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listeners:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listeners:Ljava/util/Set;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method public static newInstance()Lcom/google/calendar/v2/client/service/common/ChangeNotifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/calendar/v2/client/service/common/ChangeNotifier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;

    invoke-direct {v0}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Listener already registered"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dispose()V
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listeners:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 126
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listeners:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyListeners(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listeners:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    :cond_0
    monitor-exit p0

    .line 101
    :cond_1
    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/calendar/v2/client/service/common/Listener;

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 99
    invoke-interface {v3, p1}, Lcom/google/calendar/v2/client/service/common/Listener;->onChange(Ljava/lang/Object;)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listeners:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/google/calendar/v2/client/service/common/ChangeNotifier;->listenerCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
