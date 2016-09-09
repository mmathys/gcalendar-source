.class public Lio/grpc/internal/MessageDeframer;
.super Ljava/lang/Object;
.source "MessageDeframer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;,
        Lio/grpc/internal/MessageDeframer$State;,
        Lio/grpc/internal/MessageDeframer$Listener;
    }
.end annotation


# instance fields
.field private compressedFlag:Z

.field private decompressor:Lio/grpc/Decompressor;

.field private deliveryStalled:Z

.field private endOfStream:Z

.field private inDelivery:Z

.field private final listener:Lio/grpc/internal/MessageDeframer$Listener;

.field private final maxMessageSize:I

.field private nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

.field private pendingDeliveries:J

.field private requiredLength:I

.field private state:Lio/grpc/internal/MessageDeframer$State;

.field private unprocessed:Lio/grpc/internal/CompositeReadableBuffer;


# direct methods
.method public constructor <init>(Lio/grpc/internal/MessageDeframer$Listener;Lio/grpc/Decompressor;I)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Lio/grpc/internal/MessageDeframer$State;->HEADER:Lio/grpc/internal/MessageDeframer$State;

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    .line 103
    const/4 v0, 0x5

    iput v0, p0, Lio/grpc/internal/MessageDeframer;->requiredLength:I

    .line 107
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->deliveryStalled:Z

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->inDelivery:Z

    .line 121
    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/MessageDeframer$Listener;

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    .line 122
    const-string v0, "decompressor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Decompressor;

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->decompressor:Lio/grpc/Decompressor;

    .line 123
    iput p3, p0, Lio/grpc/internal/MessageDeframer;->maxMessageSize:I

    .line 124
    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lio/grpc/internal/MessageDeframer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "MessageDeframer is already closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 223
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deliver()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    iget-boolean v2, p0, Lio/grpc/internal/MessageDeframer;->inDelivery:Z

    if-eqz v2, :cond_0

    .line 288
    :goto_0
    return-void

    .line 234
    :cond_0
    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->inDelivery:Z

    .line 237
    :goto_1
    :try_start_0
    iget-wide v2, p0, Lio/grpc/internal/MessageDeframer;->pendingDeliveries:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->readRequiredBytes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    sget-object v2, Lio/grpc/internal/MessageDeframer$1;->$SwitchMap$io$grpc$internal$MessageDeframer$State:[I

    iget-object v3, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    invoke-virtual {v3}, Lio/grpc/internal/MessageDeframer$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xf

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lio/grpc/internal/MessageDeframer;->inDelivery:Z

    throw v0

    .line 240
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->processHeader()V

    goto :goto_1

    .line 244
    :pswitch_1
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->processBody()V

    .line 248
    iget-wide v2, p0, Lio/grpc/internal/MessageDeframer;->pendingDeliveries:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lio/grpc/internal/MessageDeframer;->pendingDeliveries:J

    goto :goto_1

    .line 263
    :cond_1
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v2}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 265
    :goto_2
    iget-boolean v3, p0, Lio/grpc/internal/MessageDeframer;->endOfStream:Z

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 266
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v2}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I

    move-result v2

    if-lez v2, :cond_3

    .line 267
    :goto_3
    if-nez v0, :cond_4

    .line 268
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    invoke-interface {v0}, Lio/grpc/internal/MessageDeframer$Listener;->endOfStream()V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->deliveryStalled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    iput-boolean v1, p0, Lio/grpc/internal/MessageDeframer;->inDelivery:Z

    goto/16 :goto_0

    :cond_2
    move v2, v1

    .line 263
    goto :goto_2

    :cond_3
    move v0, v1

    .line 266
    goto :goto_3

    .line 274
    :cond_4
    :try_start_2
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v2, "Encountered end-of-stream mid-frame"

    invoke-virtual {v0, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 280
    :cond_5
    iget-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->deliveryStalled:Z

    .line 281
    iput-boolean v2, p0, Lio/grpc/internal/MessageDeframer;->deliveryStalled:Z

    .line 282
    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    .line 283
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    invoke-interface {v0}, Lio/grpc/internal/MessageDeframer$Listener;->deliveryStalled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    :cond_6
    iput-boolean v1, p0, Lio/grpc/internal/MessageDeframer;->inDelivery:Z

    goto/16 :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCompressedBody()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->decompressor:Lio/grpc/Decompressor;

    sget-object v1, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    if-ne v0, v1, :cond_0

    .line 365
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v1, "Can\'t decode compressed frame as compression not configured."

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 371
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->decompressor:Lio/grpc/Decompressor;

    iget-object v1, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    const/4 v2, 0x1

    .line 372
    invoke-static {v1, v2}, Lio/grpc/internal/ReadableBuffers;->openStream(Lio/grpc/internal/ReadableBuffer;Z)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/Decompressor;->decompress(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 373
    new-instance v1, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;

    iget v2, p0, Lio/grpc/internal/MessageDeframer;->maxMessageSize:I

    invoke-direct {v1, v0, v2}, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 374
    :catch_0
    move-exception v0

    .line 375
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getUncompressedBody()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/ReadableBuffers;->openStream(Lio/grpc/internal/ReadableBuffer;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private processBody()V
    .locals 2

    .prologue
    .line 350
    iget-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->compressedFlag:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->getCompressedBody()Ljava/io/InputStream;

    move-result-object v0

    .line 351
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    .line 352
    iget-object v1, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    invoke-interface {v1, v0}, Lio/grpc/internal/MessageDeframer$Listener;->messageRead(Ljava/io/InputStream;)V

    .line 355
    sget-object v0, Lio/grpc/internal/MessageDeframer$State;->HEADER:Lio/grpc/internal/MessageDeframer$State;

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    .line 356
    const/4 v0, 0x5

    iput v0, p0, Lio/grpc/internal/MessageDeframer;->requiredLength:I

    .line 357
    return-void

    .line 350
    :cond_0
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->getUncompressedBody()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method private processHeader()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v0}, Lio/grpc/internal/CompositeReadableBuffer;->readUnsignedByte()I

    move-result v0

    .line 327
    and-int/lit16 v3, v0, 0xfe

    if-eqz v3, :cond_0

    .line 328
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v1, "Frame header malformed: reserved bits not zero"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 331
    :cond_0
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->compressedFlag:Z

    .line 334
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v0}, Lio/grpc/internal/CompositeReadableBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lio/grpc/internal/MessageDeframer;->requiredLength:I

    .line 335
    iget v0, p0, Lio/grpc/internal/MessageDeframer;->requiredLength:I

    if-ltz v0, :cond_1

    iget v0, p0, Lio/grpc/internal/MessageDeframer;->requiredLength:I

    iget v3, p0, Lio/grpc/internal/MessageDeframer;->maxMessageSize:I

    if-le v0, v3, :cond_3

    .line 336
    :cond_1
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "Frame size %d exceeds maximum: %d. If this is normal, increase the maxMessageSize in the channel/server builder"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lio/grpc/internal/MessageDeframer;->requiredLength:I

    .line 338
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v2, p0, Lio/grpc/internal/MessageDeframer;->maxMessageSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 336
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    move v0, v2

    .line 331
    goto :goto_0

    .line 342
    :cond_3
    sget-object v0, Lio/grpc/internal/MessageDeframer$State;->BODY:Lio/grpc/internal/MessageDeframer$State;

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->state:Lio/grpc/internal/MessageDeframer$State;

    .line 343
    return-void
.end method

.method private readRequiredBytes()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 296
    .line 298
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    if-nez v1, :cond_0

    .line 299
    new-instance v1, Lio/grpc/internal/CompositeReadableBuffer;

    invoke-direct {v1}, Lio/grpc/internal/CompositeReadableBuffer;-><init>()V

    iput-object v1, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    move v1, v0

    .line 304
    :goto_0
    :try_start_1
    iget v2, p0, Lio/grpc/internal/MessageDeframer;->requiredLength:I

    iget-object v3, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v3}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_4

    .line 305
    iget-object v3, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v3}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 315
    if-lez v1, :cond_1

    .line 316
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    invoke-interface {v2, v1}, Lio/grpc/internal/MessageDeframer$Listener;->bytesRead(I)V

    .line 313
    :cond_1
    :goto_1
    return v0

    .line 309
    :cond_2
    :try_start_2
    iget-object v3, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v3}, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 310
    add-int/2addr v1, v2

    .line 311
    iget-object v3, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    iget-object v4, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v4, v2}, Lio/grpc/internal/CompositeReadableBuffer;->readBytes(I)Lio/grpc/internal/CompositeReadableBuffer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    :goto_2
    if-lez v1, :cond_3

    .line 316
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    invoke-interface {v2, v1}, Lio/grpc/internal/MessageDeframer$Listener;->bytesRead(I)V

    :cond_3
    throw v0

    .line 313
    :cond_4
    const/4 v0, 0x1

    .line 315
    if-lez v1, :cond_1

    .line 316
    iget-object v2, p0, Lio/grpc/internal/MessageDeframer;->listener:Lio/grpc/internal/MessageDeframer$Listener;

    invoke-interface {v2, v1}, Lio/grpc/internal/MessageDeframer$Listener;->bytesRead(I)V

    goto :goto_1

    .line 315
    :catchall_1
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v0}, Lio/grpc/internal/CompositeReadableBuffer;->close()V

    .line 202
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v0}, Lio/grpc/internal/CompositeReadableBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_1
    iput-object v1, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    .line 207
    iput-object v1, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    .line 209
    return-void

    .line 206
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    .line 207
    iput-object v1, p0, Lio/grpc/internal/MessageDeframer;->nextFrame:Lio/grpc/internal/CompositeReadableBuffer;

    throw v0
.end method

.method public deframe(Lio/grpc/internal/ReadableBuffer;Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 165
    const-string v0, "data"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :try_start_0
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->checkNotClosed()V

    .line 169
    iget-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->endOfStream:Z

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    const-string v3, "Past end of stream"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :try_start_1
    iput-boolean p2, p0, Lio/grpc/internal/MessageDeframer;->endOfStream:Z

    .line 176
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->deliver()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    return-void

    :cond_0
    move v0, v1

    .line 169
    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    move v1, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 179
    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->close()V

    :cond_1
    throw v0

    .line 178
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer;->unprocessed:Lio/grpc/internal/CompositeReadableBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStalled()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lio/grpc/internal/MessageDeframer;->deliveryStalled:Z

    return v0
.end method

.method public request(I)V
    .locals 4

    .prologue
    .line 146
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "numMessages must be > 0"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 147
    invoke-virtual {p0}, Lio/grpc/internal/MessageDeframer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :goto_1
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :cond_1
    iget-wide v0, p0, Lio/grpc/internal/MessageDeframer;->pendingDeliveries:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/internal/MessageDeframer;->pendingDeliveries:J

    .line 151
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer;->deliver()V

    goto :goto_1
.end method

.method public setDecompressor(Lio/grpc/Decompressor;)V
    .locals 1

    .prologue
    .line 134
    const-string v0, "Can\'t pass an empty decompressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Decompressor;

    iput-object v0, p0, Lio/grpc/internal/MessageDeframer;->decompressor:Lio/grpc/Decompressor;

    .line 135
    return-void
.end method
