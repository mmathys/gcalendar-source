.class public final Llogs/proto/wireless/performance/mobile/nano/WakelockStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "WakelockStats.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs/proto/wireless/performance/mobile/nano/WakelockStats;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Llogs/proto/wireless/performance/mobile/nano/WakelockStats;


# instance fields
.field public count:Ljava/lang/Integer;

.field public durationMs:Ljava/lang/Long;

.field public name:Llogs/proto/wireless/performance/mobile/nano/HashedString;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 35
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->count:Ljava/lang/Integer;

    .line 36
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->durationMs:Ljava/lang/Long;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->cachedSize:I

    .line 38
    return-void
.end method

.method public static emptyArray()[Llogs/proto/wireless/performance/mobile/nano/WakelockStats;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/WakelockStats;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/WakelockStats;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Llogs/proto/wireless/performance/mobile/nano/WakelockStats;

    sput-object v0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/WakelockStats;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/WakelockStats;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 57
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 58
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->name:Llogs/proto/wireless/performance/mobile/nano/HashedString;

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x1

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->name:Llogs/proto/wireless/performance/mobile/nano/HashedString;

    .line 60
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_0
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 63
    const/4 v1, 0x2

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->count:Ljava/lang/Integer;

    .line 64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_1
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->durationMs:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 67
    const/4 v1, 0x3

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->durationMs:Ljava/lang/Long;

    .line 68
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_2
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
    invoke-virtual {p0, p1}, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/WakelockStats;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/WakelockStats;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 79
    sparse-switch v0, :sswitch_data_0

    .line 83
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :sswitch_0
    return-object p0

    .line 89
    :sswitch_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->name:Llogs/proto/wireless/performance/mobile/nano/HashedString;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/HashedString;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/HashedString;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->name:Llogs/proto/wireless/performance/mobile/nano/HashedString;

    .line 92
    :cond_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->name:Llogs/proto/wireless/performance/mobile/nano/HashedString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 96
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->count:Ljava/lang/Integer;

    goto :goto_0

    .line 100
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->durationMs:Ljava/lang/Long;

    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->name:Llogs/proto/wireless/performance/mobile/nano/HashedString;

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->name:Llogs/proto/wireless/performance/mobile/nano/HashedString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 46
    :cond_0
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 47
    const/4 v0, 0x2

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 49
    :cond_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->durationMs:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 50
    const/4 v0, 0x3

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/WakelockStats;->durationMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 52
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 53
    return-void
.end method
