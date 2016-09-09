.class Lio/grpc/internal/KeepAliveManager$1;
.super Ljava/lang/Object;
.source "KeepAliveManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/KeepAliveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/KeepAliveManager;


# direct methods
.method constructor <init>(Lio/grpc/internal/KeepAliveManager;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lio/grpc/internal/KeepAliveManager$1;->this$0:Lio/grpc/internal/KeepAliveManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lio/grpc/internal/KeepAliveManager$1;->this$0:Lio/grpc/internal/KeepAliveManager;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/KeepAliveManager$1;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    invoke-static {v2}, Lio/grpc/internal/KeepAliveManager;->access$100(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/KeepAliveManager$State;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/KeepAliveManager$State;->DISCONNECTED:Lio/grpc/internal/KeepAliveManager$State;

    if-eq v2, v3, :cond_0

    .line 66
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$1;->this$0:Lio/grpc/internal/KeepAliveManager;

    sget-object v2, Lio/grpc/internal/KeepAliveManager$State;->DISCONNECTED:Lio/grpc/internal/KeepAliveManager$State;

    # setter for: Lio/grpc/internal/KeepAliveManager;->state:Lio/grpc/internal/KeepAliveManager$State;
    invoke-static {v0, v2}, Lio/grpc/internal/KeepAliveManager;->access$102(Lio/grpc/internal/KeepAliveManager;Lio/grpc/internal/KeepAliveManager$State;)Lio/grpc/internal/KeepAliveManager$State;

    .line 67
    const/4 v0, 0x1

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lio/grpc/internal/KeepAliveManager$1;->this$0:Lio/grpc/internal/KeepAliveManager;

    # getter for: Lio/grpc/internal/KeepAliveManager;->transport:Lio/grpc/internal/ManagedClientTransport;
    invoke-static {v0}, Lio/grpc/internal/KeepAliveManager;->access$200(Lio/grpc/internal/KeepAliveManager;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v0

    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v2, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/ManagedClientTransport;->shutdownNow(Lio/grpc/Status;)V

    .line 74
    :cond_1
    return-void

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
