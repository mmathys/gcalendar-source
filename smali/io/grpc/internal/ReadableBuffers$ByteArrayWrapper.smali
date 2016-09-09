.class Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;
.super Lio/grpc/internal/AbstractReadableBuffer;
.source "ReadableBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ReadableBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayWrapper"
.end annotation


# instance fields
.field final bytes:[B

.field final end:I

.field offset:I


# direct methods
.method constructor <init>([B)V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;-><init>([BII)V

    .line 150
    return-void
.end method

.method constructor <init>([BII)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    invoke-direct {p0}, Lio/grpc/internal/AbstractReadableBuffer;-><init>()V

    .line 153
    if-ltz p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "offset must be >= 0"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 154
    if-ltz p3, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "length must be >= 0"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 155
    add-int v0, p2, p3

    array-length v3, p1

    if-gt v0, v3, :cond_2

    :goto_2
    const-string v0, "offset + length exceeds array boundary"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 157
    const-string v0, "bytes"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->bytes:[B

    .line 158
    iput p2, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    .line 159
    add-int v0, p2, p3

    iput v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->end:I

    .line 160
    return-void

    :cond_0
    move v0, v2

    .line 153
    goto :goto_0

    :cond_1
    move v0, v2

    .line 154
    goto :goto_1

    :cond_2
    move v1, v2

    .line 155
    goto :goto_2
.end method


# virtual methods
.method public bridge synthetic readBytes(I)Lio/grpc/internal/ReadableBuffer;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->readBytes(I)Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(I)Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->checkReadable(I)V

    .line 204
    iget v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    .line 205
    iget v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    .line 206
    new-instance v1, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;

    iget-object v2, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->bytes:[B

    invoke-direct {v1, v2, v0, p1}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;-><init>([BII)V

    return-object v1
.end method

.method public readBytes([BII)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->bytes:[B

    iget v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    add-int/2addr v0, p3

    iput v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    .line 183
    return-void
.end method

.method public readUnsignedByte()I
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->checkReadable(I)V

    .line 176
    iget-object v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->bytes:[B

    iget v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readableBytes()I
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->end:I

    iget v1, p0, Lio/grpc/internal/ReadableBuffers$ByteArrayWrapper;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method
