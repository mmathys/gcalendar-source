.class Lio/grpc/internal/DelayedStream$DelayedStreamListener;
.super Ljava/lang/Object;
.source "DelayedStream.java"

# interfaces
.implements Lio/grpc/internal/ClientStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DelayedStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedStreamListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile passThrough:Z

.field private pendingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final realListener:Lio/grpc/internal/ClientStreamListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 329
    const-class v0, Lio/grpc/internal/DelayedStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lio/grpc/internal/ClientStreamListener;)V
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->pendingCallbacks:Ljava/util/List;

    .line 336
    iput-object p1, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->realListener:Lio/grpc/internal/ClientStreamListener;

    .line 337
    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/DelayedStream$DelayedStreamListener;)Lio/grpc/internal/ClientStreamListener;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->realListener:Lio/grpc/internal/ClientStreamListener;

    return-object v0
.end method

.method private delayOrExecute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 340
    monitor-enter p0

    .line 341
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->passThrough:Z

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->pendingCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    monitor-exit p0

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public closed(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$4;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/DelayedStream$DelayedStreamListener$4;-><init>(Lio/grpc/internal/DelayedStream$DelayedStreamListener;Lio/grpc/Status;Lio/grpc/Metadata;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 395
    return-void
.end method

.method public drainPendingCallbacks()V
    .locals 3

    .prologue
    .line 398
    sget-boolean v0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->passThrough:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 399
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    :goto_0
    monitor-enter p0

    .line 402
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->pendingCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->pendingCallbacks:Ljava/util/List;

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->passThrough:Z

    .line 405
    monitor-exit p0

    .line 421
    return-void

    .line 411
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->pendingCallbacks:Ljava/util/List;

    .line 412
    iput-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->pendingCallbacks:Ljava/util/List;

    .line 413
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 417
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 413
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 419
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0
.end method

.method public headersRead(Lio/grpc/Metadata;)V
    .locals 1

    .prologue
    .line 379
    new-instance v0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$3;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$DelayedStreamListener$3;-><init>(Lio/grpc/internal/DelayedStream$DelayedStreamListener;Lio/grpc/Metadata;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method public messageRead(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->passThrough:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->realListener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStreamListener;->messageRead(Ljava/io/InputStream;)V

    .line 361
    :goto_0
    return-void

    .line 354
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$DelayedStreamListener$1;-><init>(Lio/grpc/internal/DelayedStream$DelayedStreamListener;Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->delayOrExecute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onReady()V
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->passThrough:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->realListener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v0}, Lio/grpc/internal/ClientStreamListener;->onReady()V

    .line 375
    :goto_0
    return-void

    .line 368
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedStream$DelayedStreamListener$2;

    invoke-direct {v0, p0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener$2;-><init>(Lio/grpc/internal/DelayedStream$DelayedStreamListener;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->delayOrExecute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
