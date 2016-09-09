.class public final Llogs/proto/wireless/performance/mobile/nano/PackageMetric;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "PackageMetric.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs/proto/wireless/performance/mobile/nano/PackageMetric;",
        ">;"
    }
.end annotation


# instance fields
.field public cacheSize:Ljava/lang/Long;

.field public codeSize:Ljava/lang/Long;

.field public dataSize:Ljava/lang/Long;

.field public externalCacheSize:Ljava/lang/Long;

.field public externalCodeSize:Ljava/lang/Long;

.field public externalDataSize:Ljava/lang/Long;

.field public externalMediaSize:Ljava/lang/Long;

.field public externalObbSize:Ljava/lang/Long;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 53
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->cacheSize:Ljava/lang/Long;

    .line 54
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->codeSize:Ljava/lang/Long;

    .line 55
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->dataSize:Ljava/lang/Long;

    .line 56
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCacheSize:Ljava/lang/Long;

    .line 57
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCodeSize:Ljava/lang/Long;

    .line 58
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalDataSize:Ljava/lang/Long;

    .line 59
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalMediaSize:Ljava/lang/Long;

    .line 60
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalObbSize:Ljava/lang/Long;

    .line 61
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->packageName:Ljava/lang/String;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->cachedSize:I

    .line 63
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 100
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 101
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->cacheSize:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x1

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->cacheSize:Ljava/lang/Long;

    .line 103
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_0
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->codeSize:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 106
    const/4 v1, 0x2

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->codeSize:Ljava/lang/Long;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_1
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->dataSize:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 110
    const/4 v1, 0x3

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->dataSize:Ljava/lang/Long;

    .line 111
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_2
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCacheSize:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 114
    const/4 v1, 0x4

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCacheSize:Ljava/lang/Long;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_3
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCodeSize:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 118
    const/4 v1, 0x5

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCodeSize:Ljava/lang/Long;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_4
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalDataSize:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 122
    const/4 v1, 0x6

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalDataSize:Ljava/lang/Long;

    .line 123
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_5
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalMediaSize:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 126
    const/4 v1, 0x7

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalMediaSize:Ljava/lang/Long;

    .line 127
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_6
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalObbSize:Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 130
    const/16 v1, 0x8

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalObbSize:Ljava/lang/Long;

    .line 131
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_7
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 134
    const/16 v1, 0x9

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->packageName:Ljava/lang/String;

    .line 135
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_8
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
    invoke-virtual {p0, p1}, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/PackageMetric;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/PackageMetric;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 146
    sparse-switch v0, :sswitch_data_0

    .line 150
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :sswitch_0
    return-object p0

    .line 156
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->cacheSize:Ljava/lang/Long;

    goto :goto_0

    .line 160
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->codeSize:Ljava/lang/Long;

    goto :goto_0

    .line 164
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->dataSize:Ljava/lang/Long;

    goto :goto_0

    .line 168
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCacheSize:Ljava/lang/Long;

    goto :goto_0

    .line 172
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCodeSize:Ljava/lang/Long;

    goto :goto_0

    .line 176
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalDataSize:Ljava/lang/Long;

    goto :goto_0

    .line 180
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalMediaSize:Ljava/lang/Long;

    goto :goto_0

    .line 184
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalObbSize:Ljava/lang/Long;

    goto :goto_0

    .line 188
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
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
    .line 68
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->cacheSize:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->cacheSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 71
    :cond_0
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->codeSize:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x2

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->codeSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 74
    :cond_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->dataSize:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 75
    const/4 v0, 0x3

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->dataSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 77
    :cond_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCacheSize:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 78
    const/4 v0, 0x4

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCacheSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 80
    :cond_3
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCodeSize:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 81
    const/4 v0, 0x5

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalCodeSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 83
    :cond_4
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalDataSize:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 84
    const/4 v0, 0x6

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalDataSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 86
    :cond_5
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalMediaSize:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 87
    const/4 v0, 0x7

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalMediaSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 89
    :cond_6
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalObbSize:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 90
    const/16 v0, 0x8

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->externalObbSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 92
    :cond_7
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 93
    const/16 v0, 0x9

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/PackageMetric;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 95
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 96
    return-void
.end method
