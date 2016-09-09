.class public final Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public applicationPackage:Ljava/lang/String;

.field public applicationVersionName:Ljava/lang/String;

.field public hardwareVariant:I

.field public primesVersion:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 45
    iput-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->applicationPackage:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->applicationVersionName:Ljava/lang/String;

    .line 47
    const/high16 v0, -0x80000000

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->hardwareVariant:I

    .line 48
    iput-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->primesVersion:Ljava/lang/Long;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->cachedSize:I

    .line 50
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 72
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 73
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->applicationPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, 0x1

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->applicationPackage:Ljava/lang/String;

    .line 75
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_0
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->applicationVersionName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 78
    const/4 v1, 0x2

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->applicationVersionName:Ljava/lang/String;

    .line 79
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_1
    iget v1, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->hardwareVariant:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    .line 82
    const/4 v1, 0x3

    iget v2, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->hardwareVariant:I

    .line 83
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_2
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->primesVersion:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 86
    const/4 v1, 0x4

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->primesVersion:Ljava/lang/Long;

    .line 87
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_3
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
    invoke-virtual {p0, p1}, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 98
    sparse-switch v0, :sswitch_data_0

    .line 102
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :sswitch_0
    return-object p0

    .line 108
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->applicationPackage:Ljava/lang/String;

    goto :goto_0

    .line 112
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->applicationVersionName:Ljava/lang/String;

    goto :goto_0

    .line 116
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 117
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->hardwareVariant:I

    goto :goto_0

    .line 127
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->primesVersion:Ljava/lang/Long;

    goto :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->applicationPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->applicationPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 58
    :cond_0
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->applicationVersionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 59
    const/4 v0, 0x2

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->applicationVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 61
    :cond_1
    iget v0, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->hardwareVariant:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 62
    const/4 v0, 0x3

    iget v1, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->hardwareVariant:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 64
    :cond_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->primesVersion:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 65
    const/4 v0, 0x4

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ApplicationInfo;->primesVersion:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 67
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 68
    return-void
.end method
