.class public final Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MemoryLeakMetric.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;",
        ">;"
    }
.end annotation


# instance fields
.field public objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 29
    invoke-static {}, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->emptyArray()[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->cachedSize:I

    .line 31
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 50
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 51
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 52
    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    aget-object v2, v2, v0

    .line 53
    if-eqz v2, :cond_0

    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return v1
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
    invoke-virtual {p0, p1}, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 67
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 68
    sparse-switch v0, :sswitch_data_0

    .line 72
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :sswitch_0
    return-object p0

    .line 78
    :sswitch_1
    const/16 v0, 0xa

    .line 79
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 80
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    if-nez v0, :cond_2

    move v0, v1

    .line 81
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    .line 83
    if-eqz v0, :cond_1

    .line 84
    iget-object v3, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 87
    new-instance v3, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    invoke-direct {v3}, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;-><init>()V

    aput-object v3, v2, v0

    .line 88
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 89
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 80
    :cond_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    array-length v0, v0

    goto :goto_1

    .line 92
    :cond_3
    new-instance v3, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    invoke-direct {v3}, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;-><init>()V

    aput-object v3, v2, v0

    .line 93
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 94
    iput-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 37
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 38
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;->objectInfo:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    aget-object v1, v1, v0

    .line 39
    if-eqz v1, :cond_0

    .line 40
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 45
    return-void
.end method
