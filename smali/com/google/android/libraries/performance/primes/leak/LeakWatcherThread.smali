.class Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;
.super Ljava/lang/Thread;
.source "LeakWatcherThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactoryImpl;,
        Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;,
        Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$LeakWatcherThreadFactory;
    }
.end annotation


# instance fields
.field final dummyQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final garbageListQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/google/android/libraries/performance/primes/leak/GarbageReference;",
            ">;"
        }
    .end annotation
.end field

.field private hprofFile:Ljava/io/File;

.field private final incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

.field private final leakListener:Lcom/google/android/libraries/performance/primes/leak/LeakListener;

.field private final queueForDump:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

.field private final referenceFactory:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/ref/ReferenceQueue;Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;Lcom/google/android/libraries/performance/primes/leak/LeakListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;",
            "Lcom/google/android/libraries/performance/primes/leak/LeakListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x14

    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 74
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1, v4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->dummyQueue:Ljava/util/Deque;

    .line 94
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1, v5}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->garbageListQueue:Ljava/util/Deque;

    .line 103
    const-string v1, "Primes-Watcher"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->setName(Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 105
    iput-object p3, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->leakListener:Lcom/google/android/libraries/performance/primes/leak/LeakListener;

    .line 106
    iput-object p2, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->referenceFactory:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;

    .line 107
    new-instance v1, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    const-string v2, "Sentinel"

    const-string v3, "Sentinel"

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 108
    new-instance v1, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    const-string v2, "Sentinel"

    const-string v3, "Sentinel"

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->queueForDump:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    move v1, v0

    .line 109
    :goto_0
    if-ge v1, v4, :cond_0

    .line 110
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->dummyQueue:Ljava/util/Deque;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    :goto_1
    if-ge v0, v5, :cond_1

    .line 113
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->garbageListQueue:Ljava/util/Deque;

    new-instance v2, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    const-string v3, "Sentinel"

    const-string v4, "Sentinel"

    invoke-direct {v2, v3, v4, p1}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/ReferenceQueue;Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;Lcom/google/android/libraries/performance/primes/leak/LeakListener;Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;-><init>(Ljava/lang/ref/ReferenceQueue;Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;Lcom/google/android/libraries/performance/primes/leak/LeakListener;)V

    return-void
.end method

.method private advanceListQueue()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->garbageListQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 206
    iget-object v1, v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 207
    :goto_0
    const-string v3, "LeakWatcherThread"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    const-string v4, "LeakWatcherThread"

    if-eqz v1, :cond_2

    const-string v3, ""

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1b

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Check for leak: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " leak found"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    iget-object v3, v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    :goto_2
    if-eqz v3, :cond_3

    .line 212
    add-int/lit8 v4, v2, 0x1

    .line 211
    iget-object v2, v3, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    move-object v3, v2

    move v2, v4

    goto :goto_2

    :cond_1
    move v1, v2

    .line 206
    goto :goto_0

    .line 208
    :cond_2
    const-string v3, "no"

    goto :goto_1

    .line 214
    :cond_3
    :goto_3
    iget-object v3, v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    if-eqz v3, :cond_4

    .line 215
    iget-object v3, v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    invoke-virtual {v3}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->removeSelf()Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    move-result-object v3

    .line 216
    iget-object v4, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->leakListener:Lcom/google/android/libraries/performance/primes/leak/LeakListener;

    iget-object v5, v3, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/google/android/libraries/performance/primes/leak/LeakListener;->onLeaked(Ljava/lang/String;)V

    .line 217
    const/16 v4, 0x1f4

    if-ge v2, v4, :cond_3

    .line 218
    iget-object v4, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->queueForDump:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->insertAfter(Lcom/google/android/libraries/performance/primes/leak/GarbageReference;)V

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 224
    :cond_4
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->garbageListQueue:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 227
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    monitor-enter v2

    .line 228
    :try_start_0
    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    iget-object v3, v3, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    if-eqz v3, :cond_5

    .line 229
    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    iget-object v3, v3, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    iput-object v3, v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 230
    iget-object v3, v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    iput-object v0, v3, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->prev:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 231
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 233
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->leakListener:Lcom/google/android/libraries/performance/primes/leak/LeakListener;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/performance/primes/leak/LeakListener;->onBatchComplete(Z)V

    .line 236
    return-void

    .line 233
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private dumpAndAnalyzeHeap()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 277
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->hprofFile:Ljava/io/File;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkState(Z)V

    .line 278
    new-instance v1, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    const-string v0, "Sentinel"

    const-string v2, "Sentinel"

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)V

    .line 279
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    monitor-enter v2

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->insertAfter(Lcom/google/android/libraries/performance/primes/leak/GarbageReference;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 284
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->prev:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 285
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 287
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 288
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->hprofFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 289
    const-string v0, "LeakWatcherThread"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "LeakWatcherThread"

    iget-object v4, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->hprofFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    .line 291
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v2, v6, v2

    const-wide/32 v6, 0xf4240

    div-long/2addr v2, v6

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x4f

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Hprof dumped. File size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MB. Took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 294
    new-instance v0, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;

    iget-object v4, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->hprofFile:Ljava/io/File;

    invoke-direct {v0, v4}, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;-><init>(Ljava/io/File;)V

    .line 295
    const-class v4, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/performance/primes/hprof/HprofAnalyzer;->checkTrackedObjectsForLeak(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 296
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->leakListener:Lcom/google/android/libraries/performance/primes/leak/LeakListener;

    invoke-interface {v0, v4}, Lcom/google/android/libraries/performance/primes/leak/LeakListener;->onHeapDumpResult(Ljava/util/List;)V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->garbageListQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 300
    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->removeSelf()Lcom/google/android/libraries/performance/primes/leak/GarbageReference;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    :try_start_2
    const-string v2, "LeakWatcherThread"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 309
    const-string v2, "LeakWatcherThread"

    const-string v3, "Failed to analyze dump"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    :cond_2
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    :goto_2
    :try_start_3
    iget-object v0, v1, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    if-eqz v0, :cond_6

    .line 313
    iget-object v0, v1, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->removeSelf()Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->insertAfter(Lcom/google/android/libraries/performance/primes/leak/GarbageReference;)V

    goto :goto_2

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 317
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->hprofFile:Ljava/io/File;

    .line 318
    iput-object v8, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->hprofFile:Ljava/io/File;

    .line 319
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 320
    throw v0

    .line 277
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 285
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 302
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->queueForDump:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    invoke-virtual {v0}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->removeSelf()Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 303
    const-string v0, "LeakWatcherThread"

    const/4 v5, 0x3

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 304
    const-string v0, "LeakWatcherThread"

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 305
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v2, v6, v2

    const-wide/32 v6, 0xf4240

    div-long/2addr v2, v6

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x45

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " leak(s). The analysis took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 317
    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->hprofFile:Ljava/io/File;

    .line 318
    iput-object v8, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->hprofFile:Ljava/io/File;

    .line 319
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 321
    :goto_3
    return-void

    .line 315
    :cond_6
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 317
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->hprofFile:Ljava/io/File;

    .line 318
    iput-object v8, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->hprofFile:Ljava/io/File;

    .line 319
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3
.end method

.method private readAndProcessQueueTillDummyCollected()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->dummyQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 162
    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->dummyQueue:Ljava/util/Deque;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 163
    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->referenceFactory:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;

    const-string v4, ""

    iget-object v5, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;->newReference(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    move-result-object v5

    move v4, v2

    .line 166
    :goto_0
    if-nez v4, :cond_5

    .line 167
    const/4 v3, 0x0

    .line 168
    :goto_1
    if-nez v3, :cond_6

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    iget-object v6, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->hprofFile:Ljava/io/File;

    if-eqz v6, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->dumpAndAnalyzeHeap()V

    goto :goto_1

    .line 175
    :cond_0
    throw v0

    .line 179
    :goto_2
    if-eqz v0, :cond_3

    .line 180
    if-ne v0, v5, :cond_2

    .line 181
    if-nez v3, :cond_1

    move v0, v1

    :goto_3
    const-string v3, "Only one dummy released at a time."

    invoke-static {v0, v3}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkState(ZLjava/lang/Object;)V

    move v0, v1

    .line 187
    :goto_4
    iget-object v3, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    goto :goto_2

    :cond_1
    move v0, v2

    .line 181
    goto :goto_3

    .line 184
    :cond_2
    check-cast v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->removeRef(Lcom/google/android/libraries/performance/primes/leak/GarbageReference;)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v4, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->leakListener:Lcom/google/android/libraries/performance/primes/leak/LeakListener;

    invoke-interface {v4, v0}, Lcom/google/android/libraries/performance/primes/leak/LeakListener;->onReleased(Ljava/lang/String;)V

    move v0, v3

    goto :goto_4

    .line 189
    :cond_3
    if-nez v3, :cond_4

    .line 190
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->leakListener:Lcom/google/android/libraries/performance/primes/leak/LeakListener;

    invoke-interface {v0, v2}, Lcom/google/android/libraries/performance/primes/leak/LeakListener;->onBatchComplete(Z)V

    :cond_4
    move v4, v3

    .line 192
    goto :goto_0

    .line 193
    :cond_5
    return-void

    :cond_6
    move-object v0, v3

    move v3, v4

    goto :goto_2
.end method

.method private removeRef(Lcom/google/android/libraries/performance/primes/leak/GarbageReference;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p1, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->prev:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    monitor-enter v1

    .line 249
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->removeSelf()Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 250
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :goto_0
    iget-object v0, p1, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->name:Ljava/lang/String;

    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->removeSelf()Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    goto :goto_0
.end method


# virtual methods
.method processOneRound()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->readAndProcessQueueTillDummyCollected()V

    .line 157
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->advanceListQueue()V

    .line 158
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->processOneRound()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->interrupt()V

    .line 125
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->hprofFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->interrupted()Z

    .line 127
    invoke-direct {p0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->dumpAndAnalyzeHeap()V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    monitor-enter v1

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    .line 133
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->dummyQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 135
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->garbageListQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 136
    return-void

    .line 133
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method scheduleHeapDumpAndAnalysis(Ljava/io/File;)Z
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 262
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->queueForDump:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    iget-object v0, v0, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->next:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    if-eqz v0, :cond_1

    .line 263
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->hprofFile:Ljava/io/File;

    .line 264
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->interrupt()V

    .line 265
    const-string v0, "LeakWatcherThread"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "LeakWatcherThread"

    const-string v1, "Schedule for heap dump"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    .line 270
    :cond_1
    const-string v0, "LeakWatcherThread"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    const-string v0, "LeakWatcherThread"

    const-string v1, "Skip heap dump. No leak suspects found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method watch(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 143
    invoke-static {p2}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Lcom/google/android/libraries/stitch/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "LeakWatcherThread"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const-string v1, "LeakWatcherThread"

    const-string v2, "Watching "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->referenceFactory:Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;

    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread$GarbageReferenceFactory;->newReference(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/performance/primes/leak/LeakWatcherThread;->incomingList:Lcom/google/android/libraries/performance/primes/leak/GarbageReference;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/performance/primes/leak/GarbageReference;->insertAfter(Lcom/google/android/libraries/performance/primes/leak/GarbageReference;)V

    .line 151
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    return-void

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
