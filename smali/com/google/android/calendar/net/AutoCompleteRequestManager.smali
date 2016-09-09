.class public abstract Lcom/google/android/calendar/net/AutoCompleteRequestManager;
.super Ljava/lang/Object;
.source "AutoCompleteRequestManager.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;,
        Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;,
        Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestType:",
        "Ljava/lang/Object;",
        "ResponseType:",
        "Ljava/lang/Object;",
        "LoaderType:Lcom/google/android/calendar/net/AsyncRequestLoader",
        "<TRequestType;TResponseType;>;>",
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<TResponseType;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCachedResponses:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<TRequestType;TResponseType;>;"
        }
    .end annotation
.end field

.field private final mCurrentRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mDelegate:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate",
            "<TResponseType;>;"
        }
    .end annotation
.end field

.field private final mNextRequestLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mRequestDelayHandler:Landroid/os/Handler;

.field private mRequestExecutor:Lcom/google/android/calendar/net/RequestExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/net/RequestExecutor",
            "<TRequestType;TResponseType;>;"
        }
    .end annotation
.end field

.field private mRequestLoaders:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<T",
            "LoaderType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mCachedResponses:Landroid/util/LruCache;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mCurrentRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mNextRequestLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestDelayHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/net/AutoCompleteRequestManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mCurrentRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/net/AutoCompleteRequestManager;)Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mCachedResponses:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/net/AutoCompleteRequestManager;Ljava/lang/Object;Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->fireOnAutoCompleteResponse(Ljava/lang/Object;Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/calendar/net/AutoCompleteRequestManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestDelayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private fireOnAutoCompleteResponse(Ljava/lang/Object;Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;",
            "Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;",
            "TResponseType;)V"
        }
    .end annotation

    .prologue
    .line 296
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 297
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mCachedResponses:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mDelegate:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mDelegate:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;

    invoke-interface {v0, p2, p3}, Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;->onAutoCompleteResponse(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;)V

    .line 302
    :cond_1
    return-void
.end method

.method private fireOnQueriesInProgressChange(Z)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mDelegate:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mDelegate:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;->onQueriesInProgressChange(Z)V

    .line 292
    :cond_0
    return-void
.end method

.method private fireOnResponseStatus(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Lcom/google/android/calendar/net/ResponseStatus;)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mDelegate:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mDelegate:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;

    invoke-interface {v0, p1, p2}, Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;->onResponseStatus(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Lcom/google/android/calendar/net/ResponseStatus;)V

    .line 308
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelRequests()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mCurrentRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 118
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/net/AsyncRequestLoader;

    invoke-virtual {v0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->cancelLoad()Z

    goto :goto_0

    .line 125
    :cond_0
    if-eqz v1, :cond_1

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->fireOnQueriesInProgressChange(Z)V

    .line 128
    :cond_1
    return-void
.end method

.method protected abstract createRequestLoader(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;)Lcom/google/android/calendar/net/AsyncRequestLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;",
            "TRequestType;)T",
            "LoaderType;"
        }
    .end annotation
.end method

.method protected doRequest(Ljava/lang/Object;)Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestType;)",
            "Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;

    iget-object v1, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mCurrentRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 139
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;-><init>(I)V

    .line 144
    iget-object v1, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestDelayHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/calendar/net/AutoCompleteRequestManager$1;-><init>(Lcom/google/android/calendar/net/AutoCompleteRequestManager;Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-object v0
.end method

.method protected executeSuggestionQuery(Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/net/AutoCompleteRequestManager$QueueIdRequestToken;",
            "TRequestType;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 197
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestExecutor:Lcom/google/android/calendar/net/RequestExecutor;

    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->createRequestLoader(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;)Lcom/google/android/calendar/net/AsyncRequestLoader;

    move-result-object v1

    .line 206
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mNextRequestLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {v1, v0, p0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 209
    :goto_1
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    .line 210
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/net/AsyncRequestLoader;

    .line 211
    invoke-virtual {v0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->cancelLoad()Z

    .line 212
    sget-object v2, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->TAG:Ljava/lang/String;

    const-string v3, "Cancelling oldest request #%d"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 214
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/calendar/net/AsyncRequestLoader;->startLoading()V

    .line 216
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 217
    invoke-direct {p0, v6}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->fireOnQueriesInProgressChange(Z)V

    goto :goto_0
.end method

.method public getRequestExecutor()Lcom/google/android/calendar/net/RequestExecutor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/calendar/net/RequestExecutor",
            "<TRequestType;TResponseType;>;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestExecutor:Lcom/google/android/calendar/net/RequestExecutor;

    return-object v0
.end method

.method protected abstract getResponseStatus(Ljava/lang/Object;)Lcom/google/android/calendar/net/ResponseStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResponseType;)",
            "Lcom/google/android/calendar/net/ResponseStatus;"
        }
    .end annotation
.end method

.method public isRequestExecutorInitialized()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestExecutor:Lcom/google/android/calendar/net/RequestExecutor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isValidResponse(Lcom/google/android/calendar/net/AsyncRequestLoader;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "LoaderType;",
            "TResponseType;)Z"
        }
    .end annotation
.end method

.method public onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<TResponseType;>;TResponseType;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    :try_start_0
    check-cast p1, Lcom/google/android/calendar/net/AsyncRequestLoader;

    .line 225
    invoke-virtual {p1}, Lcom/google/android/calendar/net/AsyncRequestLoader;->getId()I

    move-result v2

    .line 226
    invoke-virtual {p1}, Lcom/google/android/calendar/net/AsyncRequestLoader;->maybeIsLoadInBackgroundCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 227
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0, v1}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->fireOnQueriesInProgressChange(Z)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->getResponseStatus(Ljava/lang/Object;)Lcom/google/android/calendar/net/ResponseStatus;

    move-result-object v3

    .line 232
    sget-object v4, Lcom/google/android/calendar/net/ResponseStatus;->SUCCESS:Lcom/google/android/calendar/net/ResponseStatus;

    if-eq v3, v4, :cond_6

    .line 235
    iget-object v4, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 237
    invoke-virtual {p1}, Lcom/google/android/calendar/net/AsyncRequestLoader;->getLoadCount()I

    move-result v4

    if-ne v4, v0, :cond_4

    .line 239
    sget-object v0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->TAG:Ljava/lang/String;

    const-string v3, "Retry loading request #%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 240
    invoke-virtual {p1}, Lcom/google/android/calendar/net/AsyncRequestLoader;->reset()V

    .line 241
    invoke-virtual {p1}, Lcom/google/android/calendar/net/AsyncRequestLoader;->startLoading()V

    move v0, v1

    .line 249
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0, v1}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->fireOnQueriesInProgressChange(Z)V

    goto :goto_0

    .line 246
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/calendar/net/AsyncRequestLoader;->getRequestToken()Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->fireOnResponseStatus(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Lcom/google/android/calendar/net/ResponseStatus;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 282
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 283
    invoke-direct {p0, v1}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->fireOnQueriesInProgressChange(Z)V

    :cond_5
    throw v0

    .line 257
    :cond_6
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 258
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/net/AsyncRequestLoader;

    .line 259
    invoke-virtual {v0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->getId()I

    move-result v3

    if-ge v3, v2, :cond_7

    .line 261
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/net/AsyncRequestLoader;

    .line 262
    invoke-virtual {v0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->cancelLoad()Z

    .line 263
    sget-object v3, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->TAG:Ljava/lang/String;

    const-string v4, "Cancelling obsolete request #%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 264
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->getId()I

    move-result v3

    if-ne v3, v2, :cond_9

    .line 265
    sget-object v3, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->TAG:Ljava/lang/String;

    const-string v4, "Showing response %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 266
    iget-object v2, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 268
    invoke-virtual {v0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->getRequestToken()Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;

    move-result-object v2

    sget-object v3, Lcom/google/android/calendar/net/ResponseStatus;->SUCCESS:Lcom/google/android/calendar/net/ResponseStatus;

    invoke-direct {p0, v2, v3}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->fireOnResponseStatus(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Lcom/google/android/calendar/net/ResponseStatus;)V

    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->isValidResponse(Lcom/google/android/calendar/net/AsyncRequestLoader;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 272
    invoke-virtual {v0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->getRequestInput()Ljava/lang/Object;

    move-result-object v2

    .line 273
    invoke-virtual {v0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->getRequestToken()Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;

    move-result-object v0

    .line 272
    invoke-direct {p0, v2, v0, p2}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->fireOnAutoCompleteResponse(Ljava/lang/Object;Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestLoaders:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-direct {p0, v1}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->fireOnQueriesInProgressChange(Z)V

    goto/16 :goto_0

    .line 277
    :cond_9
    :try_start_4
    sget-object v0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->TAG:Ljava/lang/String;

    const-string v3, "Response #%d is obsolete"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public setDelegate(Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mDelegate:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestManagerDelegate;

    .line 111
    return-void
.end method

.method public setRequestExecutor(Lcom/google/android/calendar/net/RequestExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/net/RequestExecutor",
            "<TRequestType;TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestExecutor:Lcom/google/android/calendar/net/RequestExecutor;

    if-ne p1, v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->cancelRequests()V

    .line 87
    iput-object p1, p0, Lcom/google/android/calendar/net/AutoCompleteRequestManager;->mRequestExecutor:Lcom/google/android/calendar/net/RequestExecutor;

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Lcom/google/android/calendar/net/RequestExecutor;->initialize()V

    goto :goto_0
.end method
