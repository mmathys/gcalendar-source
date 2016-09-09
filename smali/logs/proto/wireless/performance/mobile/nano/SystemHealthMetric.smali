.class public final Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SystemHealthMetric.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;",
        ">;"
    }
.end annotation


# instance fields
.field public applicationInfo:Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;

.field public batteryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/BatteryUsageMetric;

.field public crashMetric:Llogs/proto/wireless/performance/mobile/nano/CrashMetric;

.field public customEventName:Ljava/lang/String;

.field public frameRateMetric:Llogs/proto/wireless/performance/mobile/nano/FrameRateMetric;

.field public hashedCustomEventName:Ljava/lang/Long;

.field public jankMetric:Llogs/proto/wireless/performance/mobile/nano/JankMetric;

.field public memoryLeakMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

.field public memoryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

.field public metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

.field public networkUsageMetric:Llogs/proto/wireless/performance/mobile/nano/NetworkUsageMetric;

.field public packageMetric:Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

.field public primesStats:Llogs/proto/wireless/performance/mobile/nano/PrimesStats;

.field public timerMetric:Llogs/proto/wireless/performance/mobile/nano/TimerMetric;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 68
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->hashedCustomEventName:Ljava/lang/Long;

    .line 69
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->customEventName:Ljava/lang/String;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->cachedSize:I

    .line 71
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 124
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    if-eqz v1, :cond_0

    .line 125
    const/4 v1, 0x1

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    .line 126
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_0
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->hashedCustomEventName:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 129
    const/4 v1, 0x2

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->hashedCustomEventName:Ljava/lang/Long;

    .line 130
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_1
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->customEventName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 133
    const/4 v1, 0x3

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->customEventName:Ljava/lang/String;

    .line 134
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_2
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->timerMetric:Llogs/proto/wireless/performance/mobile/nano/TimerMetric;

    if-eqz v1, :cond_3

    .line 137
    const/4 v1, 0x4

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->timerMetric:Llogs/proto/wireless/performance/mobile/nano/TimerMetric;

    .line 138
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_3
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->applicationInfo:Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;

    if-eqz v1, :cond_4

    .line 141
    const/4 v1, 0x5

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->applicationInfo:Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;

    .line 142
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_4
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->networkUsageMetric:Llogs/proto/wireless/performance/mobile/nano/NetworkUsageMetric;

    if-eqz v1, :cond_5

    .line 145
    const/4 v1, 0x6

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->networkUsageMetric:Llogs/proto/wireless/performance/mobile/nano/NetworkUsageMetric;

    .line 146
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_5
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->crashMetric:Llogs/proto/wireless/performance/mobile/nano/CrashMetric;

    if-eqz v1, :cond_6

    .line 149
    const/4 v1, 0x7

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->crashMetric:Llogs/proto/wireless/performance/mobile/nano/CrashMetric;

    .line 150
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_6
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->primesStats:Llogs/proto/wireless/performance/mobile/nano/PrimesStats;

    if-eqz v1, :cond_7

    .line 153
    const/16 v1, 0x8

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->primesStats:Llogs/proto/wireless/performance/mobile/nano/PrimesStats;

    .line 154
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_7
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->packageMetric:Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

    if-eqz v1, :cond_8

    .line 157
    const/16 v1, 0x9

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->packageMetric:Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

    .line 158
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_8
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->batteryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/BatteryUsageMetric;

    if-eqz v1, :cond_9

    .line 161
    const/16 v1, 0xa

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->batteryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/BatteryUsageMetric;

    .line 162
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_9
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->frameRateMetric:Llogs/proto/wireless/performance/mobile/nano/FrameRateMetric;

    if-eqz v1, :cond_a

    .line 165
    const/16 v1, 0xb

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->frameRateMetric:Llogs/proto/wireless/performance/mobile/nano/FrameRateMetric;

    .line 166
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_a
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->jankMetric:Llogs/proto/wireless/performance/mobile/nano/JankMetric;

    if-eqz v1, :cond_b

    .line 169
    const/16 v1, 0xc

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->jankMetric:Llogs/proto/wireless/performance/mobile/nano/JankMetric;

    .line 170
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_b
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryLeakMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    if-eqz v1, :cond_c

    .line 173
    const/16 v1, 0xd

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryLeakMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    .line 174
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_c
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    if-eqz v1, :cond_d

    .line 177
    const/16 v1, 0xe

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    .line 178
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    :cond_d
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
    invoke-virtual {p0, p1}, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 189
    sparse-switch v0, :sswitch_data_0

    .line 193
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :sswitch_0
    return-object p0

    .line 199
    :sswitch_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    .line 202
    :cond_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 206
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->hashedCustomEventName:Ljava/lang/Long;

    goto :goto_0

    .line 210
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->customEventName:Ljava/lang/String;

    goto :goto_0

    .line 214
    :sswitch_4
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->timerMetric:Llogs/proto/wireless/performance/mobile/nano/TimerMetric;

    if-nez v0, :cond_2

    .line 215
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/TimerMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/TimerMetric;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->timerMetric:Llogs/proto/wireless/performance/mobile/nano/TimerMetric;

    .line 217
    :cond_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->timerMetric:Llogs/proto/wireless/performance/mobile/nano/TimerMetric;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 221
    :sswitch_5
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->applicationInfo:Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;

    if-nez v0, :cond_3

    .line 222
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->applicationInfo:Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;

    .line 224
    :cond_3
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->applicationInfo:Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 228
    :sswitch_6
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->networkUsageMetric:Llogs/proto/wireless/performance/mobile/nano/NetworkUsageMetric;

    if-nez v0, :cond_4

    .line 229
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/NetworkUsageMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/NetworkUsageMetric;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->networkUsageMetric:Llogs/proto/wireless/performance/mobile/nano/NetworkUsageMetric;

    .line 231
    :cond_4
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->networkUsageMetric:Llogs/proto/wireless/performance/mobile/nano/NetworkUsageMetric;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 235
    :sswitch_7
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->crashMetric:Llogs/proto/wireless/performance/mobile/nano/CrashMetric;

    if-nez v0, :cond_5

    .line 236
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->crashMetric:Llogs/proto/wireless/performance/mobile/nano/CrashMetric;

    .line 238
    :cond_5
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->crashMetric:Llogs/proto/wireless/performance/mobile/nano/CrashMetric;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 242
    :sswitch_8
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->primesStats:Llogs/proto/wireless/performance/mobile/nano/PrimesStats;

    if-nez v0, :cond_6

    .line 243
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/PrimesStats;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/PrimesStats;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->primesStats:Llogs/proto/wireless/performance/mobile/nano/PrimesStats;

    .line 245
    :cond_6
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->primesStats:Llogs/proto/wireless/performance/mobile/nano/PrimesStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 249
    :sswitch_9
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->packageMetric:Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

    if-nez v0, :cond_7

    .line 250
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->packageMetric:Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

    .line 252
    :cond_7
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->packageMetric:Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 256
    :sswitch_a
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->batteryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/BatteryUsageMetric;

    if-nez v0, :cond_8

    .line 257
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/BatteryUsageMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/BatteryUsageMetric;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->batteryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/BatteryUsageMetric;

    .line 259
    :cond_8
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->batteryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/BatteryUsageMetric;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 263
    :sswitch_b
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->frameRateMetric:Llogs/proto/wireless/performance/mobile/nano/FrameRateMetric;

    if-nez v0, :cond_9

    .line 264
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/FrameRateMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/FrameRateMetric;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->frameRateMetric:Llogs/proto/wireless/performance/mobile/nano/FrameRateMetric;

    .line 266
    :cond_9
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->frameRateMetric:Llogs/proto/wireless/performance/mobile/nano/FrameRateMetric;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 270
    :sswitch_c
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->jankMetric:Llogs/proto/wireless/performance/mobile/nano/JankMetric;

    if-nez v0, :cond_a

    .line 271
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/JankMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/JankMetric;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->jankMetric:Llogs/proto/wireless/performance/mobile/nano/JankMetric;

    .line 273
    :cond_a
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->jankMetric:Llogs/proto/wireless/performance/mobile/nano/JankMetric;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 277
    :sswitch_d
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryLeakMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    if-nez v0, :cond_b

    .line 278
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryLeakMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    .line 280
    :cond_b
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryLeakMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 284
    :sswitch_e
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    if-nez v0, :cond_c

    .line 285
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/MetricExtension;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    .line 287
    :cond_c
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
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
    .line 76
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryUsageMetric;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 79
    :cond_0
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->hashedCustomEventName:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 80
    const/4 v0, 0x2

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->hashedCustomEventName:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 82
    :cond_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->customEventName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 83
    const/4 v0, 0x3

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->customEventName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 85
    :cond_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->timerMetric:Llogs/proto/wireless/performance/mobile/nano/TimerMetric;

    if-eqz v0, :cond_3

    .line 86
    const/4 v0, 0x4

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->timerMetric:Llogs/proto/wireless/performance/mobile/nano/TimerMetric;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 88
    :cond_3
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->applicationInfo:Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;

    if-eqz v0, :cond_4

    .line 89
    const/4 v0, 0x5

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->applicationInfo:Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 91
    :cond_4
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->networkUsageMetric:Llogs/proto/wireless/performance/mobile/nano/NetworkUsageMetric;

    if-eqz v0, :cond_5

    .line 92
    const/4 v0, 0x6

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->networkUsageMetric:Llogs/proto/wireless/performance/mobile/nano/NetworkUsageMetric;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 94
    :cond_5
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->crashMetric:Llogs/proto/wireless/performance/mobile/nano/CrashMetric;

    if-eqz v0, :cond_6

    .line 95
    const/4 v0, 0x7

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->crashMetric:Llogs/proto/wireless/performance/mobile/nano/CrashMetric;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 97
    :cond_6
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->primesStats:Llogs/proto/wireless/performance/mobile/nano/PrimesStats;

    if-eqz v0, :cond_7

    .line 98
    const/16 v0, 0x8

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->primesStats:Llogs/proto/wireless/performance/mobile/nano/PrimesStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 100
    :cond_7
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->packageMetric:Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

    if-eqz v0, :cond_8

    .line 101
    const/16 v0, 0x9

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->packageMetric:Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 103
    :cond_8
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->batteryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/BatteryUsageMetric;

    if-eqz v0, :cond_9

    .line 104
    const/16 v0, 0xa

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->batteryUsageMetric:Llogs/proto/wireless/performance/mobile/nano/BatteryUsageMetric;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 106
    :cond_9
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->frameRateMetric:Llogs/proto/wireless/performance/mobile/nano/FrameRateMetric;

    if-eqz v0, :cond_a

    .line 107
    const/16 v0, 0xb

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->frameRateMetric:Llogs/proto/wireless/performance/mobile/nano/FrameRateMetric;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 109
    :cond_a
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->jankMetric:Llogs/proto/wireless/performance/mobile/nano/JankMetric;

    if-eqz v0, :cond_b

    .line 110
    const/16 v0, 0xc

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->jankMetric:Llogs/proto/wireless/performance/mobile/nano/JankMetric;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 112
    :cond_b
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryLeakMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    if-eqz v0, :cond_c

    .line 113
    const/16 v0, 0xd

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->memoryLeakMetric:Llogs/proto/wireless/performance/mobile/nano/MemoryLeakMetric;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 115
    :cond_c
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    if-eqz v0, :cond_d

    .line 116
    const/16 v0, 0xe

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/SystemHealthMetric;->metricExtension:Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 118
    :cond_d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 119
    return-void
.end method
