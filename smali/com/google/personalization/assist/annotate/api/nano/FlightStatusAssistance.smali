.class public final Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "FlightStatusAssistance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;",
        ">;"
    }
.end annotation


# instance fields
.field public flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->clear()Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;

    .line 33
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;
    .locals 1

    .prologue
    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->title:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->cachedSize:I

    .line 40
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->title:Ljava/lang/String;

    .line 65
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 68
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    aget-object v2, v2, v0

    .line 70
    if-eqz v2, :cond_1

    .line 71
    const/4 v3, 0x2

    .line 72
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 68
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 76
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 85
    sparse-switch v0, :sswitch_data_0

    .line 89
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :sswitch_0
    return-object p0

    .line 95
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->title:Ljava/lang/String;

    goto :goto_0

    .line 99
    :sswitch_2
    const/16 v0, 0x12

    .line 100
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 101
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    if-nez v0, :cond_2

    move v0, v1

    .line 102
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    .line 104
    if-eqz v0, :cond_1

    .line 105
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 108
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;-><init>()V

    aput-object v3, v2, v0

    .line 109
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 110
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    array-length v0, v0

    goto :goto_1

    .line 113
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;-><init>()V

    aput-object v3, v2, v0

    .line 114
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 115
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    goto :goto_0

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;

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
    .line 46
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 50
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;->flightInfo:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    aget-object v1, v1, v0

    .line 52
    if-eqz v1, :cond_1

    .line 53
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 50
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 58
    return-void
.end method
