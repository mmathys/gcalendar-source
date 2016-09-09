.class public final Lio/grpc/Context$CancellableContext;
.super Lio/grpc/Context;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CancellableContext"
.end annotation


# instance fields
.field private cancellationCause:Ljava/lang/Throwable;

.field private cancelled:Z

.field private pendingDeadline:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final uncancellableSurrogate:Lio/grpc/Context;


# virtual methods
.method public attach()Lio/grpc/Context;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->uncancellableSurrogate:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    return-object v0
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 709
    .line 710
    monitor-enter p0

    .line 711
    :try_start_0
    iget-boolean v2, p0, Lio/grpc/Context$CancellableContext;->cancelled:Z

    if-nez v2, :cond_2

    .line 712
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/Context$CancellableContext;->cancelled:Z

    .line 713
    iget-object v1, p0, Lio/grpc/Context$CancellableContext;->pendingDeadline:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    .line 715
    iget-object v1, p0, Lio/grpc/Context$CancellableContext;->pendingDeadline:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 716
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/Context$CancellableContext;->pendingDeadline:Ljava/util/concurrent/ScheduledFuture;

    .line 718
    :cond_0
    iput-object p1, p0, Lio/grpc/Context$CancellableContext;->cancellationCause:Ljava/lang/Throwable;

    .line 721
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {p0}, Lio/grpc/Context$CancellableContext;->notifyAndClearListeners()V

    .line 725
    :cond_1
    return v0

    .line 721
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public cancellationCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lio/grpc/Context$CancellableContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->cancellationCause:Ljava/lang/Throwable;

    .line 764
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public detach(Lio/grpc/Context;)V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lio/grpc/Context$CancellableContext;->uncancellableSurrogate:Lio/grpc/Context;

    invoke-virtual {v0, p1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 694
    return-void
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 744
    monitor-enter p0

    .line 745
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/Context$CancellableContext;->cancelled:Z

    if-eqz v1, :cond_0

    .line 746
    monitor-exit p0

    .line 755
    :goto_0
    return v0

    .line 748
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    invoke-super {p0}, Lio/grpc/Context;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 752
    invoke-super {p0}, Lio/grpc/Context;->cancellationCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 748
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 755
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
