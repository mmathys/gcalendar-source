.class public Lcom/android/calendar/cache/VolleyQueueHolder;
.super Ljava/lang/Object;
.source "VolleyQueueHolder.java"


# static fields
.field private static mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/cache/VolleyQueueHolder;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method private static createRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v2, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v2}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 49
    new-instance v2, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const/high16 v3, 0x1400000

    invoke-direct {v2, v0, v3}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    .line 51
    new-instance v0, Lcom/android/volley/RequestQueue;

    invoke-direct {v0, v2, v1}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    return-object v0
.end method

.method public static getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/android/calendar/cache/VolleyQueueHolder;->mRequestQueue:Lcom/android/volley/RequestQueue;

    const-string v1, "VolleyQueueHolder#initialize(...) must be called first"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/calendar/cache/VolleyQueueHolder;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/calendar/cache/VolleyQueueHolder;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_0

    .line 27
    invoke-static {p0}, Lcom/android/calendar/cache/VolleyQueueHolder;->createRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/cache/VolleyQueueHolder;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 28
    sget-object v0, Lcom/android/calendar/cache/VolleyQueueHolder;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 30
    :cond_0
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/calendar/cache/VolleyQueueHolder;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
