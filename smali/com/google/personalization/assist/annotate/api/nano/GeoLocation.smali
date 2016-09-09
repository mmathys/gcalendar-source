.class public final Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GeoLocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;",
        ">;"
    }
.end annotation


# instance fields
.field public accuracyRadius:I

.field public latitudeE7:I

.field public longitudeE7:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->clear()Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    .line 36
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->latitudeE7:I

    .line 40
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->longitudeE7:I

    .line 41
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->accuracyRadius:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->cachedSize:I

    .line 44
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 65
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->latitudeE7:I

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->latitudeE7:I

    .line 67
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_0
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->longitudeE7:I

    if-eqz v1, :cond_1

    .line 70
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->longitudeE7:I

    .line 71
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_1
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->accuracyRadius:I

    if-eqz v1, :cond_2

    .line 74
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->accuracyRadius:I

    .line 75
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 86
    sparse-switch v0, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :sswitch_0
    return-object p0

    .line 96
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->latitudeE7:I

    goto :goto_0

    .line 100
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->longitudeE7:I

    goto :goto_0

    .line 104
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->accuracyRadius:I

    goto :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

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
    .line 50
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->latitudeE7:I

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->latitudeE7:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 53
    :cond_0
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->longitudeE7:I

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->longitudeE7:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 56
    :cond_1
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->accuracyRadius:I

    if-eqz v0, :cond_2

    .line 57
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;->accuracyRadius:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 59
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 60
    return-void
.end method
