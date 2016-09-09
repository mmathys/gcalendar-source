.class public final Lcom/google/personalization/assist/annotate/api/nano/Time;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/Time;",
        ">;"
    }
.end annotation


# instance fields
.field public dateOnly:Z

.field public dateType:I

.field public timeMs:J

.field public timeType:I

.field public timeZoneOffsetMinutes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/Time;->clear()Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 42
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/Time;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    .line 46
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeZoneOffsetMinutes:I

    .line 47
    iput-boolean v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateOnly:Z

    .line 48
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeType:I

    .line 49
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateType:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->cachedSize:I

    .line 52
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 79
    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    .line 81
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_0
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeZoneOffsetMinutes:I

    if-eqz v1, :cond_1

    .line 84
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeZoneOffsetMinutes:I

    .line 85
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_1
    iget-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateOnly:Z

    if-eqz v1, :cond_2

    .line 88
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateOnly:Z

    .line 89
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_2
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeType:I

    if-eqz v1, :cond_3

    .line 92
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeType:I

    .line 93
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_3
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateType:I

    if-eqz v1, :cond_4

    .line 96
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateType:I

    .line 97
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Time;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    goto :goto_0

    .line 122
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeZoneOffsetMinutes:I

    goto :goto_0

    .line 126
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateOnly:Z

    goto :goto_0

    .line 130
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 131
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 137
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeType:I

    goto :goto_0

    .line 143
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 144
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 150
    :pswitch_1
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateType:I

    goto :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 144
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/Time;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Time;

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
    .line 58
    iget-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeMs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 61
    :cond_0
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeZoneOffsetMinutes:I

    if-eqz v0, :cond_1

    .line 62
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeZoneOffsetMinutes:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 64
    :cond_1
    iget-boolean v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateOnly:Z

    if-eqz v0, :cond_2

    .line 65
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateOnly:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 67
    :cond_2
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeType:I

    if-eqz v0, :cond_3

    .line 68
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->timeType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 70
    :cond_3
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateType:I

    if-eqz v0, :cond_4

    .line 71
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Time;->dateType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 73
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 74
    return-void
.end method
