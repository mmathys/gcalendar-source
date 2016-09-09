.class Lio/grpc/internal/ManagedChannelImpl$RealChannel;
.super Lio/grpc/Channel;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RealChannel"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Lio/grpc/Channel;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V
    .locals 0

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    return-void
.end method


# virtual methods
.method public authority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->nameResolver:Lio/grpc/NameResolver;
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/NameResolver;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/NameResolver;->getServiceAuthority()Ljava/lang/String;

    move-result-object v0

    .line 565
    const-string v1, "authority"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor",
            "<TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/ClientCall",
            "<TReqT;TRespT;>;"
        }
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p2}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 549
    if-nez v2, :cond_0

    .line 550
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    # getter for: Lio/grpc/internal/ManagedChannelImpl;->executor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1300(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 552
    :cond_0
    new-instance v0, Lio/grpc/internal/ClientCallImpl;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 556
    # getter for: Lio/grpc/internal/ManagedChannelImpl;->transportProvider:Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$1600(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;

    move-result-object v4

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 557
    # getter for: Lio/grpc/internal/ManagedChannelImpl;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$1700(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lio/grpc/internal/ClientCallImpl;-><init>(Lio/grpc/MethodDescriptor;Ljava/util/concurrent/Executor;Lio/grpc/CallOptions;Lio/grpc/internal/ClientCallImpl$ClientTransportProvider;Ljava/util/concurrent/ScheduledExecutorService;)V

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 558
    # getter for: Lio/grpc/internal/ManagedChannelImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$1500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/DecompressorRegistry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/ClientCallImpl;->setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/ClientCallImpl;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 559
    # getter for: Lio/grpc/internal/ManagedChannelImpl;->compressorRegistry:Lio/grpc/CompressorRegistry;
    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$1400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/CompressorRegistry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/internal/ClientCallImpl;->setCompressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/ClientCallImpl;

    move-result-object v0

    .line 552
    return-object v0
.end method
