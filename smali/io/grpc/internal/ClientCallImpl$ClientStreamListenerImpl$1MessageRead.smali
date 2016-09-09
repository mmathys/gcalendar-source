.class Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessageRead;
.super Lio/grpc/internal/ContextRunnable;
.source "ClientCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->messageRead(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageRead"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

.field final synthetic val$message:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 452
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessageRead;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iput-object p2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessageRead;->val$message:Ljava/io/InputStream;

    .line 453
    iget-object v0, p1, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->context:Lio/grpc/Context;
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$000(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    .line 454
    return-void
.end method


# virtual methods
.method public final runInContext()V
    .locals 3

    .prologue
    .line 459
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessageRead;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->closed:Z
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->access$400(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 463
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessageRead;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->observer:Lio/grpc/ClientCall$Listener;
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->access$500(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)Lio/grpc/ClientCall$Listener;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessageRead;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iget-object v1, v1, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->method:Lio/grpc/MethodDescriptor;
    invoke-static {v1}, Lio/grpc/internal/ClientCallImpl;->access$800(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/MethodDescriptor;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessageRead;->val$message:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Lio/grpc/MethodDescriptor;->parseResponse(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall$Listener;->onMessage(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :try_start_2
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessageRead;->val$message:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    sget-object v1, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 469
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    const-string v1, "Failed to read message."

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 470
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessageRead;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iget-object v1, v1, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;
    invoke-static {v1}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 471
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessageRead;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    # invokes: Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    invoke-static {v1, v0, v2}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->access$600(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/grpc/Status;Lio/grpc/Metadata;)V

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessageRead;->val$message:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
.end method
