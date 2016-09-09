.class public abstract Lcom/google/android/calendar/timely/ApiClientAsyncTask;
.super Landroid/os/AsyncTask;
.source "ApiClientAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/google/android/calendar/timely/ApiClientAsyncTask;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/ApiClientAsyncTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/drive/Drive;->API:Lcom/google/android/gms/common/api/Api;

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/drive/Drive;->SCOPE_FULL:Lcom/google/android/gms/common/api/Scope;

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 32
    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/ApiClientAsyncTask;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 36
    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 40
    const-string v1, "TAG"

    const-string v2, "Google API client connecting in background"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 42
    iget-object v2, p0, Lcom/google/android/calendar/timely/ApiClientAsyncTask;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v3, Lcom/google/android/calendar/timely/ApiClientAsyncTask$1;

    invoke-direct {v3, p0, v1}, Lcom/google/android/calendar/timely/ApiClientAsyncTask$1;-><init>(Lcom/google/android/calendar/timely/ApiClientAsyncTask;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 52
    iget-object v2, p0, Lcom/google/android/calendar/timely/ApiClientAsyncTask;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v3, Lcom/google/android/calendar/timely/ApiClientAsyncTask$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/calendar/timely/ApiClientAsyncTask$2;-><init>(Lcom/google/android/calendar/timely/ApiClientAsyncTask;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 58
    iget-object v2, p0, Lcom/google/android/calendar/timely/ApiClientAsyncTask;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 60
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-object v1, p0, Lcom/google/android/calendar/timely/ApiClientAsyncTask;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/calendar/timely/ApiClientAsyncTask;->doInBackgroundConnected([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/google/android/calendar/timely/ApiClientAsyncTask;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/calendar/timely/ApiClientAsyncTask;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    throw v0

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected varargs abstract doInBackgroundConnected([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected getGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/calendar/timely/ApiClientAsyncTask;->mClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method
