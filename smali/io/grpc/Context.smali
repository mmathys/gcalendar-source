.class public Lio/grpc/Context;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Context$ParentListener;,
        Lio/grpc/Context$ExecutableListener;,
        Lio/grpc/Context$Key;,
        Lio/grpc/Context$CancellationListener;,
        Lio/grpc/Context$CancellableContext;
    }
.end annotation


# static fields
.field private static final DEADLINE_KEY:Lio/grpc/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Context$Key",
            "<",
            "Lio/grpc/Deadline;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ENTRIES:[[Ljava/lang/Object;

.field public static final ROOT:Lio/grpc/Context;

.field private static final localContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lio/grpc/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final canBeCancelled:Z

.field private final cascadesCancellation:Z

.field private final keyValueEntries:[[Ljava/lang/Object;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lio/grpc/Context$ExecutableListener;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lio/grpc/Context;

.field private parentListener:Lio/grpc/Context$CancellationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    const-class v0, Lio/grpc/Context;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    sput-object v0, Lio/grpc/Context;->EMPTY_ENTRIES:[[Ljava/lang/Object;

    .line 115
    new-instance v0, Lio/grpc/Context$Key;

    const-string v1, "deadline"

    invoke-direct {v0, v1}, Lio/grpc/Context$Key;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/Context;->DEADLINE_KEY:Lio/grpc/Context$Key;

    .line 121
    new-instance v0, Lio/grpc/Context;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;)V

    sput-object v0, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    .line 126
    new-instance v0, Lio/grpc/Context$1;

    invoke-direct {v0}, Lio/grpc/Context$1;-><init>()V

    sput-object v0, Lio/grpc/Context;->localContext:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Lio/grpc/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lio/grpc/Context$ParentListener;

    invoke-direct {v0, p0, v5}, Lio/grpc/Context$ParentListener;-><init>(Lio/grpc/Context;Lio/grpc/Context$1;)V

    iput-object v0, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    .line 176
    iput-object p1, p0, Lio/grpc/Context;->parent:Lio/grpc/Context;

    .line 178
    new-array v0, v4, [[Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lio/grpc/Context;->DEADLINE_KEY:Lio/grpc/Context$Key;

    aput-object v2, v1, v3

    aput-object v5, v1, v4

    aput-object v1, v0, v3

    iput-object v0, p0, Lio/grpc/Context;->keyValueEntries:[[Ljava/lang/Object;

    .line 179
    iput-boolean v3, p0, Lio/grpc/Context;->cascadesCancellation:Z

    .line 180
    iput-boolean v3, p0, Lio/grpc/Context;->canBeCancelled:Z

    .line 181
    return-void
.end method

.method static synthetic access$1000()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$1100(Lio/grpc/Context;Lio/grpc/Context$Key;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lio/grpc/Context;->lookup(Lio/grpc/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static current()Lio/grpc/Context;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lio/grpc/Context;->localContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Context;

    .line 159
    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    .line 162
    :cond_0
    return-object v0
.end method

.method private lookup(Lio/grpc/Context$Key;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Context$Key",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 613
    move v0, v1

    :goto_0
    iget-object v2, p0, Lio/grpc/Context;->keyValueEntries:[[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 614
    iget-object v2, p0, Lio/grpc/Context;->keyValueEntries:[[Ljava/lang/Object;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    iget-object v1, p0, Lio/grpc/Context;->keyValueEntries:[[Ljava/lang/Object;

    aget-object v0, v1, v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 621
    :goto_1
    return-object v0

    .line 613
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p0, Lio/grpc/Context;->parent:Lio/grpc/Context;

    if-nez v0, :cond_2

    .line 619
    const/4 v0, 0x0

    goto :goto_1

    .line 621
    :cond_2
    iget-object v0, p0, Lio/grpc/Context;->parent:Lio/grpc/Context;

    invoke-direct {v0, p1}, Lio/grpc/Context;->lookup(Lio/grpc/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V
    .locals 3

    .prologue
    .line 419
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-boolean v0, p0, Lio/grpc/Context;->canBeCancelled:Z

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Lio/grpc/Context$ExecutableListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lio/grpc/Context$ExecutableListener;-><init>(Lio/grpc/Context;Ljava/util/concurrent/Executor;Lio/grpc/Context$CancellationListener;Lio/grpc/Context$1;)V

    .line 424
    monitor-enter p0

    .line 425
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/Context;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    # invokes: Lio/grpc/Context$ExecutableListener;->deliver()V
    invoke-static {v0}, Lio/grpc/Context$ExecutableListener;->access$400(Lio/grpc/Context$ExecutableListener;)V

    .line 438
    :goto_0
    monitor-exit p0

    .line 440
    :cond_0
    return-void

    .line 428
    :cond_1
    iget-object v1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 431
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    .line 432
    iget-object v1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v0, p0, Lio/grpc/Context;->parent:Lio/grpc/Context;

    iget-object v1, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Context;->addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 435
    :cond_2
    :try_start_1
    iget-object v1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public attach()Lio/grpc/Context;
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    .line 342
    sget-object v1, Lio/grpc/Context;->localContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 343
    return-object v0
.end method

.method public cancellationCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lio/grpc/Context;->parent:Lio/grpc/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/grpc/Context;->cascadesCancellation:Z

    if-nez v0, :cond_1

    .line 389
    :cond_0
    const/4 v0, 0x0

    .line 391
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lio/grpc/Context;->parent:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->cancellationCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public detach(Lio/grpc/Context;)V
    .locals 4

    .prologue
    .line 352
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {p1}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 357
    sget-object v0, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Context was not attached when detaching"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 358
    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    .line 357
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    :cond_0
    return-void
.end method

.method public getDeadline()Lio/grpc/Deadline;
    .locals 1

    .prologue
    .line 411
    sget-object v0, Lio/grpc/Context;->DEADLINE_KEY:Lio/grpc/Context$Key;

    invoke-virtual {v0, p0}, Lio/grpc/Context$Key;->get(Lio/grpc/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Deadline;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lio/grpc/Context;->parent:Lio/grpc/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/grpc/Context;->cascadesCancellation:Z

    if-nez v0, :cond_1

    .line 372
    :cond_0
    const/4 v0, 0x0

    .line 374
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lio/grpc/Context;->parent:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->isCancelled()Z

    move-result v0

    goto :goto_0
.end method

.method notifyAndClearListeners()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 473
    iget-boolean v0, p0, Lio/grpc/Context;->canBeCancelled:Z

    if-nez v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 477
    :cond_0
    monitor-enter p0

    .line 478
    :try_start_0
    iget-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 479
    monitor-exit p0

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 481
    :cond_1
    :try_start_1
    iget-object v3, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    .line 483
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 488
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 489
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Context$ExecutableListener;

    # getter for: Lio/grpc/Context$ExecutableListener;->listener:Lio/grpc/Context$CancellationListener;
    invoke-static {v0}, Lio/grpc/Context$ExecutableListener;->access$500(Lio/grpc/Context$ExecutableListener;)Lio/grpc/Context$CancellationListener;

    move-result-object v0

    instance-of v0, v0, Lio/grpc/Context$ParentListener;

    if-nez v0, :cond_2

    .line 490
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Context$ExecutableListener;

    # invokes: Lio/grpc/Context$ExecutableListener;->deliver()V
    invoke-static {v0}, Lio/grpc/Context$ExecutableListener;->access$400(Lio/grpc/Context$ExecutableListener;)V

    .line 488
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 493
    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 494
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Context$ExecutableListener;

    # getter for: Lio/grpc/Context$ExecutableListener;->listener:Lio/grpc/Context$CancellationListener;
    invoke-static {v0}, Lio/grpc/Context$ExecutableListener;->access$500(Lio/grpc/Context$ExecutableListener;)Lio/grpc/Context$CancellationListener;

    move-result-object v0

    instance-of v0, v0, Lio/grpc/Context$ParentListener;

    if-eqz v0, :cond_4

    .line 495
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Context$ExecutableListener;

    # invokes: Lio/grpc/Context$ExecutableListener;->deliver()V
    invoke-static {v0}, Lio/grpc/Context$ExecutableListener;->access$400(Lio/grpc/Context$ExecutableListener;)V

    .line 493
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 498
    :cond_5
    iget-object v0, p0, Lio/grpc/Context;->parent:Lio/grpc/Context;

    iget-object v1, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    invoke-virtual {v0, v1}, Lio/grpc/Context;->removeListener(Lio/grpc/Context$CancellationListener;)V

    goto :goto_0
.end method

.method public removeListener(Lio/grpc/Context$CancellationListener;)V
    .locals 2

    .prologue
    .line 446
    iget-boolean v0, p0, Lio/grpc/Context;->canBeCancelled:Z

    if-nez v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 449
    :cond_0
    monitor-enter p0

    .line 450
    :try_start_0
    iget-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 451
    iget-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 452
    iget-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Context$ExecutableListener;

    # getter for: Lio/grpc/Context$ExecutableListener;->listener:Lio/grpc/Context$CancellationListener;
    invoke-static {v0}, Lio/grpc/Context$ExecutableListener;->access$500(Lio/grpc/Context$ExecutableListener;)Lio/grpc/Context$CancellationListener;

    move-result-object v0

    if-ne v0, p1, :cond_3

    .line 453
    iget-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 460
    :cond_1
    iget-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lio/grpc/Context;->parent:Lio/grpc/Context;

    iget-object v1, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    invoke-virtual {v0, v1}, Lio/grpc/Context;->removeListener(Lio/grpc/Context$CancellationListener;)V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    .line 465
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 451
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method
