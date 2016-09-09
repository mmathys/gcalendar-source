.class Lio/grpc/internal/ManagedChannelImpl$1NameResolverStartTask;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl;->exitIdleMode()Lio/grpc/LoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NameResolverStartTask"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;

.field final synthetic val$balancer:Lio/grpc/LoadBalancer;

.field final synthetic val$resolver:Lio/grpc/NameResolver;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/LoadBalancer;Lio/grpc/NameResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 249
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$1NameResolverStartTask;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$1NameResolverStartTask;->val$balancer:Lio/grpc/LoadBalancer;

    iput-object p3, p0, Lio/grpc/internal/ManagedChannelImpl$1NameResolverStartTask;->val$resolver:Lio/grpc/NameResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 252
    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$NameResolverListenerImpl;

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1NameResolverStartTask;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$1NameResolverStartTask;->val$balancer:Lio/grpc/LoadBalancer;

    invoke-direct {v1, v0, v2}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListenerImpl;-><init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/LoadBalancer;)V

    .line 256
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1NameResolverStartTask;->val$resolver:Lio/grpc/NameResolver;

    invoke-virtual {v0, v1}, Lio/grpc/NameResolver;->start(Lio/grpc/NameResolver$Listener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    invoke-static {v0}, Lio/grpc/Status;->fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListenerImpl;->onError(Lio/grpc/Status;)V

    goto :goto_0
.end method
