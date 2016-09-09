.class public final Lcom/google/protobuf/nano/Duration;
.super Lcom/google/protobuf/nano/MessageNano;
.source "Duration.java"


# instance fields
.field public nanos:I

.field public seconds:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/google/protobuf/nano/Duration;->clear()Lcom/google/protobuf/nano/Duration;

    .line 33
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/nano/Duration;
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/nano/Duration;->seconds:J

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/nano/Duration;->nanos:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/Duration;->cachedSize:I

    .line 39
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 57
    iget-wide v2, p0, Lcom/google/protobuf/nano/Duration;->seconds:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/protobuf/nano/Duration;->seconds:J

    .line 59
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_0
    iget v1, p0, Lcom/google/protobuf/nano/Duration;->nanos:I

    if-eqz v1, :cond_1

    .line 62
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/protobuf/nano/Duration;->nanos:I

    .line 63
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/Duration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 74
    sparse-switch v0, :sswitch_data_0

    .line 78
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :sswitch_0
    return-object p0

    .line 84
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/protobuf/nano/Duration;->seconds:J

    goto :goto_0

    .line 88
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/nano/Duration;->nanos:I

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/Duration;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/Duration;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/google/protobuf/nano/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/protobuf/nano/Duration;->seconds:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 48
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/Duration;->nanos:I

    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/protobuf/nano/Duration;->nanos:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 51
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 52
    return-void
.end method
