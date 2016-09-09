.class public Lio/grpc/internal/CompositeReadableBuffer;
.super Lio/grpc/internal/AbstractReadableBuffer;
.source "CompositeReadableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;
    }
.end annotation


# instance fields
.field private final buffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lio/grpc/internal/ReadableBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private readableBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lio/grpc/internal/AbstractReadableBuffer;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    return-void
.end method

.method private advanceBufferIfNecessary()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 209
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    .line 212
    :cond_0
    return-void
.end method

.method private execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;I)V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0, p2}, Lio/grpc/internal/CompositeReadableBuffer;->checkReadable(I)V

    .line 184
    :goto_0
    if-lez p2, :cond_2

    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 186
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 189
    invoke-virtual {p1, v0, v1}, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->read(Lio/grpc/internal/ReadableBuffer;I)V

    .line 190
    invoke-virtual {p1}, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    return-void

    .line 194
    :cond_1
    sub-int/2addr p2, v1

    .line 195
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 184
    invoke-direct {p0}, Lio/grpc/internal/CompositeReadableBuffer;->advanceBufferIfNecessary()V

    goto :goto_0

    .line 198
    :cond_2
    if-lez p2, :cond_0

    .line 200
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Failed executing read operation"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public addBuffer(Lio/grpc/internal/ReadableBuffer;)V
    .locals 2

    .prologue
    .line 60
    instance-of v0, p1, Lio/grpc/internal/CompositeReadableBuffer;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 62
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_0
    check-cast p1, Lio/grpc/internal/CompositeReadableBuffer;

    .line 67
    :goto_1
    iget-object v0, p1, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p1, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 69
    iget-object v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_1
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    iget v1, p1, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 72
    const/4 v0, 0x0

    iput v0, p1, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 73
    invoke-virtual {p1}, Lio/grpc/internal/CompositeReadableBuffer;->close()V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 172
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public readBytes(I)Lio/grpc/internal/CompositeReadableBuffer;
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lio/grpc/internal/CompositeReadableBuffer;->checkReadable(I)V

    .line 154
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 156
    new-instance v2, Lio/grpc/internal/CompositeReadableBuffer;

    invoke-direct {v2}, Lio/grpc/internal/CompositeReadableBuffer;-><init>()V

    .line 157
    :goto_0
    if-lez p1, :cond_1

    .line 158
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 159
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 160
    invoke-interface {v0, p1}, Lio/grpc/internal/ReadableBuffer;->readBytes(I)Lio/grpc/internal/ReadableBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V

    .line 161
    const/4 v0, 0x0

    :goto_1
    move p1, v0

    .line 166
    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ReadableBuffer;

    invoke-virtual {v2, v1}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V

    .line 164
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_1

    .line 167
    :cond_1
    return-object v2
.end method

.method public bridge synthetic readBytes(I)Lio/grpc/internal/ReadableBuffer;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lio/grpc/internal/CompositeReadableBuffer;->readBytes(I)Lio/grpc/internal/CompositeReadableBuffer;

    move-result-object v0

    return-object v0
.end method

.method public readBytes([BII)V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$3;

    invoke-direct {v0, p0, p2, p1}, Lio/grpc/internal/CompositeReadableBuffer$3;-><init>(Lio/grpc/internal/CompositeReadableBuffer;I[B)V

    invoke-direct {p0, v0, p3}, Lio/grpc/internal/CompositeReadableBuffer;->execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;I)V

    .line 115
    return-void
.end method

.method public readUnsignedByte()I
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$1;

    invoke-direct {v0, p0}, Lio/grpc/internal/CompositeReadableBuffer$1;-><init>(Lio/grpc/internal/CompositeReadableBuffer;)V

    .line 89
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/grpc/internal/CompositeReadableBuffer;->execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;I)V

    .line 90
    iget v0, v0, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->value:I

    return v0
.end method

.method public readableBytes()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    return v0
.end method
