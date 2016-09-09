.class Lio/grpc/internal/DnsNameResolver$2;
.super Ljava/lang/Object;
.source "DnsNameResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DnsNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DnsNameResolver;


# direct methods
.method constructor <init>(Lio/grpc/internal/DnsNameResolver;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver$2;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver$2;->this$0:Lio/grpc/internal/DnsNameResolver;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$2;->this$0:Lio/grpc/internal/DnsNameResolver;

    # getter for: Lio/grpc/internal/DnsNameResolver;->shutdown:Z
    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver;->access$100(Lio/grpc/internal/DnsNameResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$2;->this$0:Lio/grpc/internal/DnsNameResolver;

    # getter for: Lio/grpc/internal/DnsNameResolver;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver;->access$900(Lio/grpc/internal/DnsNameResolver;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$2;->this$0:Lio/grpc/internal/DnsNameResolver;

    # getter for: Lio/grpc/internal/DnsNameResolver;->resolutionRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lio/grpc/internal/DnsNameResolver;->access$800(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 187
    :cond_0
    monitor-exit v1

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
