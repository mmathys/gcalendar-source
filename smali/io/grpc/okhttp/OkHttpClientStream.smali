.class Lio/grpc/okhttp/OkHttpClientStream;
.super Lio/grpc/internal/Http2ClientStream;
.source "OkHttpClientStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpClientStream$PendingData;
    }
.end annotation


# static fields
.field private static final EMPTY_BUFFER:Lokio/Buffer;


# instance fields
.field private authority:Ljava/lang/String;

.field private cancelSent:Z

.field private final frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

.field private headers:Lio/grpc/Metadata;

.field private volatile id:Ljava/lang/Integer;

.field private final lock:Ljava/lang/Object;

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor",
            "<**>;"
        }
    .end annotation
.end field

.field private final outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

.field private outboundFlowState:Ljava/lang/Object;

.field private pendingData:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lio/grpc/okhttp/OkHttpClientStream$PendingData;",
            ">;"
        }
    .end annotation
.end field

.field private processedWindow:I

.field private requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final transport:Lio/grpc/okhttp/OkHttpClientTransport;

.field private final userAgent:Ljava/lang/String;

.field private window:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    sput-object v0, Lio/grpc/okhttp/OkHttpClientStream;->EMPTY_BUFFER:Lokio/Buffer;

    return-void
.end method

.method constructor <init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/okhttp/AsyncFrameWriter;Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OutboundFlowController;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor",
            "<**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/okhttp/AsyncFrameWriter;",
            "Lio/grpc/okhttp/OkHttpClientTransport;",
            "Lio/grpc/okhttp/OutboundFlowController;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const v1, 0xffff

    .line 101
    new-instance v0, Lio/grpc/okhttp/OkHttpWritableBufferAllocator;

    invoke-direct {v0}, Lio/grpc/okhttp/OkHttpWritableBufferAllocator;-><init>()V

    invoke-direct {p0, v0, p7}, Lio/grpc/internal/Http2ClientStream;-><init>(Lio/grpc/internal/WritableBufferAllocator;I)V

    .line 65
    iput v1, p0, Lio/grpc/okhttp/OkHttpClientStream;->window:I

    .line 67
    iput v1, p0, Lio/grpc/okhttp/OkHttpClientStream;->processedWindow:I

    .line 86
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->pendingData:Ljava/util/Queue;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->cancelSent:Z

    .line 102
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream;->method:Lio/grpc/MethodDescriptor;

    .line 103
    iput-object p2, p0, Lio/grpc/okhttp/OkHttpClientStream;->headers:Lio/grpc/Metadata;

    .line 104
    iput-object p3, p0, Lio/grpc/okhttp/OkHttpClientStream;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    .line 105
    iput-object p4, p0, Lio/grpc/okhttp/OkHttpClientStream;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 106
    iput-object p5, p0, Lio/grpc/okhttp/OkHttpClientStream;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    .line 107
    iput-object p6, p0, Lio/grpc/okhttp/OkHttpClientStream;->lock:Ljava/lang/Object;

    .line 108
    iput-object p8, p0, Lio/grpc/okhttp/OkHttpClientStream;->authority:Ljava/lang/String;

    .line 109
    iput-object p9, p0, Lio/grpc/okhttp/OkHttpClientStream;->userAgent:Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method public allocated()V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->onStreamAllocated()V

    .line 186
    return-void
.end method

.method getOutboundFlowState()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->outboundFlowState:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Lio/grpc/MethodDescriptor$MethodType;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic id()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->id()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method onStreamSentBytes(I)V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpClientStream;->onSentBytes(I)V

    .line 190
    return-void
.end method

.method public remoteEndClosed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 289
    invoke-super {p0}, Lio/grpc/internal/Http2ClientStream;->remoteEndClosed()V

    .line 290
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->canSend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->id()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lio/grpc/okhttp/AsyncFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->id()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v3, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->finishStream(ILio/grpc/Status;Lio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 296
    return-void
.end method

.method public request(I)V
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpClientStream;->requestMessagesFromDeframer(I)V

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected returnProcessedBytes(I)V
    .locals 6

    .prologue
    .line 251
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_0
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->processedWindow:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->processedWindow:I

    .line 253
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->processedWindow:I

    const/16 v2, 0x7fff

    if-gt v0, v2, :cond_0

    .line 254
    const v0, 0xffff

    iget v2, p0, Lio/grpc/okhttp/OkHttpClientStream;->processedWindow:I

    sub-int/2addr v0, v2

    .line 255
    iget v2, p0, Lio/grpc/okhttp/OkHttpClientStream;->window:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/grpc/okhttp/OkHttpClientStream;->window:I

    .line 256
    iget v2, p0, Lio/grpc/okhttp/OkHttpClientStream;->processedWindow:I

    add-int/2addr v2, v0

    iput v2, p0, Lio/grpc/okhttp/OkHttpClientStream;->processedWindow:I

    .line 257
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientStream;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->id()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lio/grpc/okhttp/AsyncFrameWriter;->windowUpdate(IJ)V

    .line 259
    :cond_0
    monitor-exit v1

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected sendCancel(Lio/grpc/Status;)V
    .locals 4

    .prologue
    .line 264
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->cancelSent:Z

    if-eqz v0, :cond_0

    .line 266
    monitor-exit v1

    .line 285
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->cancelSent:Z

    .line 269
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->pendingData:Ljava/util/Queue;

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0, p0}, Lio/grpc/okhttp/OkHttpClientTransport;->removePendingStream(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->requestHeaders:Ljava/util/List;

    .line 274
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->pendingData:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpClientStream$PendingData;

    .line 275
    iget-object v0, v0, Lio/grpc/okhttp/OkHttpClientStream$PendingData;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 277
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->pendingData:Ljava/util/Queue;

    .line 278
    const/4 v0, 0x1

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {p0, p1, v0, v2}, Lio/grpc/okhttp/OkHttpClientStream;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    .line 284
    :goto_2
    monitor-exit v1

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->id()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v2, p1, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->finishStream(ILio/grpc/Status;Lio/grpc/okhttp/internal/framed/ErrorCode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method protected sendFrame(Lio/grpc/internal/WritableBuffer;ZZ)V
    .locals 4

    .prologue
    .line 223
    if-nez p1, :cond_1

    .line 224
    sget-object v0, Lio/grpc/okhttp/OkHttpClientStream;->EMPTY_BUFFER:Lokio/Buffer;

    .line 233
    :cond_0
    :goto_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientStream;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 234
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpClientStream;->cancelSent:Z

    if-eqz v1, :cond_2

    .line 235
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_1
    return-void

    .line 226
    :cond_1
    check-cast p1, Lio/grpc/okhttp/OkHttpWritableBuffer;

    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer()Lokio/Buffer;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    long-to-int v1, v2

    .line 228
    if-lez v1, :cond_0

    .line 229
    invoke-virtual {p0, v1}, Lio/grpc/okhttp/OkHttpClientStream;->onSendingBytes(I)V

    goto :goto_0

    .line 237
    :cond_2
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream;->pendingData:Ljava/util/Queue;

    if-eqz v1, :cond_3

    .line 239
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream;->pendingData:Ljava/util/Queue;

    new-instance v3, Lio/grpc/okhttp/OkHttpClientStream$PendingData;

    invoke-direct {v3, v0, p2, p3}, Lio/grpc/okhttp/OkHttpClientStream$PendingData;-><init>(Lokio/Buffer;ZZ)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 246
    :goto_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 241
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->id()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    const-string v3, "streamId should be set"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 244
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->id()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, p2, v3, v0, p3}, Lio/grpc/okhttp/OutboundFlowController;->data(ZILokio/Buffer;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 241
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->listener()Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "must be call before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 135
    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->authority:Ljava/lang/String;

    .line 136
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setOutboundFlowState(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream;->outboundFlowState:Ljava/lang/Object;

    .line 300
    return-void
.end method

.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 4

    .prologue
    .line 140
    invoke-super {p0, p1}, Lio/grpc/internal/Http2ClientStream;->start(Lio/grpc/internal/ClientStreamListener;)V

    .line 141
    const-string v1, "/"

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream;->headers:Lio/grpc/Metadata;

    sget-object v2, Lio/grpc/internal/GrpcUtil;->USER_AGENT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v1, v2}, Lio/grpc/Metadata;->removeAll(Lio/grpc/Metadata$Key;)Ljava/lang/Iterable;

    .line 143
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream;->headers:Lio/grpc/Metadata;

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientStream;->authority:Ljava/lang/String;

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientStream;->userAgent:Ljava/lang/String;

    .line 144
    invoke-static {v1, v0, v2, v3}, Lio/grpc/okhttp/Headers;->createRequestHeaders(Lio/grpc/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream;->headers:Lio/grpc/Metadata;

    .line 146
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    iput-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->requestHeaders:Ljava/util/List;

    .line 148
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0, p0}, Lio/grpc/okhttp/OkHttpClientTransport;->streamReadyToStart(Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 149
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public start(Ljava/lang/Integer;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 154
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->id:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    const-string v2, "the stream has been started with id %s"

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientStream;->id:Ljava/lang/Integer;

    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 156
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream;->id:Ljava/lang/Integer;

    .line 158
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->pendingData:Ljava/util/Queue;

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lio/grpc/okhttp/OkHttpClientStream;->requestHeaders:Ljava/util/List;

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lio/grpc/okhttp/AsyncFrameWriter;->synStream(ZZIILjava/util/List;)V

    .line 161
    iput-object v8, p0, Lio/grpc/okhttp/OkHttpClientStream;->requestHeaders:Ljava/util/List;

    move v2, v1

    .line 164
    :goto_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->pendingData:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->pendingData:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpClientStream$PendingData;

    .line 166
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientStream;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    iget-boolean v4, v0, Lio/grpc/okhttp/OkHttpClientStream$PendingData;->endOfStream:Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, v0, Lio/grpc/okhttp/OkHttpClientStream$PendingData;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v4, v5, v7, v1}, Lio/grpc/okhttp/OutboundFlowController;->data(ZILokio/Buffer;Z)V

    .line 167
    iget-boolean v0, v0, Lio/grpc/okhttp/OkHttpClientStream$PendingData;->flush:Z

    if-eqz v0, :cond_4

    move v0, v6

    :goto_2
    move v2, v0

    .line 170
    goto :goto_1

    :cond_0
    move v0, v1

    .line 155
    goto :goto_0

    .line 171
    :cond_1
    if-eqz v2, :cond_2

    .line 172
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    .line 174
    :cond_2
    iput-object v8, p0, Lio/grpc/okhttp/OkHttpClientStream;->pendingData:Ljava/util/Queue;

    .line 176
    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public transportDataReceived(Lokio/Buffer;Z)V
    .locals 4

    .prologue
    .line 209
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 210
    iget v2, p0, Lio/grpc/okhttp/OkHttpClientStream;->window:I

    int-to-long v2, v2

    sub-long v0, v2, v0

    long-to-int v0, v0

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->window:I

    .line 211
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->window:I

    if-gez v0, :cond_0

    .line 212
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->frameWriter:Lio/grpc/okhttp/AsyncFrameWriter;

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->id()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lio/grpc/okhttp/AsyncFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 213
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->id()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "Received data size exceeded our receiving window size"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/okhttp/OkHttpClientTransport;->finishStream(ILio/grpc/Status;Lio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v0, Lio/grpc/okhttp/OkHttpReadableBuffer;

    invoke-direct {v0, p1}, Lio/grpc/okhttp/OkHttpReadableBuffer;-><init>(Lokio/Buffer;)V

    invoke-super {p0, v0, p2}, Lio/grpc/internal/Http2ClientStream;->transportDataReceived(Lio/grpc/internal/ReadableBuffer;Z)V

    goto :goto_0
.end method

.method public transportHeadersReceived(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 197
    if-eqz p2, :cond_0

    .line 198
    invoke-static {p1}, Lio/grpc/okhttp/Utils;->convertTrailers(Ljava/util/List;)Lio/grpc/Metadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/okhttp/OkHttpClientStream;->transportTrailersReceived(Lio/grpc/Metadata;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-static {p1}, Lio/grpc/okhttp/Utils;->convertHeaders(Ljava/util/List;)Lio/grpc/Metadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/okhttp/OkHttpClientStream;->transportHeadersReceived(Lio/grpc/Metadata;)V

    goto :goto_0
.end method
