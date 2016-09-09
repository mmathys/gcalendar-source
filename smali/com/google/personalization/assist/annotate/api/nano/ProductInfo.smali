.class public final Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ProductInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;


# instance fields
.field public currencyCode:Ljava/lang/String;

.field public highPrice:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public lowPrice:Ljava/lang/String;

.field public numStores:I

.field public price:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->clear()Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;

    .line 51
    return-void
.end method

.method public static emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->title:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->url:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->price:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->currencyCode:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->imageUrl:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->lowPrice:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->highPrice:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->numStores:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->cachedSize:I

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
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->title:Ljava/lang/String;

    .line 102
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->url:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->url:Ljava/lang/String;

    .line 106
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->price:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->price:Ljava/lang/String;

    .line 110
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->currencyCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->currencyCode:Ljava/lang/String;

    .line 114
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->imageUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 117
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->imageUrl:Ljava/lang/String;

    .line 118
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->lowPrice:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 121
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->lowPrice:Ljava/lang/String;

    .line 122
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->highPrice:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 125
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->highPrice:Ljava/lang/String;

    .line 126
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_6
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->numStores:I

    if-eqz v1, :cond_7

    .line 129
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->numStores:I

    .line 130
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_7
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;
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

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 155
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->url:Ljava/lang/String;

    goto :goto_0

    .line 159
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->price:Ljava/lang/String;

    goto :goto_0

    .line 163
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->currencyCode:Ljava/lang/String;

    goto :goto_0

    .line 167
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->imageUrl:Ljava/lang/String;

    goto :goto_0

    .line 171
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->lowPrice:Ljava/lang/String;

    goto :goto_0

    .line 175
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->highPrice:Ljava/lang/String;

    goto :goto_0

    .line 179
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->numStores:I

    goto :goto_0

    .line 141
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
        0x40 -> :sswitch_8
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;

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
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->url:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->price:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->price:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->currencyCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->imageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 83
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->lowPrice:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 86
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->lowPrice:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 88
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->highPrice:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 89
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->highPrice:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 91
    :cond_6
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->numStores:I

    if-eqz v0, :cond_7

    .line 92
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ProductInfo;->numStores:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 94
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 95
    return-void
.end method
