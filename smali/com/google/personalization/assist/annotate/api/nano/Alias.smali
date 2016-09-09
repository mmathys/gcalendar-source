.class public final Lcom/google/personalization/assist/annotate/api/nano/Alias;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Alias.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/Alias;",
        ">;"
    }
.end annotation


# instance fields
.field public address:Lcom/google/personalization/assist/annotate/api/nano/Address;

.field public categoryId:Ljava/lang/String;

.field public latlng:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

.field public locationType:I

.field public metadata:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public placeId:Ljava/lang/String;

.field public placeReference:Ljava/lang/String;

.field public syncId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/Alias;->clear()Lcom/google/personalization/assist/annotate/api/nano/Alias;

    .line 60
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/Alias;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->syncId:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->name:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->locationType:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->metadata:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->categoryId:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    .line 69
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->latlng:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->placeReference:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->placeId:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->cachedSize:I

    .line 74
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->syncId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->syncId:Ljava/lang/String;

    .line 115
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->name:Ljava/lang/String;

    .line 119
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->metadata:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 122
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->metadata:Ljava/lang/String;

    .line 123
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    if-eqz v1, :cond_3

    .line 126
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    .line 127
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->latlng:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    if-eqz v1, :cond_4

    .line 130
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->latlng:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    .line 131
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->placeReference:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 134
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->placeReference:Ljava/lang/String;

    .line 135
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->categoryId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 138
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->categoryId:Ljava/lang/String;

    .line 139
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_6
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->locationType:I

    if-eqz v1, :cond_7

    .line 142
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->locationType:I

    .line 143
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_7
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->placeId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 146
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->placeId:Ljava/lang/String;

    .line 147
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Alias;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 158
    sparse-switch v0, :sswitch_data_0

    .line 162
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :sswitch_0
    return-object p0

    .line 168
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->syncId:Ljava/lang/String;

    goto :goto_0

    .line 172
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->name:Ljava/lang/String;

    goto :goto_0

    .line 176
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->metadata:Ljava/lang/String;

    goto :goto_0

    .line 180
    :sswitch_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Address;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Address;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 187
    :sswitch_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->latlng:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    if-nez v0, :cond_2

    .line 188
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->latlng:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->latlng:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 194
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->placeReference:Ljava/lang/String;

    goto :goto_0

    .line 198
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->categoryId:Ljava/lang/String;

    goto :goto_0

    .line 202
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 203
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->locationType:I

    goto :goto_0

    .line 214
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->placeId:Ljava/lang/String;

    goto :goto_0

    .line 158
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
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/Alias;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Alias;

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
    .line 80
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->syncId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->syncId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->metadata:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->metadata:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    if-eqz v0, :cond_3

    .line 90
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->address:Lcom/google/personalization/assist/annotate/api/nano/Address;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->latlng:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    if-eqz v0, :cond_4

    .line 93
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->latlng:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->placeReference:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 96
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->placeReference:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->categoryId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 99
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->categoryId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 101
    :cond_6
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->locationType:I

    if-eqz v0, :cond_7

    .line 102
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->locationType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 104
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->placeId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 105
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Alias;->placeId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 107
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 108
    return-void
.end method
