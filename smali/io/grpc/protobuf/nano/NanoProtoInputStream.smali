.class Lio/grpc/protobuf/nano/NanoProtoInputStream;
.super Ljava/io/InputStream;
.source "NanoProtoInputStream.java"

# interfaces
.implements Lio/grpc/KnownLength;


# instance fields
.field private message:Lcom/google/protobuf/nano/MessageNano;

.field private partial:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 57
    iput-object p1, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->message:Lcom/google/protobuf/nano/MessageNano;

    .line 58
    return-void
.end method

.method private toPartial()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->message:Lcom/google/protobuf/nano/MessageNano;

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->message:Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->message:Lcom/google/protobuf/nano/MessageNano;

    .line 65
    :cond_0
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
    .line 106
    iget-object v0, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->message:Lcom/google/protobuf/nano/MessageNano;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->message:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 108
    :cond_0
    iget-object v0, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lio/grpc/protobuf/nano/NanoProtoInputStream;->toPartial()V

    .line 70
    iget-object v0, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 78
    iget-object v1, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->message:Lcom/google/protobuf/nano/MessageNano;

    if-eqz v1, :cond_3

    .line 79
    iget-object v1, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->message:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 80
    if-nez v1, :cond_1

    .line 81
    iput-object v3, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->message:Lcom/google/protobuf/nano/MessageNano;

    .line 82
    iput-object v3, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    if-lt p3, v1, :cond_2

    .line 87
    invoke-static {p1, p2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->message:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 89
    invoke-virtual {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->checkNoSpaceLeft()V

    .line 91
    iput-object v3, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->message:Lcom/google/protobuf/nano/MessageNano;

    .line 92
    iput-object v3, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    move v0, v1

    .line 93
    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0}, Lio/grpc/protobuf/nano/NanoProtoInputStream;->toPartial()V

    .line 98
    :cond_3
    iget-object v1, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_0

    .line 99
    iget-object v0, p0, Lio/grpc/protobuf/nano/NanoProtoInputStream;->partial:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method
