.class public Lio/grpc/internal/MessageFramer;
.super Ljava/lang/Object;
.source "MessageFramer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/MessageFramer$BufferChainOutputStream;,
        Lio/grpc/internal/MessageFramer$OutputStreamAdapter;,
        Lio/grpc/internal/MessageFramer$Sink;
    }
.end annotation


# instance fields
.field private buffer:Lio/grpc/internal/WritableBuffer;

.field private final bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

.field private closed:Z

.field private compressor:Lio/grpc/Compressor;

.field private final headerScratch:[B

.field private messageCompression:Z

.field private final outputStreamAdapter:Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

.field private final sink:Lio/grpc/internal/MessageFramer$Sink;


# direct methods
.method public constructor <init>(Lio/grpc/internal/MessageFramer$Sink;Lio/grpc/internal/WritableBufferAllocator;)V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sget-object v0, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MessageFramer;->messageCompression:Z

    .line 85
    new-instance v0, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/MessageFramer$OutputStreamAdapter;-><init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->outputStreamAdapter:Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->headerScratch:[B

    .line 97
    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/MessageFramer$Sink;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    .line 98
    const-string v0, "bufferAllocator"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/WritableBufferAllocator;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    .line 99
    return-void
.end method

.method static synthetic access$400(Lio/grpc/internal/MessageFramer;[BII)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/internal/MessageFramer;->writeRaw([BII)V

    return-void
.end method

.method static synthetic access$500(Lio/grpc/internal/MessageFramer;)Lio/grpc/internal/WritableBufferAllocator;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    return-object v0
.end method

.method private commitToSink(ZZ)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 305
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 306
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    invoke-interface {v1, v0, p1, p2}, Lio/grpc/internal/MessageFramer$Sink;->deliverFrame(Lio/grpc/internal/WritableBuffer;ZZ)V

    .line 307
    return-void
.end method

.method private getKnownLength(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    instance-of v0, p1, Lio/grpc/KnownLength;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private releaseBuffer()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->release()V

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 301
    :cond_0
    return-void
.end method

.method private verifyNotClosed()V
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lio/grpc/internal/MessageFramer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Framer already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    return-void
.end method

.method private writeBufferChain(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->headerScratch:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 201
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 202
    # invokes: Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->readableBytes()I
    invoke-static {p1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->access$200(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;)I

    move-result v0

    .line 203
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 204
    iget-object v3, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v3

    .line 205
    iget-object v4, p0, Lio/grpc/internal/MessageFramer;->headerScratch:[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-interface {v3, v4, v1, v2}, Lio/grpc/internal/WritableBuffer;->write([BII)V

    .line 206
    if-nez v0, :cond_1

    .line 208
    iput-object v3, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 223
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 201
    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    invoke-interface {v0, v3, v1, v1}, Lio/grpc/internal/MessageFramer$Sink;->deliverFrame(Lio/grpc/internal/WritableBuffer;ZZ)V

    .line 216
    # getter for: Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->bufferList:Ljava/util/List;
    invoke-static {p1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->access$300(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;)Ljava/util/List;

    move-result-object v3

    move v2, v1

    .line 217
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_2

    .line 218
    iget-object v4, p0, Lio/grpc/internal/MessageFramer;->sink:Lio/grpc/internal/MessageFramer$Sink;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/WritableBuffer;

    invoke-interface {v4, v0, v1, v1}, Lio/grpc/internal/MessageFramer$Sink;->deliverFrame(Lio/grpc/internal/WritableBuffer;ZZ)V

    .line 217
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 222
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/WritableBuffer;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    goto :goto_1
.end method

.method private writeCompressed(Ljava/io/InputStream;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;-><init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V

    .line 160
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    invoke-interface {v1, v0}, Lio/grpc/Compressor;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 163
    :try_start_0
    invoke-static {p1, v1}, Lio/grpc/internal/MessageFramer;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 165
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 168
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/grpc/internal/MessageFramer;->writeBufferChain(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;Z)V

    .line 169
    return v2

    .line 165
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method private writeKnownLength(Ljava/io/InputStream;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->headerScratch:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 185
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 186
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 189
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p2

    invoke-interface {v0, v3}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 192
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->headerScratch:[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lio/grpc/internal/MessageFramer;->writeRaw([BII)V

    .line 193
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->outputStreamAdapter:Lio/grpc/internal/MessageFramer$OutputStreamAdapter;

    invoke-static {p1, v0}, Lio/grpc/internal/MessageFramer;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 185
    goto :goto_0
.end method

.method private writeRaw([BII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    :goto_0
    if-lez p3, :cond_2

    .line 240
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->writableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0, v2, v2}, Lio/grpc/internal/MessageFramer;->commitToSink(ZZ)V

    .line 243
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;

    invoke-interface {v0, p3}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    .line 247
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->writableBytes()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 248
    iget-object v1, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v1, p1, p2, v0}, Lio/grpc/internal/WritableBuffer;->write([BII)V

    .line 249
    add-int/2addr p2, v0

    .line 250
    sub-int/2addr p3, v0

    .line 251
    goto :goto_0

    .line 252
    :cond_2
    return-void
.end method

.method private static writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    instance-of v0, p0, Lio/grpc/Drainable;

    if-eqz v0, :cond_0

    .line 228
    check-cast p0, Lio/grpc/Drainable;

    invoke-interface {p0, p1}, Lio/grpc/Drainable;->drainTo(Ljava/io/OutputStream;)I

    move-result v0

    .line 234
    :goto_0
    return v0

    .line 232
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2

    .line 233
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v1, "Message size overflow: %s"

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 234
    long-to-int v0, v2

    goto :goto_0

    .line 233
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private writeUncompressed(Ljava/io/InputStream;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 148
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 149
    invoke-direct {p0, p1, p2, v2}, Lio/grpc/internal/MessageFramer;->writeKnownLength(Ljava/io/InputStream;IZ)I

    move-result v0

    .line 154
    :goto_0
    return v0

    .line 151
    :cond_0
    new-instance v1, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;-><init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V

    .line 152
    invoke-static {p1, v1}, Lio/grpc/internal/MessageFramer;->writeToOutputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    .line 153
    invoke-direct {p0, v1, v2}, Lio/grpc/internal/MessageFramer;->writeBufferChain(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;Z)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 276
    invoke-virtual {p0}, Lio/grpc/internal/MessageFramer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iput-boolean v1, p0, Lio/grpc/internal/MessageFramer;->closed:Z

    .line 280
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0}, Lio/grpc/internal/MessageFramer;->releaseBuffer()V

    .line 283
    :cond_0
    invoke-direct {p0, v1, v1}, Lio/grpc/internal/MessageFramer;->commitToSink(ZZ)V

    .line 285
    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MessageFramer;->closed:Z

    .line 293
    invoke-direct {p0}, Lio/grpc/internal/MessageFramer;->releaseBuffer()V

    .line 294
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->buffer:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->readableBytes()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/grpc/internal/MessageFramer;->commitToSink(ZZ)V

    .line 261
    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lio/grpc/internal/MessageFramer;->closed:Z

    return v0
.end method

.method setCompressor(Lio/grpc/Compressor;)Lio/grpc/internal/MessageFramer;
    .locals 1

    .prologue
    .line 102
    const-string v0, "Can\'t pass an empty compressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Compressor;

    iput-object v0, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    .line 103
    return-object p0
.end method

.method public writePayload(Ljava/io/InputStream;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Lio/grpc/internal/MessageFramer;->verifyNotClosed()V

    .line 118
    iget-boolean v0, p0, Lio/grpc/internal/MessageFramer;->messageCompression:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/MessageFramer;->compressor:Lio/grpc/Compressor;

    sget-object v3, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 122
    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/internal/MessageFramer;->getKnownLength(Ljava/io/InputStream;)I

    move-result v3

    .line 123
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0, p1, v3}, Lio/grpc/internal/MessageFramer;->writeCompressed(Ljava/io/InputStream;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 141
    :goto_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eq v0, v3, :cond_2

    .line 142
    const-string v4, "Message length inaccurate %s != %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 143
    sget-object v1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    invoke-virtual {v1, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    move v0, v2

    .line 118
    goto :goto_0

    .line 126
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, v3}, Lio/grpc/internal/MessageFramer;->writeUncompressed(Ljava/io/InputStream;I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    .line 130
    sget-object v1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v2, "Failed to frame message"

    .line 131
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 134
    :catch_1
    move-exception v0

    .line 135
    sget-object v1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v2, "Failed to frame message"

    .line 136
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v0}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 145
    :cond_2
    return-void
.end method
