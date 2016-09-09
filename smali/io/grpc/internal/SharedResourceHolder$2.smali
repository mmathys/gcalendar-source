.class Lio/grpc/internal/SharedResourceHolder$2;
.super Ljava/lang/Object;
.source "SharedResourceHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/SharedResourceHolder;->releaseInternal(Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/SharedResourceHolder;

.field final synthetic val$cached:Lio/grpc/internal/SharedResourceHolder$Instance;

.field final synthetic val$instance:Ljava/lang/Object;

.field final synthetic val$resource:Lio/grpc/internal/SharedResourceHolder$Resource;


# direct methods
.method constructor <init>(Lio/grpc/internal/SharedResourceHolder;Lio/grpc/internal/SharedResourceHolder$Instance;Lio/grpc/internal/SharedResourceHolder$Resource;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    iput-object p2, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$cached:Lio/grpc/internal/SharedResourceHolder$Instance;

    iput-object p3, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$resource:Lio/grpc/internal/SharedResourceHolder$Resource;

    iput-object p4, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$instance:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 159
    iget-object v1, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$cached:Lio/grpc/internal/SharedResourceHolder$Instance;

    iget v0, v0, Lio/grpc/internal/SharedResourceHolder$Instance;->refcount:I

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$resource:Lio/grpc/internal/SharedResourceHolder$Resource;

    iget-object v2, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$instance:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lio/grpc/internal/SharedResourceHolder$Resource;->close(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    # getter for: Lio/grpc/internal/SharedResourceHolder;->instances:Ljava/util/IdentityHashMap;
    invoke-static {v0}, Lio/grpc/internal/SharedResourceHolder;->access$000(Lio/grpc/internal/SharedResourceHolder;)Ljava/util/IdentityHashMap;

    move-result-object v0

    iget-object v2, p0, Lio/grpc/internal/SharedResourceHolder$2;->val$resource:Lio/grpc/internal/SharedResourceHolder$Resource;

    invoke-virtual {v0, v2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    # getter for: Lio/grpc/internal/SharedResourceHolder;->instances:Ljava/util/IdentityHashMap;
    invoke-static {v0}, Lio/grpc/internal/SharedResourceHolder;->access$000(Lio/grpc/internal/SharedResourceHolder;)Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    # getter for: Lio/grpc/internal/SharedResourceHolder;->destroyer:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0}, Lio/grpc/internal/SharedResourceHolder;->access$100(Lio/grpc/internal/SharedResourceHolder;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 166
    iget-object v0, p0, Lio/grpc/internal/SharedResourceHolder$2;->this$0:Lio/grpc/internal/SharedResourceHolder;

    const/4 v2, 0x0

    # setter for: Lio/grpc/internal/SharedResourceHolder;->destroyer:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v0, v2}, Lio/grpc/internal/SharedResourceHolder;->access$102(Lio/grpc/internal/SharedResourceHolder;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 169
    :cond_0
    monitor-exit v1

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
