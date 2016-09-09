.class public final Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "BookedHotel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;",
        ">;"
    }
.end annotation


# instance fields
.field public phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;->clear()Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;

    .line 30
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    .line 34
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;->cachedSize:I

    .line 36
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    .line 53
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 64
    sparse-switch v0, :sswitch_data_0

    .line 68
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :sswitch_0
    return-object p0

    .line 74
    :sswitch_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 64
    nop

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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;

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
    .line 42
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;->phoneNumber:Lcom/google/personalization/assist/annotate/api/nano/PhoneNumber;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 46
    return-void
.end method
