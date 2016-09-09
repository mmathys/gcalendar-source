.class public Lcom/google/android/apiary/EntityReader;
.super Ljava/lang/Object;
.source "EntityReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apiary/EntityReader$EntityItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mEntityEndMarker:Lcom/google/android/apiary/EntityReader$EntityItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apiary/EntityReader$EntityItem",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mEntityQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/apiary/EntityReader$EntityItem",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mEntryEndMarker:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mEventQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile mForcedClosed:Z

.field private final mHandler:Lcom/google/android/apiary/ItemAndEntityHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apiary/ItemAndEntityHandler",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mIdQueryColumn:Ljava/lang/String;

.field private final mLogTag:Ljava/lang/String;

.field private final mNumRemoteExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mSelection:Ljava/lang/String;

.field private volatile mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/apiary/EntityReader$EntityItem;Lcom/google/android/apiary/ItemAndEntityHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue",
            "<TT;>;TT;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/apiary/EntityReader$EntityItem",
            "<TT;>;>;",
            "Lcom/google/android/apiary/EntityReader$EntityItem",
            "<TT;>;",
            "Lcom/google/android/apiary/ItemAndEntityHandler",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apiary/EntityReader;->mNumRemoteExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    iput-object p1, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/google/android/apiary/EntityReader;->mEventQueue:Ljava/util/concurrent/BlockingQueue;

    .line 67
    iput-object p4, p0, Lcom/google/android/apiary/EntityReader;->mEntityQueue:Ljava/util/concurrent/BlockingQueue;

    .line 68
    iput-object p3, p0, Lcom/google/android/apiary/EntityReader;->mEntryEndMarker:Ljava/lang/Object;

    .line 69
    iput-object p5, p0, Lcom/google/android/apiary/EntityReader;->mEntityEndMarker:Lcom/google/android/apiary/EntityReader$EntityItem;

    .line 70
    iput-object p6, p0, Lcom/google/android/apiary/EntityReader;->mHandler:Lcom/google/android/apiary/ItemAndEntityHandler;

    .line 71
    iput-object p8, p0, Lcom/google/android/apiary/EntityReader;->mSelection:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/google/android/apiary/EntityReader;->mForcedClosed:Z

    .line 73
    iput-object p7, p0, Lcom/google/android/apiary/EntityReader;->mIdQueryColumn:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private readBatch(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apiary/EntityReader;->mIdQueryColumn:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 142
    const-string v0, ""

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v0, ","

    .line 146
    iget-object v4, p0, Lcom/google/android/apiary/EntityReader;->mHandler:Lcom/google/android/apiary/ItemAndEntityHandler;

    invoke-interface {v4, v3}, Lcom/google/android/apiary/ItemAndEntityHandler;->itemToSourceId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_0
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mSelection:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 150
    const-string v0, " AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apiary/EntityReader;->mSelection:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2b

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "querying batch of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " entities for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mHandler:Lcom/google/android/apiary/ItemAndEntityHandler;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-interface {v0, v1, v3, v4}, Lcom/google/android/apiary/ItemAndEntityHandler;->newEntityIterator(Ljava/lang/String;[Ljava/lang/String;I)Landroid/content/EntityIterator;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 159
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apiary/EntityReader;->mForcedClosed:Z

    if-nez v0, :cond_4

    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    iget-boolean v0, p0, Lcom/google/android/apiary/EntityReader;->mForcedClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 172
    :try_start_2
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 179
    :goto_2
    return-void

    .line 163
    :cond_3
    :try_start_3
    invoke-interface {v1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 164
    invoke-virtual {v0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apiary/EntityReader;->mIdQueryColumn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 172
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_4 .. :try_end_4} :catch_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mNumRemoteExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_2

    .line 167
    :cond_4
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 168
    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mHandler:Lcom/google/android/apiary/ItemAndEntityHandler;

    invoke-interface {v0, v4}, Lcom/google/android/apiary/ItemAndEntityHandler;->itemToSourceId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 169
    iget-object v5, p0, Lcom/google/android/apiary/EntityReader;->mEntityQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v6, Lcom/google/android/apiary/EntityReader$EntityItem;

    invoke-direct {v6, v4, v0}, Lcom/google/android/apiary/EntityReader$EntityItem;-><init>(Ljava/lang/Object;Landroid/content/Entity;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 172
    :cond_5
    :try_start_6
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 176
    :catch_1
    move-exception v0

    .line 177
    iget-object v1, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    const-string v2, "Error while reading batch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private readEntities()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 100
    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    const-string v1, "readEntities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 104
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/apiary/EntityReader;->mForcedClosed:Z

    if-nez v1, :cond_3

    .line 105
    iget-object v1, p0, Lcom/google/android/apiary/EntityReader;->mEventQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/google/android/apiary/EntityReader;->mEntryEndMarker:Ljava/lang/Object;

    if-ne v1, v2, :cond_6

    .line 107
    iget-object v1, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    const-string v2, "read idAndEntry end marker from queue"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 111
    invoke-direct {p0, v0}, Lcom/google/android/apiary/EntityReader;->readBatch(Ljava/util/List;)V

    .line 112
    iget-boolean v1, p0, Lcom/google/android/apiary/EntityReader;->mForcedClosed:Z

    if-eqz v1, :cond_4

    .line 130
    :cond_3
    :goto_1
    return-void

    .line 115
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mEntityQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/google/android/apiary/EntityReader;->mEntityEndMarker:Lcom/google/android/apiary/EntityReader$EntityItem;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    .line 120
    :cond_6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    .line 124
    invoke-direct {p0, v0}, Lcom/google/android/apiary/EntityReader;->readBatch(Ljava/util/List;)V

    .line 125
    iget-boolean v1, p0, Lcom/google/android/apiary/EntityReader;->mForcedClosed:Z

    if-nez v1, :cond_3

    .line 128
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mThread:Ljava/lang/Thread;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apiary/EntityReader;->mForcedClosed:Z

    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 97
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x31

    const/4 v2, 0x2

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apiary/EntityReader;->mThread:Ljava/lang/Thread;

    .line 78
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apiary/EntityReader;->readEntities()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iput-object v1, p0, Lcom/google/android/apiary/EntityReader;->mThread:Ljava/lang/Thread;

    .line 85
    iget-boolean v0, p0, Lcom/google/android/apiary/EntityReader;->mForcedClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/apiary/EntityReader;->mForcedClosed:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "EntityReader thread ended: mForcedClosed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 84
    iput-object v1, p0, Lcom/google/android/apiary/EntityReader;->mThread:Ljava/lang/Thread;

    .line 85
    iget-boolean v0, p0, Lcom/google/android/apiary/EntityReader;->mForcedClosed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/apiary/EntityReader;->mForcedClosed:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "EntityReader thread ended: mForcedClosed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/apiary/EntityReader;->mThread:Ljava/lang/Thread;

    .line 85
    iget-boolean v1, p0, Lcom/google/android/apiary/EntityReader;->mForcedClosed:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/google/android/apiary/EntityReader;->mLogTag:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/apiary/EntityReader;->mForcedClosed:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "EntityReader thread ended: mForcedClosed is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v0
.end method
