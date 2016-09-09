.class Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamOnReady;
.super Lio/grpc/internal/ContextRunnable;
.source "ClientCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->onReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamOnReady"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)V
    .locals 1

    .prologue
    .line 528
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamOnReady;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    .line 529
    iget-object v0, p1, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$000(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    .line 530
    return-void
.end method


# virtual methods
.method public final runInContext()V
    .locals 3

    .prologue
    .line 535
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamOnReady;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->observer:Lio/grpc/ClientCall$Listener;
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->access$500(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)Lio/grpc/ClientCall$Listener;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ClientCall$Listener;->onReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    sget-object v1, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 538
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    const-string v1, "Failed to call onReady."

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamOnReady;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iget-object v1, v1, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;
    invoke-static {v1}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 540
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamOnReady;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    # invokes: Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    invoke-static {v1, v0, v2}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->access$600(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/grpc/Status;Lio/grpc/Metadata;)V

    goto :goto_0
.end method
