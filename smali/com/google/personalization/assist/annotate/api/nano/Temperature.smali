.class public final Lcom/google/personalization/assist/annotate/api/nano/Temperature;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Temperature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/Temperature;",
        ">;"
    }
.end annotation


# instance fields
.field public preferredUnit:I

.field public tempC:Ljava/lang/String;

.field public tempCInt:J

.field public tempF:Ljava/lang/String;

.field public tempFInt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->clear()Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    .line 42
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/Temperature;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempF:Ljava/lang/String;

    .line 46
    iput-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempFInt:J

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempC:Ljava/lang/String;

    .line 48
    iput-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempCInt:J

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->preferredUnit:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->cachedSize:I

    .line 52
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 78
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempF:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempF:Ljava/lang/String;

    .line 81
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempC:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempC:Ljava/lang/String;

    .line 85
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_1
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->preferredUnit:I

    if-eqz v1, :cond_2

    .line 88
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->preferredUnit:I

    .line 89
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_2
    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempFInt:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 92
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempFInt:J

    .line 93
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_3
    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempCInt:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 96
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempCInt:J

    .line 97
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Temperature;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 108
    sparse-switch v0, :sswitch_data_0

    .line 112
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :sswitch_0
    return-object p0

    .line 118
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempF:Ljava/lang/String;

    goto :goto_0

    .line 122
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempC:Ljava/lang/String;

    goto :goto_0

    .line 126
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 127
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->preferredUnit:I

    goto :goto_0

    .line 136
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempFInt:J

    goto :goto_0

    .line 140
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempCInt:J

    goto :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 58
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempF:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempF:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempC:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempC:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 64
    :cond_1
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->preferredUnit:I

    if-eqz v0, :cond_2

    .line 65
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->preferredUnit:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 67
    :cond_2
    iget-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempFInt:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 68
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempFInt:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 70
    :cond_3
    iget-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempCInt:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 71
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;->tempCInt:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 73
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 74
    return-void
.end method
