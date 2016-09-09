.class public final Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "PreviousItems.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;",
        ">;"
    }
.end annotation


# instance fields
.field public item:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 29
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->item:[Ljava/lang/String;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->cachedSize:I

    .line 31
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v3

    .line 50
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->item:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->item:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v0

    move v2, v0

    .line 53
    :goto_0
    iget-object v4, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->item:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 54
    iget-object v4, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->item:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 55
    if-eqz v4, :cond_0

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 58
    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_1
    add-int v0, v3, v1

    .line 62
    mul-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    .line 64
    :goto_1
    return v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 73
    sparse-switch v0, :sswitch_data_0

    .line 77
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    :sswitch_0
    return-object p0

    .line 83
    :sswitch_1
    const/16 v0, 0xa

    .line 84
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 85
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->item:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 86
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 87
    if-eqz v0, :cond_1

    .line 88
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->item:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 91
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 92
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->item:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 96
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->item:[Ljava/lang/String;

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;

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
    .line 36
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->item:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->item:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 37
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->item:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;->item:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 39
    if-eqz v1, :cond_0

    .line 40
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 45
    return-void
.end method
