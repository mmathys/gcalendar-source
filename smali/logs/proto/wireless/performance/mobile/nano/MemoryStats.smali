.class public final Llogs/proto/wireless/performance/mobile/nano/MemoryStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MemoryStats.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs/proto/wireless/performance/mobile/nano/MemoryStats;",
        ">;"
    }
.end annotation


# instance fields
.field public androidMemoryStats:Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;

.field public iosMemoryStats:Llogs/proto/wireless/performance/mobile/nano/IosMemoryStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->cachedSize:I

    .line 33
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 50
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->androidMemoryStats:Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x1

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->androidMemoryStats:Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;

    .line 52
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_0
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->iosMemoryStats:Llogs/proto/wireless/performance/mobile/nano/IosMemoryStats;

    if-eqz v1, :cond_1

    .line 55
    const/4 v1, 0x2

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->iosMemoryStats:Llogs/proto/wireless/performance/mobile/nano/IosMemoryStats;

    .line 56
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_1
    return v0
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
    invoke-virtual {p0, p1}, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/MemoryStats;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/MemoryStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 67
    sparse-switch v0, :sswitch_data_0

    .line 71
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :sswitch_0
    return-object p0

    .line 77
    :sswitch_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->androidMemoryStats:Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->androidMemoryStats:Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;

    .line 80
    :cond_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->androidMemoryStats:Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 84
    :sswitch_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->iosMemoryStats:Llogs/proto/wireless/performance/mobile/nano/IosMemoryStats;

    if-nez v0, :cond_2

    .line 85
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/IosMemoryStats;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/IosMemoryStats;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->iosMemoryStats:Llogs/proto/wireless/performance/mobile/nano/IosMemoryStats;

    .line 87
    :cond_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->iosMemoryStats:Llogs/proto/wireless/performance/mobile/nano/IosMemoryStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->androidMemoryStats:Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->androidMemoryStats:Llogs/proto/wireless/performance/mobile/nano/AndroidMemoryStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 41
    :cond_0
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->iosMemoryStats:Llogs/proto/wireless/performance/mobile/nano/IosMemoryStats;

    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x2

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;->iosMemoryStats:Llogs/proto/wireless/performance/mobile/nano/IosMemoryStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 44
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 45
    return-void
.end method
