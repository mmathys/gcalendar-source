.class Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;
.super Lio/grpc/internal/ContextRunnable;
.source "ClientCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->closed(Lio/grpc/Status;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamClosed"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

.field final synthetic val$savedStatus:Lio/grpc/Status;

.field final synthetic val$savedTrailers:Lio/grpc/Metadata;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 508
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iput-object p2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->val$savedStatus:Lio/grpc/Status;

    iput-object p3, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->val$savedTrailers:Lio/grpc/Metadata;

    .line 509
    iget-object v0, p1, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$000(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    .line 510
    return-void
.end method


# virtual methods
.method public final runInContext()V
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->closed:Z
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->access$400(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->val$savedStatus:Lio/grpc/Status;

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->val$savedTrailers:Lio/grpc/Metadata;

    # invokes: Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    invoke-static {v0, v1, v2}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->access$600(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/grpc/Status;Lio/grpc/Metadata;)V

    goto :goto_0
.end method
