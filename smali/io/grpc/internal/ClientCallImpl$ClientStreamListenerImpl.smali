.class Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;
.super Ljava/lang/Object;
.source "ClientCallImpl.java"

# interfaces
.implements Lio/grpc/internal/ClientStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ClientCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientStreamListenerImpl"
.end annotation


# instance fields
.field private closed:Z

.field private final observer:Lio/grpc/ClientCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall$Listener",
            "<TRespT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/grpc/internal/ClientCallImpl;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener",
            "<TRespT;>;)V"
        }
    .end annotation

    .prologue
    .line 407
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    const-string v0, "observer"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ClientCall$Listener;

    iput-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->observer:Lio/grpc/ClientCall$Listener;

    .line 409
    return-void
.end method

.method static synthetic access$400(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->closed:Z

    return v0
.end method

.method static synthetic access$500(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)Lio/grpc/ClientCall$Listener;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->observer:Lio/grpc/ClientCall$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->close(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method

.method private close(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 483
    iput-boolean v1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->closed:Z

    .line 484
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # setter for: Lio/grpc/internal/ClientCallImpl;->cancelListenersShouldBeRemoved:Z
    invoke-static {v0, v1}, Lio/grpc/internal/ClientCallImpl;->access$902(Lio/grpc/internal/ClientCallImpl;Z)Z

    .line 486
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->observer:Lio/grpc/ClientCall$Listener;

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall$Listener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # invokes: Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$1000(Lio/grpc/internal/ClientCallImpl;)V

    .line 490
    return-void

    .line 488
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # invokes: Lio/grpc/internal/ClientCallImpl;->removeContextListenerAndCancelDeadlineFuture()V
    invoke-static {v1}, Lio/grpc/internal/ClientCallImpl;->access$1000(Lio/grpc/internal/ClientCallImpl;)V

    throw v0
.end method


# virtual methods
.method public closed(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 3

    .prologue
    .line 494
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # invokes: Lio/grpc/internal/ClientCallImpl;->effectiveDeadline()Lio/grpc/Deadline;
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$1100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Deadline;

    move-result-object v0

    .line 495
    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    sget-object v2, Lio/grpc/Status$Code;->CANCELLED:Lio/grpc/Status$Code;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Lio/grpc/Deadline;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    sget-object p1, Lio/grpc/Status;->DEADLINE_EXCEEDED:Lio/grpc/Status;

    .line 502
    new-instance p2, Lio/grpc/Metadata;

    invoke-direct {p2}, Lio/grpc/Metadata;-><init>()V

    .line 522
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$700(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;-><init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/grpc/Status;Lio/grpc/Metadata;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 523
    return-void
.end method

.method public headersRead(Lio/grpc/Metadata;)V
    .locals 6

    .prologue
    .line 413
    sget-object v0, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    .line 414
    sget-object v1, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v1}, Lio/grpc/Metadata;->containsKey(Lio/grpc/Metadata$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    sget-object v0, Lio/grpc/internal/GrpcUtil;->MESSAGE_ENCODING_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v0}, Lio/grpc/Metadata;->get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 416
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->decompressorRegistry:Lio/grpc/DecompressorRegistry;
    invoke-static {v1}, Lio/grpc/internal/ClientCallImpl;->access$300(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/DecompressorRegistry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/DecompressorRegistry;->lookupDecompressor(Ljava/lang/String;)Lio/grpc/Decompressor;

    move-result-object v1

    .line 417
    if-nez v1, :cond_0

    .line 418
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;
    invoke-static {v1}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;

    move-result-object v1

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "Can\'t find decompressor for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 419
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-virtual {v2, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 447
    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    .line 423
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->stream:Lio/grpc/internal/ClientStream;
    invoke-static {v1}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/internal/ClientStream;->setDecompressor(Lio/grpc/Decompressor;)V

    .line 446
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$700(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1HeadersRead;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1HeadersRead;-><init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/grpc/Metadata;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public messageRead(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$700(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessageRead;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1MessageRead;-><init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 477
    return-void
.end method

.method public onReady()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    # getter for: Lio/grpc/internal/ClientCallImpl;->callExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$700(Lio/grpc/internal/ClientCallImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamOnReady;

    invoke-direct {v1, p0}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamOnReady;-><init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 546
    return-void
.end method
