.class final Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;
.super Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;
.source "ReentrantLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonfairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x658832e7537bbf0bL
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method public lock()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 183
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 186
    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    .line 187
    const/4 v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->holds_:I

    .line 188
    monitor-exit p0

    .line 215
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-ne v2, v1, :cond_1

    .line 191
    invoke-virtual {p0}, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->incHolds()V

    .line 192
    monitor-exit p0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 195
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 199
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 207
    :goto_1
    :try_start_3
    iget-object v3, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-nez v3, :cond_2

    .line 208
    iput-object v2, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    .line 209
    const/4 v0, 0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->holds_:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 215
    if-eqz v1, :cond_3

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    move v1, v0

    .line 202
    goto :goto_1

    .line 215
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized unlock()V
    .locals 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    const-string v1, "Not owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalMonitorStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 298
    :cond_0
    :try_start_1
    iget v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->holds_:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->holds_:I

    if-nez v0, :cond_1

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/locks/ReentrantLock$NonfairSync;->owner_:Ljava/lang/Thread;

    .line 300
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :cond_1
    monitor-exit p0

    return-void
.end method
