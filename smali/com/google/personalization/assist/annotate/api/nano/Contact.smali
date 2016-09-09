.class public final Lcom/google/personalization/assist/annotate/api/nano/Contact;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field public emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

.field public focusId:J

.field public gaiaId:Ljava/lang/String;

.field public givenName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

.field public photoUrl:Ljava/lang/String;

.field public profileId:Ljava/lang/String;

.field public syntheticContactId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/Contact;->clear()Lcom/google/personalization/assist/annotate/api/nano/Contact;

    .line 54
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/Contact;
    .locals 2

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->focusId:J

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->syntheticContactId:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->gaiaId:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->profileId:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->name:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->givenName:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    .line 64
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->photoUrl:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->cachedSize:I

    .line 68
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 117
    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->focusId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 118
    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->focusId:J

    .line 119
    invoke-static {v2, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->syntheticContactId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->syntheticContactId:Ljava/lang/String;

    .line 123
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->profileId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 126
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->profileId:Ljava/lang/String;

    .line 127
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 130
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->name:Ljava/lang/String;

    .line 131
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 133
    :cond_3
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 134
    :goto_0
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 135
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    aget-object v3, v3, v0

    .line 136
    if-eqz v3, :cond_4

    .line 137
    const/4 v4, 0x5

    .line 138
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 134
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    .line 142
    :cond_6
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->photoUrl:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 143
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->photoUrl:Ljava/lang/String;

    .line 144
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 146
    :cond_7
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    array-length v2, v2

    if-lez v2, :cond_9

    .line 147
    :goto_1
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    array-length v2, v2

    if-ge v1, v2, :cond_9

    .line 148
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    aget-object v2, v2, v1

    .line 149
    if-eqz v2, :cond_8

    .line 150
    const/4 v3, 0x7

    .line 151
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 147
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    :cond_9
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->gaiaId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 156
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->gaiaId:Ljava/lang/String;

    .line 157
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_a
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->givenName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 160
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->givenName:Ljava/lang/String;

    .line 161
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_b
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Contact;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 171
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 172
    sparse-switch v0, :sswitch_data_0

    .line 176
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :sswitch_0
    return-object p0

    .line 182
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->focusId:J

    goto :goto_0

    .line 186
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->syntheticContactId:Ljava/lang/String;

    goto :goto_0

    .line 190
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->profileId:Ljava/lang/String;

    goto :goto_0

    .line 194
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->name:Ljava/lang/String;

    goto :goto_0

    .line 198
    :sswitch_5
    const/16 v0, 0x2a

    .line 199
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 200
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-nez v0, :cond_2

    move v0, v1

    .line 201
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    .line 203
    if-eqz v0, :cond_1

    .line 204
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 207
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;-><init>()V

    aput-object v3, v2, v0

    .line 208
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 209
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v0, v0

    goto :goto_1

    .line 212
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;-><init>()V

    aput-object v3, v2, v0

    .line 213
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 214
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    goto :goto_0

    .line 218
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->photoUrl:Ljava/lang/String;

    goto :goto_0

    .line 222
    :sswitch_7
    const/16 v0, 0x3a

    .line 223
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 224
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-nez v0, :cond_5

    move v0, v1

    .line 225
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    .line 227
    if-eqz v0, :cond_4

    .line 228
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 231
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;-><init>()V

    aput-object v3, v2, v0

    .line 232
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 233
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    array-length v0, v0

    goto :goto_3

    .line 236
    :cond_6
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;-><init>()V

    aput-object v3, v2, v0

    .line 237
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 238
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    goto/16 :goto_0

    .line 242
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->gaiaId:Ljava/lang/String;

    goto/16 :goto_0

    .line 246
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->givenName:Ljava/lang/String;

    goto/16 :goto_0

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/Contact;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Contact;

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
    const/4 v1, 0x0

    .line 74
    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->focusId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->focusId:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->syntheticContactId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->syntheticContactId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->profileId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->profileId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 88
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    aget-object v2, v2, v0

    .line 89
    if-eqz v2, :cond_4

    .line 90
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 87
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->photoUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 95
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->photoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 97
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 98
    :goto_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 99
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    aget-object v0, v0, v1

    .line 100
    if-eqz v0, :cond_7

    .line 101
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 98
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->gaiaId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 106
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->gaiaId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 108
    :cond_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->givenName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 109
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Contact;->givenName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 111
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 112
    return-void
.end method
