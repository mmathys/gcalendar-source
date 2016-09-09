.class Lio/grpc/internal/ReadableBuffers$BufferInputStream;
.super Ljava/io/InputStream;
.source "ReadableBuffers.java"

# interfaces
.implements Lio/grpc/KnownLength;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ReadableBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferInputStream"
.end annotation


# instance fields
.field final buffer:Lio/grpc/internal/ReadableBuffer;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ReadableBuffer;)V
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 319
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    iput-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    .line 320
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const/4 v0, -0x1

    .line 333
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readUnsignedByte()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 340
    const/4 v0, -0x1

    .line 345
    :goto_0
    return v0

    .line 343
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 344
    iget-object v1, p0, Lio/grpc/internal/ReadableBuffers$BufferInputStream;->buffer:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v1, p1, p2, v0}, Lio/grpc/internal/ReadableBuffer;->readBytes([BII)V

    goto :goto_0
.end method
