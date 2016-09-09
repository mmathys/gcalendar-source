.class public final Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "LocalAssistance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;",
        ">;"
    }
.end annotation


# instance fields
.field public address:Lcom/google/personalization/assist/annotate/api/nano/Address;

.field public businessName:Ljava/lang/String;

.field public isOpen:Z

.field public latitudeE7:I

.field public longitudeE7:I

.field public nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

.field public phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->clear()Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;

    .line 51
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->businessName:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    .line 56
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    .line 57
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    .line 58
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->latitudeE7:I

    .line 59
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->longitudeE7:I

    .line 60
    iput-boolean v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->isOpen:Z

    .line 61
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 62
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->cachedSize:I

    .line 64
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->businessName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->businessName:Ljava/lang/String;

    .line 102
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    if-eqz v1, :cond_1

    .line 105
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    .line 106
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-eqz v1, :cond_2

    .line 109
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    .line 110
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    if-eqz v1, :cond_3

    .line 113
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    .line 114
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_3
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->latitudeE7:I

    if-eqz v1, :cond_4

    .line 117
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->latitudeE7:I

    .line 118
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :cond_4
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->longitudeE7:I

    if-eqz v1, :cond_5

    .line 121
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->longitudeE7:I

    .line 122
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_5
    iget-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->isOpen:Z

    if-eqz v1, :cond_6

    .line 125
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->isOpen:Z

    .line 126
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_7

    .line 129
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 130
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_7
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 141
    sparse-switch v0, :sswitch_data_0

    .line 145
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    :sswitch_0
    return-object p0

    .line 151
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->businessName:Ljava/lang/String;

    goto :goto_0

    .line 155
    :sswitch_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Address;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Address;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 162
    :sswitch_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-nez v0, :cond_2

    .line 163
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 169
    :sswitch_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    if-nez v0, :cond_3

    .line 170
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 176
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->latitudeE7:I

    goto :goto_0

    .line 180
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->longitudeE7:I

    goto :goto_0

    .line 184
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->isOpen:Z

    goto :goto_0

    .line 188
    :sswitch_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_4

    .line 189
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 141
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->businessName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->businessName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    if-eqz v0, :cond_3

    .line 80
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 82
    :cond_3
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->latitudeE7:I

    if-eqz v0, :cond_4

    .line 83
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->latitudeE7:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 85
    :cond_4
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->longitudeE7:I

    if-eqz v0, :cond_5

    .line 86
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->longitudeE7:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 88
    :cond_5
    iget-boolean v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->isOpen:Z

    if-eqz v0, :cond_6

    .line 89
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->isOpen:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_7

    .line 92
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 94
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 95
    return-void
.end method
