.class public abstract Lio/grpc/internal/AbstractStream;
.super Ljava/lang/Object;
.source "AbstractStream.java"

# interfaces
.implements Lio/grpc/internal/Stream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/AbstractStream$DeframerListener;,
        Lio/grpc/internal/AbstractStream$FramerSink;,
        Lio/grpc/internal/AbstractStream$Phase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/internal/Stream;"
    }
.end annotation


# instance fields
.field private allocated:Z

.field private final deframer:Lio/grpc/internal/MessageDeframer;

.field private final framer:Lio/grpc/internal/MessageFramer;

.field private inboundPhase:Lio/grpc/internal/AbstractStream$Phase;

.field private numSentBytesQueued:I

.field private final onReadyLock:Ljava/lang/Object;

.field private onReadyThreshold:I

.field private outboundPhase:Lio/grpc/internal/AbstractStream$Phase;


# direct methods
.method constructor <init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageDeframer;)V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lio/grpc/internal/AbstractStream$Phase;->HEADERS:Lio/grpc/internal/AbstractStream$Phase;

    iput-object v0, p0, Lio/grpc/internal/AbstractStream;->inboundPhase:Lio/grpc/internal/AbstractStream$Phase;

    .line 79
    sget-object v0, Lio/grpc/internal/AbstractStream$Phase;->HEADERS:Lio/grpc/internal/AbstractStream$Phase;

    iput-object v0, p0, Lio/grpc/internal/AbstractStream;->outboundPhase:Lio/grpc/internal/AbstractStream$Phase;

    .line 85
    const v0, 0x8000

    iput v0, p0, Lio/grpc/internal/AbstractStream;->onReadyThreshold:I

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AbstractStream;->onReadyLock:Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lio/grpc/internal/AbstractStream;->framer:Lio/grpc/internal/MessageFramer;

    .line 141
    iput-object p2, p0, Lio/grpc/internal/AbstractStream;->deframer:Lio/grpc/internal/MessageDeframer;

    .line 142
    return-void
.end method

.method constructor <init>(Lio/grpc/internal/WritableBufferAllocator;I)V
    .locals 3

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lio/grpc/internal/AbstractStream$Phase;->HEADERS:Lio/grpc/internal/AbstractStream$Phase;

    iput-object v0, p0, Lio/grpc/internal/AbstractStream;->inboundPhase:Lio/grpc/internal/AbstractStream$Phase;

    .line 79
    sget-object v0, Lio/grpc/internal/AbstractStream$Phase;->HEADERS:Lio/grpc/internal/AbstractStream$Phase;

    iput-object v0, p0, Lio/grpc/internal/AbstractStream;->outboundPhase:Lio/grpc/internal/AbstractStream$Phase;

    .line 85
    const v0, 0x8000

    iput v0, p0, Lio/grpc/internal/AbstractStream;->onReadyThreshold:I

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AbstractStream;->onReadyLock:Ljava/lang/Object;

    .line 134
    new-instance v0, Lio/grpc/internal/MessageFramer;

    new-instance v1, Lio/grpc/internal/AbstractStream$FramerSink;

    invoke-direct {v1, p0}, Lio/grpc/internal/AbstractStream$FramerSink;-><init>(Lio/grpc/internal/AbstractStream;)V

    invoke-direct {v0, v1, p1}, Lio/grpc/internal/MessageFramer;-><init>(Lio/grpc/internal/MessageFramer$Sink;Lio/grpc/internal/WritableBufferAllocator;)V

    iput-object v0, p0, Lio/grpc/internal/AbstractStream;->framer:Lio/grpc/internal/MessageFramer;

    .line 135
    new-instance v0, Lio/grpc/internal/MessageDeframer;

    new-instance v1, Lio/grpc/internal/AbstractStream$DeframerListener;

    invoke-direct {v1, p0}, Lio/grpc/internal/AbstractStream$DeframerListener;-><init>(Lio/grpc/internal/AbstractStream;)V

    sget-object v2, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    invoke-direct {v0, v1, v2, p2}, Lio/grpc/internal/MessageDeframer;-><init>(Lio/grpc/internal/MessageDeframer$Listener;Lio/grpc/Decompressor;I)V

    iput-object v0, p0, Lio/grpc/internal/AbstractStream;->deframer:Lio/grpc/internal/MessageDeframer;

    .line 136
    return-void
.end method


# virtual methods
.method public canSend()Z
    .locals 2

    .prologue
    .line 419
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->outboundPhase()Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/AbstractStream$Phase;->STATUS:Lio/grpc/internal/AbstractStream$Phase;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final closeDeframer()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0}, Lio/grpc/internal/MessageDeframer;->close()V

    .line 268
    return-void
.end method

.method final closeFramer()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->framer:Lio/grpc/internal/MessageFramer;

    invoke-virtual {v0}, Lio/grpc/internal/MessageFramer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->framer:Lio/grpc/internal/MessageFramer;

    invoke-virtual {v0}, Lio/grpc/internal/MessageFramer;->close()V

    .line 207
    :cond_0
    return-void
.end method

.method protected final deframe(Lio/grpc/internal/ReadableBuffer;Z)V
    .locals 1

    .prologue
    .line 276
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1, p2}, Lio/grpc/internal/MessageDeframer;->deframe(Lio/grpc/internal/ReadableBuffer;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractStream;->deframeFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract deframeFailed(Ljava/lang/Throwable;)V
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->framer:Lio/grpc/internal/MessageFramer;

    invoke-virtual {v0}, Lio/grpc/internal/MessageFramer;->dispose()V

    .line 219
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->framer:Lio/grpc/internal/MessageFramer;

    invoke-virtual {v0}, Lio/grpc/internal/MessageFramer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->framer:Lio/grpc/internal/MessageFramer;

    invoke-virtual {v0}, Lio/grpc/internal/MessageFramer;->flush()V

    .line 186
    :cond_0
    return-void
.end method

.method public abstract id()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TIdT;"
        }
    .end annotation
.end method

.method protected abstract inboundDeliveryPaused()V
.end method

.method final inboundPhase()Lio/grpc/internal/AbstractStream$Phase;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->inboundPhase:Lio/grpc/internal/AbstractStream$Phase;

    return-object v0
.end method

.method final inboundPhase(Lio/grpc/internal/AbstractStream$Phase;)Lio/grpc/internal/AbstractStream$Phase;
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->inboundPhase:Lio/grpc/internal/AbstractStream$Phase;

    .line 380
    iget-object v1, p0, Lio/grpc/internal/AbstractStream;->inboundPhase:Lio/grpc/internal/AbstractStream$Phase;

    invoke-virtual {p0, v1, p1}, Lio/grpc/internal/AbstractStream;->verifyNextPhase(Lio/grpc/internal/AbstractStream$Phase;Lio/grpc/internal/AbstractStream$Phase;)Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/AbstractStream;->inboundPhase:Lio/grpc/internal/AbstractStream$Phase;

    .line 381
    return-object v0
.end method

.method protected abstract internalSendFrame(Lio/grpc/internal/WritableBuffer;ZZ)V
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->inboundPhase()Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/AbstractStream$Phase;->STATUS:Lio/grpc/internal/AbstractStream$Phase;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->outboundPhase()Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/AbstractStream$Phase;->STATUS:Lio/grpc/internal/AbstractStream$Phase;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isDeframerStalled()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0}, Lio/grpc/internal/MessageDeframer;->isStalled()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->listener()Lio/grpc/internal/StreamListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->outboundPhase()Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v1

    sget-object v2, Lio/grpc/internal/AbstractStream$Phase;->STATUS:Lio/grpc/internal/AbstractStream$Phase;

    if-eq v1, v2, :cond_1

    .line 191
    iget-object v1, p0, Lio/grpc/internal/AbstractStream;->onReadyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-boolean v2, p0, Lio/grpc/internal/AbstractStream;->allocated:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lio/grpc/internal/AbstractStream;->numSentBytesQueued:I

    iget v3, p0, Lio/grpc/internal/AbstractStream;->onReadyThreshold:I

    if-ge v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    .line 195
    :cond_1
    return v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract listener()Lio/grpc/internal/StreamListener;
.end method

.method final notifyIfReady()V
    .locals 2

    .prologue
    .line 360
    .line 361
    iget-object v1, p0, Lio/grpc/internal/AbstractStream;->onReadyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->isReady()Z

    move-result v0

    .line 363
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->listener()Lio/grpc/internal/StreamListener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/StreamListener;->onReady()V

    .line 367
    :cond_0
    return-void

    .line 363
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final onSendingBytes(I)V
    .locals 2

    .prologue
    .line 333
    iget-object v1, p0, Lio/grpc/internal/AbstractStream;->onReadyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 334
    :try_start_0
    iget v0, p0, Lio/grpc/internal/AbstractStream;->numSentBytesQueued:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/internal/AbstractStream;->numSentBytesQueued:I

    .line 335
    monitor-exit v1

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final onSentBytes(I)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 347
    iget-object v4, p0, Lio/grpc/internal/AbstractStream;->onReadyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 348
    :try_start_0
    iget v2, p0, Lio/grpc/internal/AbstractStream;->numSentBytesQueued:I

    iget v3, p0, Lio/grpc/internal/AbstractStream;->onReadyThreshold:I

    if-ge v2, v3, :cond_1

    move v3, v0

    .line 349
    :goto_0
    iget v2, p0, Lio/grpc/internal/AbstractStream;->numSentBytesQueued:I

    sub-int/2addr v2, p1

    iput v2, p0, Lio/grpc/internal/AbstractStream;->numSentBytesQueued:I

    .line 350
    iget v2, p0, Lio/grpc/internal/AbstractStream;->numSentBytesQueued:I

    iget v5, p0, Lio/grpc/internal/AbstractStream;->onReadyThreshold:I

    if-ge v2, v5, :cond_2

    move v2, v0

    .line 351
    :goto_1
    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 352
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->notifyIfReady()V

    .line 356
    :cond_0
    return-void

    :cond_1
    move v3, v1

    .line 348
    goto :goto_0

    :cond_2
    move v2, v1

    .line 350
    goto :goto_1

    :cond_3
    move v0, v1

    .line 351
    goto :goto_2

    .line 352
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final onStreamAllocated()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 318
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->listener()Lio/grpc/internal/StreamListener;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 319
    iget-object v3, p0, Lio/grpc/internal/AbstractStream;->onReadyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 320
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/AbstractStream;->allocated:Z

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Already allocated"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/AbstractStream;->allocated:Z

    .line 322
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->notifyIfReady()V

    .line 324
    return-void

    :cond_0
    move v0, v2

    .line 318
    goto :goto_0

    :cond_1
    move v1, v2

    .line 320
    goto :goto_1

    .line 322
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final outboundPhase()Lio/grpc/internal/AbstractStream$Phase;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->outboundPhase:Lio/grpc/internal/AbstractStream$Phase;

    return-object v0
.end method

.method final outboundPhase(Lio/grpc/internal/AbstractStream$Phase;)Lio/grpc/internal/AbstractStream$Phase;
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->outboundPhase:Lio/grpc/internal/AbstractStream$Phase;

    .line 395
    iget-object v1, p0, Lio/grpc/internal/AbstractStream;->outboundPhase:Lio/grpc/internal/AbstractStream$Phase;

    invoke-virtual {p0, v1, p1}, Lio/grpc/internal/AbstractStream;->verifyNextPhase(Lio/grpc/internal/AbstractStream$Phase;Lio/grpc/internal/AbstractStream$Phase;)Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/AbstractStream;->outboundPhase:Lio/grpc/internal/AbstractStream$Phase;

    .line 396
    return-object v0
.end method

.method protected abstract receiveMessage(Ljava/io/InputStream;)V
.end method

.method protected abstract remoteEndClosed()V
.end method

.method protected final requestMessagesFromDeframer(I)V
    .locals 1

    .prologue
    .line 295
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->request(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractStream;->deframeFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected abstract returnProcessedBytes(I)V
.end method

.method public final setCompressor(Lio/grpc/Compressor;)V
    .locals 2

    .prologue
    .line 303
    iget-object v1, p0, Lio/grpc/internal/AbstractStream;->framer:Lio/grpc/internal/MessageFramer;

    const-string v0, "compressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Compressor;

    invoke-virtual {v1, v0}, Lio/grpc/internal/MessageFramer;->setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/MessageFramer;

    .line 304
    return-void
.end method

.method public final setDecompressor(Lio/grpc/Decompressor;)V
    .locals 2

    .prologue
    .line 308
    iget-object v1, p0, Lio/grpc/internal/AbstractStream;->deframer:Lio/grpc/internal/MessageDeframer;

    const-string v0, "decompressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Decompressor;

    invoke-virtual {v1, v0}, Lio/grpc/internal/MessageDeframer;->setDecompressor(Lio/grpc/Decompressor;)V

    .line 309
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->toStringHelper()Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringHelper()Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 3

    .prologue
    .line 438
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "id"

    .line 439
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->id()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "inboundPhase"

    .line 440
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->inboundPhase()Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/AbstractStream$Phase;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "outboundPhase"

    .line 441
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->outboundPhase()Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/AbstractStream$Phase;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 438
    return-object v0
.end method

.method verifyNextPhase(Lio/grpc/internal/AbstractStream$Phase;Lio/grpc/internal/AbstractStream$Phase;)Lio/grpc/internal/AbstractStream$Phase;
    .locals 4

    .prologue
    .line 401
    invoke-virtual {p2}, Lio/grpc/internal/AbstractStream$Phase;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lio/grpc/internal/AbstractStream$Phase;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 402
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot transition phase from %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 403
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    return-object p2
.end method

.method public writeMessage(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 169
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lio/grpc/internal/AbstractStream$Phase;->MESSAGE:Lio/grpc/internal/AbstractStream$Phase;

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractStream;->outboundPhase(Lio/grpc/internal/AbstractStream$Phase;)Lio/grpc/internal/AbstractStream$Phase;

    .line 171
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->framer:Lio/grpc/internal/MessageFramer;

    invoke-virtual {v0}, Lio/grpc/internal/MessageFramer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lio/grpc/internal/AbstractStream;->framer:Lio/grpc/internal/MessageFramer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageFramer;->writePayload(Ljava/io/InputStream;)V

    .line 174
    :cond_0
    return-void
.end method
