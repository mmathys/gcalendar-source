.class Lio/grpc/okhttp/OutboundFlowController;
.super Ljava/lang/Object;
.source "OutboundFlowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;,
        Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
    }
.end annotation


# instance fields
.field private final connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

.field private final frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

.field private initialWindowSize:I

.field private final transport:Lio/grpc/okhttp/OkHttpClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameWriter;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const v0, 0xffff

    iput v0, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    .line 60
    new-instance v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;-><init>(Lio/grpc/okhttp/OutboundFlowController;I)V

    iput-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    .line 63
    const-string v0, "transport"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpClientTransport;

    iput-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 64
    const-string v0, "frameWriter"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/framed/FrameWriter;

    iput-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    .line 65
    return-void
.end method

.method static synthetic access$100(Lio/grpc/okhttp/OutboundFlowController;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    return v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/internal/framed/FrameWriter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    return-object v0
.end method

.method private state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->getOutboundFlowState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    .line 173
    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    invoke-direct {v0, p0, p1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;-><init>(Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 175
    invoke-virtual {p1, v0}, Lio/grpc/okhttp/OkHttpClientStream;->setOutboundFlowState(Ljava/lang/Object;)V

    .line 177
    :cond_0
    return-object v0
.end method

.method private writeStreams()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->getActiveStreams()[Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object v6

    .line 185
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->window()I

    move-result v0

    .line 186
    array-length v2, v6

    move v5, v2

    :goto_0
    if-lez v5, :cond_2

    if-lez v0, :cond_2

    .line 188
    int-to-float v1, v0

    int-to-float v2, v5

    div-float/2addr v1, v2

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    move v4, v3

    move v2, v3

    .line 189
    :goto_1
    if-ge v4, v5, :cond_1

    if-lez v0, :cond_1

    .line 190
    aget-object v8, v6, v4

    .line 191
    invoke-direct {p0, v8}, Lio/grpc/okhttp/OutboundFlowController;->state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->unallocatedBytes()I

    move-result v9

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 194
    if-lez v9, :cond_0

    .line 195
    invoke-virtual {v1, v9}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->allocateBytes(I)V

    .line 196
    sub-int/2addr v0, v9

    .line 199
    :cond_0
    invoke-virtual {v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->unallocatedBytes()I

    move-result v1

    if-lez v1, :cond_5

    .line 202
    add-int/lit8 v1, v2, 0x1

    aput-object v8, v6, v2

    .line 189
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_1

    :cond_1
    move v5, v2

    .line 206
    goto :goto_0

    .line 209
    :cond_2
    new-instance v1, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;-><init>(Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OutboundFlowController$1;)V

    .line 210
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->getActiveStreams()[Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object v2

    array-length v4, v2

    move v0, v3

    :goto_3
    if-ge v0, v4, :cond_3

    aget-object v3, v2, v0

    .line 211
    invoke-direct {p0, v3}, Lio/grpc/okhttp/OutboundFlowController;->state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object v3

    .line 212
    invoke-virtual {v3}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->allocatedBytes()I

    move-result v5

    invoke-virtual {v3, v5, v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writeBytes(ILio/grpc/okhttp/OutboundFlowController$WriteStatus;)I

    .line 213
    invoke-virtual {v3}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->clearAllocatedBytes()V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 216
    :cond_3
    invoke-virtual {v1}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->hasWritten()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    .line 219
    :cond_4
    return-void

    :cond_5
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method data(ZILokio/Buffer;Z)V
    .locals 4

    .prologue
    .line 121
    const-string v0, "source"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/OkHttpClientTransport;->getStream(I)Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object v0

    .line 124
    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-direct {p0, v0}, Lio/grpc/okhttp/OutboundFlowController;->state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writableWindow()I

    move-result v1

    .line 133
    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->hasFrame()Z

    move-result v2

    .line 135
    invoke-virtual {v0, p3, p1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->newFrame(Lokio/Buffer;Z)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;

    move-result-object v0

    .line 136
    if-nez v2, :cond_2

    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 138
    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->write()V

    .line 139
    if-eqz p4, :cond_0

    .line 140
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->enqueue()V

    .line 148
    if-nez v2, :cond_3

    if-gtz v1, :cond_4

    .line 150
    :cond_3
    if-eqz p4, :cond_0

    .line 151
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    goto :goto_0

    .line 157
    :cond_4
    invoke-virtual {v0, v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->split(I)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState$Frame;->write()V

    .line 158
    if-eqz p4, :cond_0

    .line 159
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    goto :goto_0
.end method

.method flush()V
    .locals 2

    .prologue
    .line 165
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method initialOutboundWindowSize(I)V
    .locals 6

    .prologue
    .line 71
    if-gez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid initial window size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    sub-int v2, p1, v0

    .line 76
    iput p1, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    .line 77
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->getActiveStreams()[Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 78
    invoke-virtual {v5}, Lio/grpc/okhttp/OkHttpClientStream;->getOutboundFlowState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    .line 79
    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    invoke-direct {v0, p0, v5}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;-><init>(Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OkHttpClientStream;)V

    .line 82
    invoke-virtual {v5, v0}, Lio/grpc/okhttp/OkHttpClientStream;->setOutboundFlowState(Ljava/lang/Object;)V

    .line 77
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0, v2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->incrementStreamWindow(I)I

    goto :goto_1

    .line 88
    :cond_2
    if-lez v2, :cond_3

    .line 90
    invoke-direct {p0}, Lio/grpc/okhttp/OutboundFlowController;->writeStreams()V

    .line 92
    :cond_3
    return-void
.end method

.method windowUpdate(Lio/grpc/okhttp/OkHttpClientStream;I)V
    .locals 3

    .prologue
    .line 100
    if-nez p1, :cond_1

    .line 102
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->incrementStreamWindow(I)I

    .line 103
    invoke-direct {p0}, Lio/grpc/okhttp/OutboundFlowController;->writeStreams()V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OutboundFlowController;->state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->incrementStreamWindow(I)I

    .line 109
    new-instance v1, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;-><init>(Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OutboundFlowController$1;)V

    .line 110
    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writableWindow()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writeBytes(ILio/grpc/okhttp/OutboundFlowController$WriteStatus;)I

    .line 111
    invoke-virtual {v1}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->hasWritten()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    goto :goto_0
.end method
