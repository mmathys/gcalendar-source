.class final Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;
.super Ljava/io/FilterInputStream;
.source "MessageDeframer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/MessageDeframer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeEnforcingInputStream"
.end annotation


# instance fields
.field private count:J

.field private mark:J

.field private final maxMessageSize:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 386
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->mark:J

    .line 390
    iput p2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->maxMessageSize:I

    .line 391
    return-void
.end method

.method private verifySize()V
    .locals 6

    .prologue
    .line 442
    iget-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    iget v2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->maxMessageSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 443
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v1, "Compressed frame exceeds maximum frame size: %d. Bytes read: %d. If this is normal, increase the maxMessageSize in the channel/server builder"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->maxMessageSize:I

    .line 446
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 443
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 448
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized mark(I)V
    .locals 2

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 424
    iget-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    iput-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->mark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    monitor-exit p0

    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 396
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 397
    iget-wide v2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    .line 399
    :cond_0
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->verifySize()V

    .line 400
    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 406
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 407
    iget-wide v2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    .line 409
    :cond_0
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->verifySize()V

    .line 410
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 433
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->mark:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 434
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 438
    iget-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->mark:J

    iput-wide v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 416
    iget-wide v2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->count:J

    .line 417
    invoke-direct {p0}, Lio/grpc/internal/MessageDeframer$SizeEnforcingInputStream;->verifySize()V

    .line 418
    return-wide v0
.end method
