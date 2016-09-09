.class public Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;
.super Ljava/lang/Object;
.source "LeakWatcher.java"


# instance fields
.field private leakListener:Lcom/google/android/libraries/performance/primes/leak/LeakListener;

.field private leakWatcherThread:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;

.field private final leakWatcherThreadFactory:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$LeakWatcherThreadFactory;

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$LeakWatcherThreadFactory;

    invoke-direct {v0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$LeakWatcherThreadFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;-><init>(Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$LeakWatcherThreadFactory;)V

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$LeakWatcherThreadFactory;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->started:Z

    .line 35
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$LeakWatcherThreadFactory;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->leakWatcherThreadFactory:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$LeakWatcherThreadFactory;

    .line 36
    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->started:Z

    return v0
.end method

.method public scheduleHeapDumpAndAnalysis(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->leakWatcherThread:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->leakWatcherThread:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->scheduleHeapDumpAndAnalysis(Ljava/io/File;)Z

    move-result v0

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLeakListener(Lcom/google/android/libraries/performance/primes/leak/LeakListener;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->leakListener:Lcom/google/android/libraries/performance/primes/leak/LeakListener;

    .line 31
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->started:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->started:Z

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->started:Z

    .line 71
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->leakWatcherThread:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->leakWatcherThread:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->interrupt()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->leakWatcherThread:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;

    .line 75
    :cond_0
    const-string v0, "LeakWatcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const-string v0, "LeakWatcher"

    const-string v1, "Stopping leak watcher thread."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_1
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized watch(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->started:Z

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->leakWatcherThread:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->leakWatcherThreadFactory:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$LeakWatcherThreadFactory;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->leakListener:Lcom/google/android/libraries/performance/primes/leak/LeakListener;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$LeakWatcherThreadFactory;->newInstance(Lcom/google/android/libraries/performance/primes/leak/LeakListener;)Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->leakWatcherThread:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;

    .line 45
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->leakWatcherThread:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->start()V

    .line 46
    const-string v0, "LeakWatcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "LeakWatcher"

    const-string v1, "Starting leak watcher thread."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcher;->leakWatcherThread:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->watch(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
