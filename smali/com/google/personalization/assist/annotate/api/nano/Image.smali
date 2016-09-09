.class public final Lcom/google/personalization/assist/annotate/api/nano/Image;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/Image;",
        ">;"
    }
.end annotation


# instance fields
.field public author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

.field public imageUrl:Ljava/lang/String;

.field public referrerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/Image;->clear()Lcom/google/personalization/assist/annotate/api/nano/Image;

    .line 36
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/Image;
    .locals 1

    .prologue
    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->imageUrl:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->referrerUrl:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->cachedSize:I

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
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->imageUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->imageUrl:Ljava/lang/String;

    .line 72
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->referrerUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->referrerUrl:Ljava/lang/String;

    .line 76
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 79
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 80
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    aget-object v2, v2, v0

    .line 81
    if-eqz v2, :cond_2

    .line 82
    const/4 v3, 0x3

    .line 83
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 87
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Image;
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

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->imageUrl:Ljava/lang/String;

    goto :goto_0

    .line 110
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->referrerUrl:Ljava/lang/String;

    goto :goto_0

    .line 114
    :sswitch_3
    const/16 v0, 0x1a

    .line 115
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 116
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    if-nez v0, :cond_2

    move v0, v1

    .line 117
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    .line 119
    if-eqz v0, :cond_1

    .line 120
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 123
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;-><init>()V

    aput-object v3, v2, v0

    .line 124
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 125
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    array-length v0, v0

    goto :goto_1

    .line 128
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;-><init>()V

    aput-object v3, v2, v0

    .line 129
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 130
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/Image;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Image;

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
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->imageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->referrerUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->referrerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 57
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 58
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Image;->author:[Lcom/google/personalization/assist/annotate/api/nano/ImageAuthor;

    aget-object v1, v1, v0

    .line 59
    if-eqz v1, :cond_2

    .line 60
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 57
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 65
    return-void
.end method
