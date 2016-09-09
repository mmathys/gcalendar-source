.class Lio/grpc/okhttp/AsyncFrameWriter;
.super Ljava/lang/Object;
.source "AsyncFrameWriter.java"

# interfaces
.implements Lio/grpc/okhttp/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/AsyncFrameWriter$WriteRunnable;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Lio/grpc/internal/SerializingExecutor;

.field private frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

.field private socket:Ljava/net/Socket;

.field private final transport:Lio/grpc/okhttp/OkHttpClientTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/AsyncFrameWriter;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/internal/SerializingExecutor;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lio/grpc/okhttp/AsyncFrameWriter;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 61
    iput-object p2, p0, Lio/grpc/okhttp/AsyncFrameWriter;->executor:Lio/grpc/internal/SerializingExecutor;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/AsyncFrameWriter;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lio/grpc/okhttp/AsyncFrameWriter;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/okhttp/AsyncFrameWriter;)Lio/grpc/okhttp/OkHttpClientTransport;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    return-object v0
.end method


# virtual methods
.method public ackSettings(Lio/grpc/okhttp/internal/framed/Settings;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->executor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncFrameWriter$2;

    invoke-direct {v1, p0, p1}, Lio/grpc/okhttp/AsyncFrameWriter$2;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;Lio/grpc/okhttp/internal/framed/Settings;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method becomeConnected(Lio/grpc/okhttp/internal/framed/FrameWriter;Ljava/net/Socket;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "AsyncFrameWriter\'s setFrameWriter() should only be called once."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 73
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/internal/framed/FrameWriter;

    iput-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    .line 74
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    iput-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->socket:Ljava/net/Socket;

    .line 75
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->executor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncFrameWriter$14;

    invoke-direct {v1, p0}, Lio/grpc/okhttp/AsyncFrameWriter$14;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public connectionPreface()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->executor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncFrameWriter$1;

    invoke-direct {v1, p0}, Lio/grpc/okhttp/AsyncFrameWriter$1;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method public data(ZILokio/Buffer;I)V
    .locals 7

    .prologue
    .line 163
    iget-object v6, p0, Lio/grpc/okhttp/AsyncFrameWriter;->executor:Lio/grpc/internal/SerializingExecutor;

    new-instance v0, Lio/grpc/okhttp/AsyncFrameWriter$9;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/grpc/okhttp/AsyncFrameWriter$9;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;ZILokio/Buffer;I)V

    invoke-virtual {v6, v0}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->executor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncFrameWriter$4;

    invoke-direct {v1, p0}, Lio/grpc/okhttp/AsyncFrameWriter$4;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->executor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncFrameWriter$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/grpc/okhttp/AsyncFrameWriter$12;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;ILio/grpc/okhttp/internal/framed/ErrorCode;[B)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public maxDataLength()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    if-nez v0, :cond_0

    const/16 v0, 0x4000

    :goto_0
    return v0

    .line 252
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->maxDataLength()I

    move-result v0

    goto :goto_0
.end method

.method public ping(ZII)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->executor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncFrameWriter$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/grpc/okhttp/AsyncFrameWriter$11;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;ZII)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->executor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncFrameWriter$8;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/okhttp/AsyncFrameWriter$8;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public settings(Lio/grpc/okhttp/internal/framed/Settings;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->executor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncFrameWriter$10;

    invoke-direct {v1, p0, p1}, Lio/grpc/okhttp/AsyncFrameWriter$10;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;Lio/grpc/okhttp/internal/framed/Settings;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public synStream(ZZIILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v7, p0, Lio/grpc/okhttp/AsyncFrameWriter;->executor:Lio/grpc/internal/SerializingExecutor;

    new-instance v0, Lio/grpc/okhttp/AsyncFrameWriter$5;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/grpc/okhttp/AsyncFrameWriter$5;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;ZZIILjava/util/List;)V

    invoke-virtual {v7, v0}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lio/grpc/okhttp/AsyncFrameWriter;->executor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncFrameWriter$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/grpc/okhttp/AsyncFrameWriter$13;-><init>(Lio/grpc/okhttp/AsyncFrameWriter;IJ)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    .line 212
    return-void
.end method
