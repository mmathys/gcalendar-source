.class public final Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MemoryUsageMetric.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;",
        ">;"
    }
.end annotation


# instance fields
.field public activityName:Ljava/lang/String;

.field public deviceStats:Llogs/proto/wireless/performance/mobile/nano/DeviceStats;

.field public memoryEventCode:I

.field public memoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryStats;

.field public processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 51
    const/high16 v0, -0x80000000

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryEventCode:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->activityName:Ljava/lang/String;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->cachedSize:I

    .line 54
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 80
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryStats;

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x1

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryStats;

    .line 82
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_0
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    if-eqz v1, :cond_1

    .line 85
    const/4 v1, 0x2

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    .line 86
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_1
    iget v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryEventCode:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    .line 89
    const/4 v1, 0x3

    iget v2, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryEventCode:I

    .line 90
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_2
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->deviceStats:Llogs/proto/wireless/performance/mobile/nano/DeviceStats;

    if-eqz v1, :cond_3

    .line 93
    const/4 v1, 0x4

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->deviceStats:Llogs/proto/wireless/performance/mobile/nano/DeviceStats;

    .line 94
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_3
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->activityName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 97
    const/4 v1, 0x5

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->activityName:Ljava/lang/String;

    .line 98
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_4
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
    invoke-virtual {p0, p1}, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 109
    sparse-switch v0, :sswitch_data_0

    .line 113
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    :sswitch_0
    return-object p0

    .line 119
    :sswitch_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryStats;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/MemoryStats;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryStats;

    .line 122
    :cond_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 126
    :sswitch_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    if-nez v0, :cond_2

    .line 127
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/ProcessStats;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    .line 129
    :cond_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 133
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 134
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryEventCode:I

    goto :goto_0

    .line 147
    :sswitch_4
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->deviceStats:Llogs/proto/wireless/performance/mobile/nano/DeviceStats;

    if-nez v0, :cond_3

    .line 148
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/DeviceStats;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/DeviceStats;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->deviceStats:Llogs/proto/wireless/performance/mobile/nano/DeviceStats;

    .line 150
    :cond_3
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->deviceStats:Llogs/proto/wireless/performance/mobile/nano/DeviceStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 154
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->activityName:Ljava/lang/String;

    goto :goto_0

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryStats;

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryStats:Llogs/proto/wireless/performance/mobile/nano/MemoryStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 62
    :cond_0
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x2

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 65
    :cond_1
    iget v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryEventCode:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 66
    const/4 v0, 0x3

    iget v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->memoryEventCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 68
    :cond_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->deviceStats:Llogs/proto/wireless/performance/mobile/nano/DeviceStats;

    if-eqz v0, :cond_3

    .line 69
    const/4 v0, 0x4

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->deviceStats:Llogs/proto/wireless/performance/mobile/nano/DeviceStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 71
    :cond_3
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->activityName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 72
    const/4 v0, 0x5

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;->activityName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 74
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 75
    return-void
.end method
