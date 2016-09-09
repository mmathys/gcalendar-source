.class public abstract Lcom/google/android/calendar/net/AsyncRequestLoader;
.super Landroid/content/AsyncTaskLoader;
.source "AsyncRequestLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestType:",
        "Ljava/lang/Object;",
        "ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncTaskLoader",
        "<TResponseType;>;"
    }
.end annotation


# static fields
.field public static final EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLoadCount:I

.field private final mLogTag:Ljava/lang/String;

.field private final mRequestExecutor:Lcom/google/android/calendar/net/RequestExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/net/RequestExecutor",
            "<TRequestType;TResponseType;>;"
        }
    .end annotation
.end field

.field private final mRequestInput:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestType;"
        }
    .end annotation
.end field

.field private final mRequestToken:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v2, 0x8

    .line 30
    const-class v0, Lcom/google/android/calendar/net/AsyncRequestLoader;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/net/AsyncRequestLoader;->TAG:Ljava/lang/String;

    .line 52
    new-instance v8, Lcom/google/android/calendar/net/AsyncRequestLoader$1;

    invoke-direct {v8}, Lcom/google/android/calendar/net/AsyncRequestLoader$1;-><init>()V

    .line 59
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 62
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 65
    sput-object v1, Lcom/google/android/calendar/net/AsyncRequestLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/calendar/net/RequestExecutor;Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/calendar/net/RequestExecutor",
            "<TRequestType;TResponseType;>;",
            "Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;",
            "TRequestType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 39
    iput v2, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mLoadCount:I

    .line 81
    :try_start_0
    const-class v0, Landroid/content/AsyncTaskLoader;

    const-string v1, "mExecutor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 83
    sget-object v1, Lcom/google/android/calendar/net/AsyncRequestLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :goto_0
    iput-object p2, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mRequestExecutor:Lcom/google/android/calendar/net/RequestExecutor;

    .line 91
    iput-object p3, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mRequestToken:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;

    .line 92
    iput-object p4, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mRequestInput:Ljava/lang/Object;

    .line 93
    iput-object p5, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mLogTag:Ljava/lang/String;

    .line 94
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    sget-object v0, Lcom/google/android/calendar/net/AsyncRequestLoader;->TAG:Ljava/lang/String;

    const-string v1, "Failed to swap the executor"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 87
    :catch_1
    move-exception v0

    .line 88
    sget-object v0, Lcom/google/android/calendar/net/AsyncRequestLoader;->TAG:Ljava/lang/String;

    const-string v1, "Failed to swap the executor"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private logResponseException(JILjava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mLogTag:Ljava/lang/String;

    const-string v1, "Request #%d failed (%dms)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 182
    invoke-static {v0, p4, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 184
    return-void
.end method


# virtual methods
.method protected abstract createErrorResponse(Lcom/google/api/client/http/HttpResponseException;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/HttpResponseException;",
            ")TResponseType;"
        }
    .end annotation
.end method

.method protected abstract createTimeoutResponse()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResponseType;"
        }
    .end annotation
.end method

.method public getLoadCount()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mLoadCount:I

    return v0
.end method

.method public getRequestInput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequestType;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mRequestInput:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestToken()Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mRequestToken:Lcom/google/android/calendar/net/AutoCompleteRequestManager$RequestToken;

    return-object v0
.end method

.method public loadInBackground()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResponseType;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 118
    invoke-virtual {p0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->getId()I

    move-result v4

    .line 121
    :try_start_0
    iget v1, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mLoadCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mLoadCount:I

    .line 126
    iget-object v1, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mRequestExecutor:Lcom/google/android/calendar/net/RequestExecutor;

    iget-object v5, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mRequestInput:Ljava/lang/Object;

    invoke-interface {v1, v5}, Lcom/google/android/calendar/net/RequestExecutor;->executeRequest(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    invoke-virtual {p0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->maybeIsLoadInBackgroundCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/calendar/net/AsyncRequestLoader;->mLogTag:Ljava/lang/String;

    const-string v1, "Request #%d timed out (%dms)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v4

    .line 136
    invoke-static {v0, v1, v5}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    invoke-virtual {p0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->createTimeoutResponse()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 139
    :catch_1
    move-exception v1

    .line 140
    invoke-virtual {p0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->maybeIsLoadInBackgroundCanceled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 143
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/google/android/calendar/net/AsyncRequestLoader;->logResponseException(JILjava/lang/Throwable;)V

    .line 144
    invoke-virtual {p0, v1}, Lcom/google/android/calendar/net/AsyncRequestLoader;->createErrorResponse(Lcom/google/api/client/http/HttpResponseException;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 145
    :catch_2
    move-exception v1

    .line 146
    invoke-virtual {p0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->maybeIsLoadInBackgroundCanceled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 149
    invoke-direct {p0, v2, v3, v4, v1}, Lcom/google/android/calendar/net/AsyncRequestLoader;->logResponseException(JILjava/lang/Throwable;)V

    goto :goto_0
.end method

.method public maybeIsLoadInBackgroundCanceled()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    return v0
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->forceLoad()V

    .line 165
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/calendar/net/AsyncRequestLoader;->cancelLoad()Z

    .line 173
    return-void
.end method
