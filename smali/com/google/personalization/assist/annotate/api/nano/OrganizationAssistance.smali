.class public final Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "OrganizationAssistance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;",
        ">;"
    }
.end annotation


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountNumber:Ljava/lang/String;

.field public address:Lcom/google/personalization/assist/annotate/api/nano/Address;

.field public businessName:Ljava/lang/String;

.field public emailAddress:Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

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
    .line 58
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->clear()Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    .line 60
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->businessName:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    .line 65
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    .line 66
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->emailAddress:Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    .line 67
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    .line 68
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->latitudeE7:I

    .line 69
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->longitudeE7:I

    .line 70
    iput-boolean v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->isOpen:Z

    .line 71
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->accountName:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->accountNumber:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->cachedSize:I

    .line 76
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->businessName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->businessName:Ljava/lang/String;

    .line 123
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    if-eqz v1, :cond_1

    .line 126
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    .line 127
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-eqz v1, :cond_2

    .line 130
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    .line 131
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    if-eqz v1, :cond_3

    .line 134
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    .line 135
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_3
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->latitudeE7:I

    if-eqz v1, :cond_4

    .line 138
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->latitudeE7:I

    .line 139
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_4
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->longitudeE7:I

    if-eqz v1, :cond_5

    .line 142
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->longitudeE7:I

    .line 143
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_5
    iget-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->isOpen:Z

    if-eqz v1, :cond_6

    .line 146
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->isOpen:Z

    .line 147
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_7

    .line 150
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 151
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_7
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->emailAddress:Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-eqz v1, :cond_8

    .line 154
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->emailAddress:Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    .line 155
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_8
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->accountName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 158
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->accountName:Ljava/lang/String;

    .line 159
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    :cond_9
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->accountNumber:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 162
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->accountNumber:Ljava/lang/String;

    .line 163
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_a
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 174
    sparse-switch v0, :sswitch_data_0

    .line 178
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :sswitch_0
    return-object p0

    .line 184
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->businessName:Ljava/lang/String;

    goto :goto_0

    .line 188
    :sswitch_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Address;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Address;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 195
    :sswitch_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-nez v0, :cond_2

    .line 196
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 202
    :sswitch_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    if-nez v0, :cond_3

    .line 203
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 209
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->latitudeE7:I

    goto :goto_0

    .line 213
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->longitudeE7:I

    goto :goto_0

    .line 217
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->isOpen:Z

    goto :goto_0

    .line 221
    :sswitch_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_4

    .line 222
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 228
    :sswitch_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->emailAddress:Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-nez v0, :cond_5

    .line 229
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->emailAddress:Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    .line 231
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->emailAddress:Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 235
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->accountName:Ljava/lang/String;

    goto/16 :goto_0

    .line 239
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->accountNumber:Ljava/lang/String;

    goto/16 :goto_0

    .line 174
    nop

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
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

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
    .line 82
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->businessName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->businessName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    if-eqz v0, :cond_1

    .line 86
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-eqz v0, :cond_2

    .line 89
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    if-eqz v0, :cond_3

    .line 92
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->operatingHours:Lcom/google/personalization/assist/annotate/api/nano/TimeSchedule;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 94
    :cond_3
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->latitudeE7:I

    if-eqz v0, :cond_4

    .line 95
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->latitudeE7:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 97
    :cond_4
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->longitudeE7:I

    if-eqz v0, :cond_5

    .line 98
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->longitudeE7:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 100
    :cond_5
    iget-boolean v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->isOpen:Z

    if-eqz v0, :cond_6

    .line 101
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->isOpen:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 103
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_7

    .line 104
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->nextChange:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 106
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->emailAddress:Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-eqz v0, :cond_8

    .line 107
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->emailAddress:Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 109
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->accountName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 110
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 112
    :cond_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->accountNumber:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 113
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;->accountNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 115
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 116
    return-void
.end method
