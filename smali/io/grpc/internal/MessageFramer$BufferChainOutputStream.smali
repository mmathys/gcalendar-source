.class final Lio/grpc/internal/MessageFramer$BufferChainOutputStream;
.super Ljava/io/OutputStream;
.source "MessageFramer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/MessageFramer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BufferChainOutputStream"
.end annotation


# instance fields
.field private final bufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/grpc/internal/WritableBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private current:Lio/grpc/internal/WritableBuffer;

.field final synthetic this$0:Lio/grpc/internal/MessageFramer;


# direct methods
.method private constructor <init>(Lio/grpc/internal/MessageFramer;)V
    .locals 1

    .prologue
    .line 335
    iput-object p1, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->this$0:Lio/grpc/internal/MessageFramer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->bufferList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/MessageFramer;Lio/grpc/internal/MessageFramer$1;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;-><init>(Lio/grpc/internal/MessageFramer;)V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;)I
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->readableBytes()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lio/grpc/internal/MessageFramer$BufferChainOutputStream;)Ljava/util/List;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->bufferList:Ljava/util/List;

    return-object v0
.end method

.method private readableBytes()I
    .locals 3

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 379
    iget-object v1, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->bufferList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/WritableBuffer;

    .line 380
    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->readableBytes()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 381
    goto :goto_0

    .line 382
    :cond_0
    return v1
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->current:Lio/grpc/internal/WritableBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->current:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/WritableBuffer;->writableBytes()I

    move-result v0

    if-lez v0, :cond_0

    .line 347
    iget-object v0, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->current:Lio/grpc/internal/WritableBuffer;

    int-to-byte v1, p1

    invoke-interface {v0, v1}, Lio/grpc/internal/WritableBuffer;->write(B)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 351
    invoke-virtual {p0, v0, v2, v3}, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 4

    .prologue
    .line 356
    iget-object v0, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->current:Lio/grpc/internal/WritableBuffer;

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->this$0:Lio/grpc/internal/MessageFramer;

    # getter for: Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;
    invoke-static {v0}, Lio/grpc/internal/MessageFramer;->access$500(Lio/grpc/internal/MessageFramer;)Lio/grpc/internal/WritableBufferAllocator;

    move-result-object v0

    invoke-interface {v0, p3}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->current:Lio/grpc/internal/WritableBuffer;

    .line 359
    iget-object v0, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->bufferList:Ljava/util/List;

    iget-object v1, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->current:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v0, p3

    move v1, p2

    .line 361
    :goto_0
    if-lez v0, :cond_2

    .line 362
    iget-object v2, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->current:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v2}, Lio/grpc/internal/WritableBuffer;->writableBytes()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 363
    if-nez v2, :cond_1

    .line 366
    iget-object v2, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->current:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v2}, Lio/grpc/internal/WritableBuffer;->readableBytes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 367
    iget-object v3, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->this$0:Lio/grpc/internal/MessageFramer;

    # getter for: Lio/grpc/internal/MessageFramer;->bufferAllocator:Lio/grpc/internal/WritableBufferAllocator;
    invoke-static {v3}, Lio/grpc/internal/MessageFramer;->access$500(Lio/grpc/internal/MessageFramer;)Lio/grpc/internal/WritableBufferAllocator;

    move-result-object v3

    invoke-interface {v3, v2}, Lio/grpc/internal/WritableBufferAllocator;->allocate(I)Lio/grpc/internal/WritableBuffer;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->current:Lio/grpc/internal/WritableBuffer;

    .line 368
    iget-object v2, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->bufferList:Ljava/util/List;

    iget-object v3, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->current:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    :cond_1
    iget-object v3, p0, Lio/grpc/internal/MessageFramer$BufferChainOutputStream;->current:Lio/grpc/internal/WritableBuffer;

    invoke-interface {v3, p1, v1, v2}, Lio/grpc/internal/WritableBuffer;->write([BII)V

    .line 371
    add-int/2addr v1, v2

    .line 372
    sub-int/2addr v0, v2

    goto :goto_0

    .line 375
    :cond_2
    return-void
.end method
