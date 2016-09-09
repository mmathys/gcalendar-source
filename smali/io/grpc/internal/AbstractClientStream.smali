.class public abstract Lio/grpc/internal/AbstractClientStream;
.super Lio/grpc/internal/AbstractStream;
.source "AbstractClientStream.java"

# interfaces
.implements Lio/grpc/internal/ClientStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IdT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/internal/AbstractStream",
        "<TIdT;>;",
        "Lio/grpc/internal/ClientStream;"
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile cancelled:Z

.field private closeListenerTask:Ljava/lang/Runnable;

.field private listener:Lio/grpc/internal/ClientStreamListener;

.field private listenerClosed:Z

.field private status:Lio/grpc/Status;

.field private trailers:Lio/grpc/Metadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lio/grpc/internal/AbstractClientStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractClientStream;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/internal/WritableBufferAllocator;I)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/AbstractStream;-><init>(Lio/grpc/internal/WritableBufferAllocator;I)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/AbstractClientStream;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/AbstractClientStream;->closeListener(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method

.method private closeListener(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 264
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "stream not started"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 265
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream;->listenerClosed:Z

    if-nez v0, :cond_0

    .line 266
    iput-boolean v1, p0, Lio/grpc/internal/AbstractClientStream;->listenerClosed:Z

    .line 267
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->closeDeframer()V

    .line 268
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->listener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v0, p1, p2}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 270
    :cond_0
    return-void

    .line 264
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newCloseListenerTask(Lio/grpc/Status;Lio/grpc/Metadata;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lio/grpc/internal/AbstractClientStream$1;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/AbstractClientStream$1;-><init>(Lio/grpc/internal/AbstractClientStream;Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-object v0
.end method

.method private runCloseListenerTask()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->closeListenerTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->closeListenerTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream;->closeListenerTask:Ljava/lang/Runnable;

    .line 280
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel(Lio/grpc/Status;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 294
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Should not cancel with OK status"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 295
    iput-boolean v1, p0, Lio/grpc/internal/AbstractClientStream;->cancelled:Z

    .line 296
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractClientStream;->sendCancel(Lio/grpc/Status;)V

    .line 297
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->dispose()V

    .line 298
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final deframeFailed(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v1, "Exception deframing message"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractClientStream;->cancel(Lio/grpc/Status;)V

    .line 166
    return-void
.end method

.method public final halfClose()V
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lio/grpc/internal/AbstractStream$Phase;->STATUS:Lio/grpc/internal/AbstractStream$Phase;

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractClientStream;->outboundPhase(Lio/grpc/internal/AbstractStream$Phase;)Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/AbstractStream$Phase;->STATUS:Lio/grpc/internal/AbstractStream$Phase;

    if-eq v0, v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->closeFramer()V

    .line 287
    :cond_0
    return-void
.end method

.method protected inboundDataReceived(Lio/grpc/internal/ReadableBuffer;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 135
    const-string v0, "frame"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v1, 0x1

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->inboundPhase()Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v0

    sget-object v3, Lio/grpc/internal/AbstractStream$Phase;->STATUS:Lio/grpc/internal/AbstractStream$Phase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v3, :cond_0

    .line 153
    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->close()V

    .line 156
    :goto_0
    return-void

    .line 141
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->inboundPhase()Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v0

    sget-object v3, Lio/grpc/internal/AbstractStream$Phase;->HEADERS:Lio/grpc/internal/AbstractStream$Phase;

    if-ne v0, v3, :cond_1

    .line 143
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v2, "headers not received before payload"

    .line 144
    invoke-virtual {v0, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    .line 143
    invoke-virtual {p0, v0, v2}, Lio/grpc/internal/AbstractClientStream;->inboundTransportError(Lio/grpc/Status;Lio/grpc/Metadata;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->close()V

    goto :goto_0

    .line 147
    :cond_1
    :try_start_2
    sget-object v0, Lio/grpc/internal/AbstractStream$Phase;->MESSAGE:Lio/grpc/internal/AbstractStream$Phase;

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractClientStream;->inboundPhase(Lio/grpc/internal/AbstractStream$Phase;)Lio/grpc/internal/AbstractStream$Phase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0}, Lio/grpc/internal/AbstractClientStream;->deframe(Lio/grpc/internal/ReadableBuffer;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 153
    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->close()V

    :cond_2
    throw v0

    .line 152
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected inboundDeliveryPaused()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Lio/grpc/internal/AbstractClientStream;->runCloseListenerTask()V

    .line 161
    return-void
.end method

.method protected inboundHeadersReceived(Lio/grpc/Metadata;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "stream not started"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->inboundPhase()Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v0

    sget-object v3, Lio/grpc/internal/AbstractStream$Phase;->STATUS:Lio/grpc/internal/AbstractStream$Phase;

    if-ne v0, v3, :cond_0

    .line 121
    sget-object v0, Lio/grpc/internal/AbstractClientStream;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Received headers on closed stream {0} {1}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 122
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->id()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    .line 121
    invoke-virtual {v0, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_0
    sget-object v0, Lio/grpc/internal/AbstractStream$Phase;->MESSAGE:Lio/grpc/internal/AbstractStream$Phase;

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractClientStream;->inboundPhase(Lio/grpc/internal/AbstractStream$Phase;)Lio/grpc/internal/AbstractStream$Phase;

    .line 126
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->listener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStreamListener;->headersRead(Lio/grpc/Metadata;)V

    .line 127
    return-void

    :cond_1
    move v0, v2

    .line 119
    goto :goto_0
.end method

.method protected inboundTrailersReceived(Lio/grpc/Metadata;Lio/grpc/Status;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 175
    const-string v0, "trailers"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->inboundPhase()Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/AbstractStream$Phase;->STATUS:Lio/grpc/internal/AbstractStream$Phase;

    if-ne v0, v1, :cond_0

    .line 177
    sget-object v0, Lio/grpc/internal/AbstractClientStream;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Received trailers on closed stream {0}\n {1}\n {2}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 178
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->id()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p2, v3, v6

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 177
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :cond_0
    iput-object p2, p0, Lio/grpc/internal/AbstractClientStream;->status:Lio/grpc/Status;

    .line 183
    iput-object p1, p0, Lio/grpc/internal/AbstractClientStream;->trailers:Lio/grpc/Metadata;

    .line 184
    invoke-static {}, Lio/grpc/internal/ReadableBuffers;->empty()Lio/grpc/internal/ReadableBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lio/grpc/internal/AbstractClientStream;->deframe(Lio/grpc/internal/ReadableBuffer;Z)V

    .line 185
    return-void
.end method

.method protected inboundTransportError(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 102
    const-string v0, "metadata"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->inboundPhase()Lio/grpc/internal/AbstractStream$Phase;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/AbstractStream$Phase;->STATUS:Lio/grpc/internal/AbstractStream$Phase;

    if-ne v0, v1, :cond_0

    .line 104
    sget-object v0, Lio/grpc/internal/AbstractClientStream;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Received transport error on closed stream {0} {1}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 105
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->id()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 104
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, p1, v5, p2}, Lio/grpc/internal/AbstractClientStream;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    goto :goto_0
.end method

.method protected final internalSendFrame(Lio/grpc/internal/WritableBuffer;ZZ)V
    .locals 2

    .prologue
    .line 194
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "null frame before EOS"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 195
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/internal/AbstractClientStream;->sendFrame(Lio/grpc/internal/WritableBuffer;ZZ)V

    .line 196
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lio/grpc/internal/AbstractStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream;->listenerClosed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isReady()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream;->cancelled:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lio/grpc/internal/AbstractStream;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final listener()Lio/grpc/internal/ClientStreamListener;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->listener:Lio/grpc/internal/ClientStreamListener;

    return-object v0
.end method

.method protected bridge synthetic listener()Lio/grpc/internal/StreamListener;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->listener()Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    return-object v0
.end method

.method protected receiveMessage(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream;->listenerClosed:Z

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "stream not started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->listener:Lio/grpc/internal/ClientStreamListener;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStreamListener;->messageRead(Ljava/io/InputStream;)V

    .line 92
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected remoteEndClosed()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->status:Lio/grpc/Status;

    const/4 v1, 0x1

    iget-object v2, p0, Lio/grpc/internal/AbstractClientStream;->trailers:Lio/grpc/Metadata;

    invoke-virtual {p0, v0, v1, v2}, Lio/grpc/internal/AbstractClientStream;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    .line 190
    return-void
.end method

.method protected abstract sendCancel(Lio/grpc/Status;)V
.end method

.method protected abstract sendFrame(Lio/grpc/internal/WritableBuffer;ZZ)V
.end method

.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "stream already started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 83
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ClientStreamListener;

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream;->listener:Lio/grpc/internal/ClientStreamListener;

    .line 84
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected toStringHelper()Lcom/google/common/base/MoreObjects$ToStringHelper;
    .locals 3

    .prologue
    .line 314
    invoke-super {p0}, Lio/grpc/internal/AbstractStream;->toStringHelper()Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lio/grpc/internal/AbstractClientStream;->status:Lio/grpc/Status;

    if-eqz v1, :cond_0

    .line 316
    const-string v1, "status"

    iget-object v2, p0, Lio/grpc/internal/AbstractClientStream;->status:Lio/grpc/Status;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 318
    :cond_0
    return-object v0
.end method

.method public transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V
    .locals 2

    .prologue
    .line 222
    const-string v0, "newStatus"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->closeListenerTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    .line 225
    :goto_0
    iget-boolean v1, p0, Lio/grpc/internal/AbstractClientStream;->listenerClosed:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 244
    :cond_0
    :goto_1
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :cond_2
    sget-object v0, Lio/grpc/internal/AbstractStream$Phase;->STATUS:Lio/grpc/internal/AbstractStream$Phase;

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractClientStream;->inboundPhase(Lio/grpc/internal/AbstractStream$Phase;)Lio/grpc/internal/AbstractStream$Phase;

    .line 231
    iput-object p1, p0, Lio/grpc/internal/AbstractClientStream;->status:Lio/grpc/Status;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream;->closeListenerTask:Ljava/lang/Runnable;

    .line 235
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->isDeframerStalled()Z

    move-result v0

    .line 237
    if-nez p2, :cond_3

    if-eqz v0, :cond_4

    .line 239
    :cond_3
    invoke-direct {p0, p1, p3}, Lio/grpc/internal/AbstractClientStream;->closeListener(Lio/grpc/Status;Lio/grpc/Metadata;)V

    goto :goto_1

    .line 242
    :cond_4
    invoke-direct {p0, p1, p3}, Lio/grpc/internal/AbstractClientStream;->newCloseListenerTask(Lio/grpc/Status;Lio/grpc/Metadata;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/AbstractClientStream;->closeListenerTask:Ljava/lang/Runnable;

    goto :goto_1
.end method
