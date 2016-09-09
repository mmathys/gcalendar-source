.class public final Lcom/google/personalization/assist/annotate/api/nano/CallAction;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CallAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/CallAction;",
        ">;"
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public originalTypedName:Ljava/lang/String;

.field public phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->clear()Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    .line 39
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/CallAction;
    .locals 1

    .prologue
    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->name:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->id:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->originalTypedName:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->cachedSize:I

    .line 48
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 76
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->name:Ljava/lang/String;

    .line 79
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 82
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    aget-object v2, v2, v0

    .line 84
    if-eqz v2, :cond_1

    .line 85
    const/4 v3, 0x2

    .line 86
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 82
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 91
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->id:Ljava/lang/String;

    .line 92
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->originalTypedName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 95
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->originalTypedName:Ljava/lang/String;

    .line 96
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/CallAction;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 106
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 107
    sparse-switch v0, :sswitch_data_0

    .line 111
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :sswitch_0
    return-object p0

    .line 117
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->name:Ljava/lang/String;

    goto :goto_0

    .line 121
    :sswitch_2
    const/16 v0, 0x12

    .line 122
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 123
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-nez v0, :cond_2

    move v0, v1

    .line 124
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    .line 126
    if-eqz v0, :cond_1

    .line 127
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 130
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;-><init>()V

    aput-object v3, v2, v0

    .line 131
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 132
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    array-length v0, v0

    goto :goto_1

    .line 135
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;-><init>()V

    aput-object v3, v2, v0

    .line 136
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 137
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    goto :goto_0

    .line 141
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->id:Ljava/lang/String;

    goto :goto_0

    .line 145
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->originalTypedName:Ljava/lang/String;

    goto :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/CallAction;

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
    .line 54
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 58
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->phoneNumber:[Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    aget-object v1, v1, v0

    .line 60
    if-eqz v1, :cond_1

    .line 61
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 58
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->id:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->originalTypedName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 69
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;->originalTypedName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 71
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 72
    return-void
.end method
