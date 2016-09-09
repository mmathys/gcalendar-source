.class public Lcom/android/bitmap/UnrefedBitmapCache;
.super Lcom/android/bitmap/UnrefedPooledCache;
.source "UnrefedBitmapCache.java"

# interfaces
.implements Lcom/android/bitmap/BitmapCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/bitmap/UnrefedPooledCache",
        "<",
        "Lcom/android/bitmap/RequestKey;",
        "Lcom/android/bitmap/ReusableBitmap;",
        ">;",
        "Lcom/android/bitmap/BitmapCache;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlocking:Z

.field private final mLock:Ljava/lang/Object;

.field private mNullRequests:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lcom/android/bitmap/RequestKey;",
            "Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/bitmap/UnrefedBitmapCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bitmap/UnrefedBitmapCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/bitmap/UnrefedPooledCache;-><init>(IF)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mBlocking:Z

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mLock:Ljava/lang/Object;

    .line 49
    if-lez p3, :cond_0

    .line 50
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mNullRequests:Landroid/util/LruCache;

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;Z)Lcom/android/bitmap/Poolable;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/android/bitmap/RequestKey;

    invoke-virtual {p0, p1, p2}, Lcom/android/bitmap/UnrefedBitmapCache;->get(Lcom/android/bitmap/RequestKey;Z)Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/android/bitmap/RequestKey;Z)Lcom/android/bitmap/ReusableBitmap;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mNullRequests:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mNullRequests:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;->getInstance()Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/bitmap/UnrefedPooledCache;->get(Ljava/lang/Object;Z)Lcom/android/bitmap/Poolable;

    move-result-object v0

    check-cast v0, Lcom/android/bitmap/ReusableBitmap;

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/android/bitmap/RequestKey;

    invoke-virtual {p0, p1, p2}, Lcom/android/bitmap/UnrefedBitmapCache;->get(Lcom/android/bitmap/RequestKey;Z)Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic offer(Lcom/android/bitmap/Poolable;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {p0, p1}, Lcom/android/bitmap/UnrefedBitmapCache;->offer(Lcom/android/bitmap/ReusableBitmap;)V

    return-void
.end method

.method public offer(Lcom/android/bitmap/ReusableBitmap;)V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/bitmap/UnrefedPooledCache;->offer(Lcom/android/bitmap/Poolable;)V

    .line 115
    iget-object v0, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 116
    monitor-exit v1

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {p0, p1}, Lcom/android/bitmap/UnrefedBitmapCache;->offer(Lcom/android/bitmap/ReusableBitmap;)V

    return-void
.end method

.method public bridge synthetic poll()Lcom/android/bitmap/Poolable;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/bitmap/UnrefedBitmapCache;->poll()Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lcom/android/bitmap/ReusableBitmap;
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :goto_0
    :try_start_0
    invoke-super {p0}, Lcom/android/bitmap/UnrefedPooledCache;->poll()Lcom/android/bitmap/Poolable;

    move-result-object v0

    check-cast v0, Lcom/android/bitmap/ReusableBitmap;

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mBlocking:Z

    if-eqz v2, :cond_0

    .line 91
    const-string v0, "sleep"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/bitmap/UnrefedBitmapCache;->poll()Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Lcom/android/bitmap/Poolable;)Lcom/android/bitmap/Poolable;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/android/bitmap/RequestKey;

    check-cast p2, Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {p0, p1, p2}, Lcom/android/bitmap/UnrefedBitmapCache;->put(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)Lcom/android/bitmap/ReusableBitmap;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mNullRequests:Landroid/util/LruCache;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;->getInstance()Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mNullRequests:Landroid/util/LruCache;

    invoke-static {}, Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;->getInstance()Lcom/android/bitmap/ReusableBitmap$NullReusableBitmap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    .line 137
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/bitmap/UnrefedPooledCache;->put(Ljava/lang/Object;Lcom/android/bitmap/Poolable;)Lcom/android/bitmap/Poolable;

    move-result-object v0

    check-cast v0, Lcom/android/bitmap/ReusableBitmap;

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/android/bitmap/RequestKey;

    check-cast p2, Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {p0, p1, p2}, Lcom/android/bitmap/UnrefedBitmapCache;->put(Lcom/android/bitmap/RequestKey;Lcom/android/bitmap/ReusableBitmap;)Lcom/android/bitmap/ReusableBitmap;

    move-result-object v0

    return-object v0
.end method

.method public setBlocking(Z)V
    .locals 2

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    iput-boolean p1, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mBlocking:Z

    .line 64
    iget-boolean v0, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mBlocking:Z

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/bitmap/UnrefedBitmapCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 68
    :cond_0
    monitor-exit v1

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic sizeOf(Lcom/android/bitmap/Poolable;)I
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/android/bitmap/ReusableBitmap;

    invoke-virtual {p0, p1}, Lcom/android/bitmap/UnrefedBitmapCache;->sizeOf(Lcom/android/bitmap/ReusableBitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Lcom/android/bitmap/ReusableBitmap;)I
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/android/bitmap/ReusableBitmap;->getByteCount()I

    move-result v0

    return v0
.end method
