.class public abstract Lcom/android/emailcommon/external/service/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;,
        Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;
    }
.end annotation


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field protected final mIntent:Landroid/content/Intent;

.field private mName:Ljava/lang/String;

.field private mStartTime:J

.field private final mTag:Ljava/lang/String;

.field protected mTask:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;

.field private mTaskCompleted:Z

.field private mTaskSet:Z

.field private mTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "unnamed"

    iput-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mName:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/external/service/ServiceProxy$ProxyConnection;-><init>(Lcom/android/emailcommon/external/service/ServiceProxy;Lcom/android/emailcommon/external/service/ServiceProxy$1;)V

    iput-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 64
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTimeout:I

    .line 66
    iput-boolean v2, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTaskSet:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTaskCompleted:Z

    .line 97
    iput-object p1, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mIntent:Landroid/content/Intent;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTag:Ljava/lang/String;

    .line 100
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTimeout:I

    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTimeout:I

    .line 103
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/emailcommon/external/service/ServiceProxy;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/emailcommon/external/service/ServiceProxy;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/emailcommon/external/service/ServiceProxy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/emailcommon/external/service/ServiceProxy;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTaskCompleted:Z

    return p1
.end method


# virtual methods
.method public abstract onConnected(Landroid/os/IBinder;)V
.end method

.method protected setTask(Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 180
    iget-boolean v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTaskSet:Z

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call setTask twice on the same ServiceProxy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iput-boolean v3, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTaskSet:Z

    .line 184
    iput-object p2, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mName:Ljava/lang/String;

    .line 185
    iput-object p1, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTask:Lcom/android/emailcommon/external/service/ServiceProxy$ProxyTask;

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mStartTime:J

    .line 190
    iget-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method protected waitForCompletion()V
    .locals 6

    .prologue
    .line 205
    invoke-static {}, Lcom/android/mail/utils/ThreadUtils;->throwExceptionIfUiThread()V

    .line 207
    iget-object v1, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 208
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :try_start_1
    iget-boolean v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTaskCompleted:Z

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    iget v2, p0, Lcom/android/emailcommon/external/service/ServiceProxy;->mTimeout:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 216
    :catch_0
    move-exception v0

    goto :goto_0
.end method
