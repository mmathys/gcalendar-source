.class Lio/grpc/internal/TransportSet$1;
.super Lio/grpc/internal/InUseStateAggregator;
.source "TransportSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/TransportSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/InUseStateAggregator",
        "<",
        "Lio/grpc/internal/ManagedClientTransport;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/TransportSet;


# direct methods
.method constructor <init>(Lio/grpc/internal/TransportSet;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lio/grpc/internal/TransportSet$1;->this$0:Lio/grpc/internal/TransportSet;

    invoke-direct {p0}, Lio/grpc/internal/InUseStateAggregator;-><init>()V

    return-void
.end method


# virtual methods
.method getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lio/grpc/internal/TransportSet$1;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lio/grpc/internal/TransportSet;->access$000(Lio/grpc/internal/TransportSet;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method handleInUse()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lio/grpc/internal/TransportSet$1;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->callback:Lio/grpc/internal/TransportSet$Callback;
    invoke-static {v0}, Lio/grpc/internal/TransportSet;->access$100(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/TransportSet$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/TransportSet$1;->this$0:Lio/grpc/internal/TransportSet;

    invoke-virtual {v0, v1}, Lio/grpc/internal/TransportSet$Callback;->onInUse(Lio/grpc/internal/TransportSet;)V

    .line 115
    return-void
.end method

.method handleNotInUse()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lio/grpc/internal/TransportSet$1;->this$0:Lio/grpc/internal/TransportSet;

    # getter for: Lio/grpc/internal/TransportSet;->callback:Lio/grpc/internal/TransportSet$Callback;
    invoke-static {v0}, Lio/grpc/internal/TransportSet;->access$100(Lio/grpc/internal/TransportSet;)Lio/grpc/internal/TransportSet$Callback;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/TransportSet$1;->this$0:Lio/grpc/internal/TransportSet;

    invoke-virtual {v0, v1}, Lio/grpc/internal/TransportSet$Callback;->onNotInUse(Lio/grpc/internal/TransportSet;)V

    .line 120
    return-void
.end method
