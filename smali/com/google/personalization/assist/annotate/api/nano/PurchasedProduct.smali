.class public final Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "PurchasedProduct.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;",
        ">;"
    }
.end annotation


# instance fields
.field public creationTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public emailUrl:Ljava/lang/String;

.field public expiryTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public imageUrl:Ljava/lang/String;

.field public merchant:Ljava/lang/String;

.field public productUrl:Ljava/lang/String;

.field public updatedTime:Lcom/google/personalization/assist/annotate/api/nano/Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->clear()Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;

    .line 48
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->productUrl:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->emailUrl:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->imageUrl:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->merchant:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->creationTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 56
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->updatedTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 57
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->expiryTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 58
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->cachedSize:I

    .line 60
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->productUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->productUrl:Ljava/lang/String;

    .line 95
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->emailUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->emailUrl:Ljava/lang/String;

    .line 99
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->imageUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->imageUrl:Ljava/lang/String;

    .line 103
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->merchant:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->merchant:Ljava/lang/String;

    .line 107
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->creationTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_4

    .line 110
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->creationTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 111
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->updatedTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_5

    .line 114
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->updatedTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 115
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->expiryTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_6

    .line 118
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->expiryTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 119
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_6
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 130
    sparse-switch v0, :sswitch_data_0

    .line 134
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :sswitch_0
    return-object p0

    .line 140
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->productUrl:Ljava/lang/String;

    goto :goto_0

    .line 144
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->emailUrl:Ljava/lang/String;

    goto :goto_0

    .line 148
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->imageUrl:Ljava/lang/String;

    goto :goto_0

    .line 152
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->merchant:Ljava/lang/String;

    goto :goto_0

    .line 156
    :sswitch_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->creationTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->creationTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->creationTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 163
    :sswitch_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->updatedTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_2

    .line 164
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->updatedTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->updatedTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 170
    :sswitch_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->expiryTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_3

    .line 171
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->expiryTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->expiryTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;

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
    .line 66
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->productUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->productUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->emailUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->emailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->imageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->merchant:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->merchant:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->creationTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_4

    .line 79
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->creationTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->updatedTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_5

    .line 82
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->updatedTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->expiryTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_6

    .line 85
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;->expiryTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 87
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 88
    return-void
.end method
