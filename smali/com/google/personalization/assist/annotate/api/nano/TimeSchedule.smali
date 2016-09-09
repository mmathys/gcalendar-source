.class public final Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimeSchedule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;",
        ">;"
    }
.end annotation


# instance fields
.field public component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

.field public timeZoneOffsetMinutes:I

.field public timezoneId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->clear()Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    .line 36
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    .line 40
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->timezoneId:I

    .line 41
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->timeZoneOffsetMinutes:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->cachedSize:I

    .line 44
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 70
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 71
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    aget-object v2, v2, v0

    .line 73
    if-eqz v2, :cond_0

    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 71
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->timezoneId:I

    if-eqz v0, :cond_2

    .line 80
    const/4 v0, 0x2

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->timezoneId:I

    .line 81
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 83
    :cond_2
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->timeZoneOffsetMinutes:I

    if-eqz v0, :cond_3

    .line 84
    const/4 v0, 0x3

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->timeZoneOffsetMinutes:I

    .line 85
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 87
    :cond_3
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 96
    sparse-switch v0, :sswitch_data_0

    .line 100
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    :sswitch_0
    return-object p0

    .line 106
    :sswitch_1
    const/16 v0, 0xa

    .line 107
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 108
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    if-nez v0, :cond_2

    move v0, v1

    .line 109
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    .line 111
    if-eqz v0, :cond_1

    .line 112
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 115
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;-><init>()V

    aput-object v3, v2, v0

    .line 116
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 117
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    array-length v0, v0

    goto :goto_1

    .line 120
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;-><init>()V

    aput-object v3, v2, v0

    .line 121
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 122
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    goto :goto_0

    .line 126
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->timezoneId:I

    goto :goto_0

    .line 130
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->timeZoneOffsetMinutes:I

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 51
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->component:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    aget-object v1, v1, v0

    .line 53
    if-eqz v1, :cond_0

    .line 54
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->timezoneId:I

    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->timezoneId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 61
    :cond_2
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->timeZoneOffsetMinutes:I

    if-eqz v0, :cond_3

    .line 62
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;->timeZoneOffsetMinutes:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 64
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 65
    return-void
.end method
