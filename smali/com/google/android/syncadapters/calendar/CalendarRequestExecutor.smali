.class public Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;
.super Ljava/lang/Object;
.source "CalendarRequestExecutor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mFutureResponses:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->mFutureResponses:Landroid/support/v4/util/SimpleArrayMap;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createExecutor()Ljava/util/concurrent/Executor;
    .locals 9

    .prologue
    const/16 v2, 0x8

    .line 206
    new-instance v8, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor$2;

    invoke-direct {v8, p0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor$2;-><init>(Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;)V

    .line 214
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 216
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 223
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 224
    return-object v1
.end method

.method private setFutureResponse(Lcom/google/api/services/calendar/CalendarRequest;Ljava/util/concurrent/FutureTask;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/services/calendar/CalendarRequest",
            "<TT;>;",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->getRequestPrefetchKey(Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/String;

    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->mFutureResponses:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, v2, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v3, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->TAG:Ljava/lang/String;

    const-string v4, "save(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return v0

    .line 160
    :catch_0
    move-exception v0

    .line 162
    sget-object v2, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->TAG:Ljava/lang/String;

    const-string v3, "Failed to store a future response for a request."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 163
    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/api/services/calendar/CalendarRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncAdapterThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->getAndRemoveFutureResponse(Lcom/google/api/services/calendar/CalendarRequest;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    .line 109
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 112
    instance-of v1, v0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    throw v0

    .line 115
    :cond_0
    sget-object v1, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->TAG:Ljava/lang/String;

    const-string v2, "Failed execution for prefetched request. Executing again."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->executeInternal(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 116
    :catch_1
    move-exception v0

    .line 117
    sget-object v1, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get response for prefetched request. Executing again."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method executeInternal(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/api/services/calendar/CalendarRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/SyncLog;->start(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Lcom/google/api/services/calendar/CalendarRequest;->execute()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 148
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    .line 146
    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/SyncLog;->stop(Ljava/lang/String;)V

    throw v0
.end method

.method public executeWithFlags(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/api/services/calendar/CalendarRequest",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    if-eqz p3, :cond_0

    .line 129
    invoke-static {p3}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->mapFromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_0

    .line 131
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lcom/google/api/services/calendar/CalendarRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->executeInternal(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getAndRemoveFutureResponse(Lcom/google/api/services/calendar/CalendarRequest;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/services/calendar/CalendarRequest",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 175
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->getRequestPrefetchKey(Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/String;

    move-result-object v1

    .line 177
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->mFutureResponses:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 178
    if-eqz v0, :cond_0

    .line 179
    sget-object v2, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->TAG:Ljava/lang/String;

    const-string v3, "load(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 184
    sget-object v1, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get a future response for a request."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getRequestPrefetchKey(Lcom/google/api/services/calendar/CalendarRequest;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/calendar/CalendarRequest",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/google/api/services/calendar/CalendarRequest;->buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prefetch(Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/api/services/calendar/CalendarRequest",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor$1;-><init>(Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;Ljava/lang/String;Lcom/google/api/services/calendar/CalendarRequest;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 88
    invoke-direct {p0, p2, v0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->setFutureResponse(Lcom/google/api/services/calendar/CalendarRequest;Ljava/util/concurrent/FutureTask;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->createExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    .line 94
    :cond_1
    sget-object v1, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->TAG:Ljava/lang/String;

    const-string v2, "prefetch(%s) @%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 95
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->mFutureResponses:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->TAG:Ljava/lang/String;

    const-string v1, "Not all prefetched requests were executed."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    move v1, v2

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->mFutureResponses:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 66
    sget-object v0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->TAG:Ljava/lang/String;

    const-string v3, "cancel(%s) @%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->mFutureResponses:Landroid/support/v4/util/SimpleArrayMap;

    .line 67
    invoke-virtual {v5, v1}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 66
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->mFutureResponses:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarRequestExecutor;->mFutureResponses:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V

    .line 71
    return-void
.end method
