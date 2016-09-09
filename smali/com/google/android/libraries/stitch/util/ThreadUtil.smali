.class public final Lcom/google/android/libraries/stitch/util/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# static fields
.field private static volatile sMainThread:Ljava/lang/Thread;


# direct methods
.method public static ensureBackgroundThread()V
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/google/android/libraries/stitch/util/ThreadUtil;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must be called on a background thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    return-void
.end method

.method public static isMainThread()Z
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/libraries/stitch/util/ThreadUtil;->sMainThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 23
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/stitch/util/ThreadUtil;->sMainThread:Ljava/lang/Thread;

    .line 25
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/stitch/util/ThreadUtil;->sMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
