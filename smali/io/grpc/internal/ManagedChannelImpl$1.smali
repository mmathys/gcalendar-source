.class Lio/grpc/internal/ManagedChannelImpl$1;
.super Lio/grpc/internal/InUseStateAggregator;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/InUseStateAggregator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$1;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Lio/grpc/internal/InUseStateAggregator;-><init>()V

    return-void
.end method


# virtual methods
.method getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$000(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method handleInUse()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImpl;->exitIdleMode()Lio/grpc/LoadBalancer;

    .line 170
    return-void
.end method

.method handleNotInUse()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->shutdown:Z
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$100(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # invokes: Lio/grpc/internal/ManagedChannelImpl;->rescheduleIdleTimer()V
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$200(Lio/grpc/internal/ManagedChannelImpl;)V

    goto :goto_0
.end method
