.class Lio/grpc/okhttp/OkHttpWritableBuffer;
.super Ljava/lang/Object;
.source "OkHttpWritableBuffer.java"

# interfaces
.implements Lio/grpc/internal/WritableBuffer;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private readableBytes:I

.field private writableBytes:I


# direct methods
.method constructor <init>(Lokio/Buffer;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer:Lokio/Buffer;

    .line 46
    iput p2, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    .line 47
    return-void
.end method


# virtual methods
.method buffer()Lokio/Buffer;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method public readableBytes()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public writableBytes()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    return v0
.end method

.method public write(B)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 59
    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    .line 60
    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    .line 61
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 52
    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    sub-int/2addr v0, p3

    iput v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    .line 53
    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    .line 54
    return-void
.end method
