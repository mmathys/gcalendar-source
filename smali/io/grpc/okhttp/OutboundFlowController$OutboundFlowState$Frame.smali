.class final Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;
.super Ljava/lang/Object;
.source "OutboundFlowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Frame"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final data:Lokio/Buffer;

.field final endStream:Z

.field enqueued:Z

.field final synthetic this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 357
    const-class v0, Lio/grpc/okhttp/OutboundFlowController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;Lokio/Buffer;Z)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p2, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->data:Lokio/Buffer;

    .line 364
    iput-boolean p3, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->endStream:Z

    .line 365
    return-void
.end method


# virtual methods
.method enqueue()V
    .locals 3

    .prologue
    .line 375
    iget-boolean v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->enqueued:Z

    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->enqueued:Z

    .line 377
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget-object v0, v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingWriteQueue:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget v1, v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->queuedBytes:I

    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->queuedBytes:I

    .line 382
    :cond_0
    return-void
.end method

.method size()I
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->data:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method split(I)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;
    .locals 6

    .prologue
    .line 429
    sget-boolean v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Attempting to split a frame for the full size."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 432
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->data:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 434
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 435
    iget-object v2, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->data:Lokio/Buffer;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 437
    new-instance v2, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;

    iget-object v3, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;-><init>(Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;Lokio/Buffer;Z)V

    .line 439
    iget-boolean v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->enqueued:Z

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget v3, v1, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->queuedBytes:I

    sub-int v0, v3, v0

    iput v0, v1, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->queuedBytes:I

    .line 442
    :cond_1
    return-object v2
.end method

.method write()V
    .locals 5

    .prologue
    .line 392
    :cond_0
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->size()I

    move-result v0

    .line 393
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget-object v1, v1, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    # getter for: Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v1}, Lio/grpc/okhttp/OutboundFlowController;->access$300(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/okhttp/internal/framed/FrameWriter;->maxDataLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 394
    if-ne v1, v0, :cond_2

    .line 396
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget-object v1, v1, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    # getter for: Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    invoke-static {v1}, Lio/grpc/okhttp/OutboundFlowController;->access$200(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object v1

    neg-int v2, v0

    invoke-virtual {v1, v2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->incrementStreamWindow(I)I

    .line 397
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    neg-int v2, v0

    invoke-virtual {v1, v2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->incrementStreamWindow(I)I

    .line 399
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget-object v1, v1, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->this$0:Lio/grpc/okhttp/OutboundFlowController;

    # getter for: Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;
    invoke-static {v1}, Lio/grpc/okhttp/OutboundFlowController;->access$300(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/internal/framed/FrameWriter;

    move-result-object v1

    iget-boolean v2, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->endStream:Z

    iget-object v3, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget v3, v3, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->streamId:I

    iget-object v4, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->data:Lokio/Buffer;

    invoke-interface {v1, v2, v3, v4, v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget-object v1, v1, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->stream:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-virtual {v1, v0}, Lio/grpc/okhttp/OkHttpClientStream;->onStreamSentBytes(I)V

    .line 405
    iget-boolean v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->enqueued:Z

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget v2, v1, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->queuedBytes:I

    sub-int v0, v2, v0

    iput v0, v1, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->queuedBytes:I

    .line 408
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->this$1:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget-object v0, v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->pendingWriteQueue:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 414
    :cond_2
    invoke-virtual {p0, v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->split(I)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->write()V

    .line 416
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0
.end method
