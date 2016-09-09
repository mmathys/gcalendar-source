.class Lio/grpc/okhttp/OkHttpReadableBuffer;
.super Lio/grpc/internal/AbstractReadableBuffer;
.source "OkHttpReadableBuffer.java"


# instance fields
.field private final buffer:Lokio/Buffer;


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lio/grpc/internal/AbstractReadableBuffer;-><init>()V

    .line 49
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    .line 50
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 104
    return-void
.end method

.method public readBytes(I)Lio/grpc/internal/ReadableBuffer;
    .locals 4

    .prologue
    .line 96
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 97
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 98
    new-instance v1, Lio/grpc/okhttp/OkHttpReadableBuffer;

    invoke-direct {v1, v0}, Lio/grpc/okhttp/OkHttpReadableBuffer;-><init>(Lokio/Buffer;)V

    return-object v1
.end method

.method public readBytes([BII)V
    .locals 3

    .prologue
    .line 73
    :goto_0
    if-lez p3, :cond_1

    .line 74
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result v0

    .line 75
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "EOF trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    sub-int/2addr p3, v0

    .line 79
    add-int/2addr p2, v0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

.method public readUnsignedByte()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readableBytes()I
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpReadableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
