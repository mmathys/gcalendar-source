.class public final Lcom/google/personalization/assist/annotate/api/nano/EmailAction;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "EmailAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/EmailAction;",
        ">;"
    }
.end annotation


# instance fields
.field public emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

.field public name:Ljava/lang/String;

.field public originalTypedName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->clear()Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    .line 36
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/EmailAction;
    .locals 1

    .prologue
    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->name:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->originalTypedName:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->cachedSize:I

    .line 44
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->name:Ljava/lang/String;

    .line 72
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 75
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    aget-object v2, v2, v0

    .line 77
    if-eqz v2, :cond_1

    .line 78
    const/4 v3, 0x2

    .line 79
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->originalTypedName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 84
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->originalTypedName:Ljava/lang/String;

    .line 85
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/EmailAction;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->name:Ljava/lang/String;

    goto :goto_0

    .line 110
    :sswitch_2
    const/16 v0, 0x12

    .line 111
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 112
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-nez v0, :cond_2

    move v0, v1

    .line 113
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    .line 115
    if-eqz v0, :cond_1

    .line 116
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 119
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;-><init>()V

    aput-object v3, v2, v0

    .line 120
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 121
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v0, v0

    goto :goto_1

    .line 124
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;-><init>()V

    aput-object v3, v2, v0

    .line 125
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 126
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    goto :goto_0

    .line 130
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->originalTypedName:Ljava/lang/String;

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

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
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 54
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->emailAddress:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    aget-object v1, v1, v0

    .line 56
    if-eqz v1, :cond_1

    .line 57
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->originalTypedName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;->originalTypedName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 64
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 65
    return-void
.end method
