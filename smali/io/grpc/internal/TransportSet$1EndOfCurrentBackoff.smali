.class Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;
.super Ljava/lang/Object;
.source "TransportSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/TransportSet;->scheduleBackoff(Lio/grpc/internal/DelayedClientTransport;Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EndOfCurrentBackoff"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/TransportSet;

.field final synthetic val$delayedTransport:Lio/grpc/internal/DelayedClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/internal/TransportSet;Lio/grpc/internal/DelayedClientTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 244
    iput-object p1, p0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/TransportSet;

    iput-object p2, p0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;->val$delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 248
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;->val$delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v1}, Lio/grpc/internal/DelayedClientTransport;->endBackoff()V

    .line 249
    const/4 v1, 0x0

    .line 251
    iget-object v2, p0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lio/grpc/internal/TransportSet;->access$000(Lio/grpc/internal/TransportSet;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :try_start_1
    iget-object v3, p0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/TransportSet;

    const/4 v4, 0x0

    # setter for: Lio/grpc/internal/TransportSet;->reconnectTask:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v3, v4}, Lio/grpc/internal/TransportSet;->access$202(Lio/grpc/internal/TransportSet;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 253
    iget-object v3, p0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;->val$delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v3}, Lio/grpc/internal/DelayedClientTransport;->hasPendingStreams()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    iget-object v0, p0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/TransportSet;

    iget-object v3, p0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;->val$delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    # invokes: Lio/grpc/internal/TransportSet;->startNewTransport(Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;
    invoke-static {v0, v3}, Lio/grpc/internal/TransportSet;->access$300(Lio/grpc/internal/TransportSet;Lio/grpc/internal/DelayedClientTransport;)Ljava/lang/Runnable;

    move-result-object v0

    .line 261
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    :try_start_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 265
    :cond_0
    if-eqz v1, :cond_1

    .line 266
    iget-object v0, p0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;->val$delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    new-instance v1, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff$1;

    invoke-direct {v1, p0}, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff$1;-><init>(Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/DelayedClientTransport;->setTransportSupplier(Lcom/google/common/base/Supplier;)V

    .line 274
    iget-object v0, p0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;->val$delayedTransport:Lio/grpc/internal/DelayedClientTransport;

    invoke-virtual {v0}, Lio/grpc/internal/DelayedClientTransport;->shutdown()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    :cond_1
    :goto_1
    return-void

    .line 258
    :cond_2
    :try_start_3
    iget-object v1, p0, Lio/grpc/internal/TransportSet$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/TransportSet;

    const/4 v3, 0x0

    # setter for: Lio/grpc/internal/TransportSet;->activeTransport:Lio/grpc/internal/ManagedClientTransport;
    invoke-static {v1, v3}, Lio/grpc/internal/TransportSet;->access$402(Lio/grpc/internal/TransportSet;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;

    .line 259
    const/4 v1, 0x1

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    # getter for: Lio/grpc/internal/TransportSet;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lio/grpc/internal/TransportSet;->access$500()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception handling end of backoff"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
