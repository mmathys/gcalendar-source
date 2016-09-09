.class public final Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ReturnProductAssistance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;",
        ">;"
    }
.end annotation


# instance fields
.field public alwaysReturnable:Z

.field public canReturn:Z

.field public imageUrl:Ljava/lang/String;

.field public productName:Ljava/lang/String;

.field public returnDaysLeft:I

.field public returnDeadline:Lcom/google/personalization/assist/annotate/api/nano/Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->clear()Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    .line 45
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->productName:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->canReturn:Z

    .line 50
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDaysLeft:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->imageUrl:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->alwaysReturnable:Z

    .line 53
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDeadline:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 54
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->cachedSize:I

    .line 56
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->productName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->productName:Ljava/lang/String;

    .line 88
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_0
    iget-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->canReturn:Z

    if-eqz v1, :cond_1

    .line 91
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->canReturn:Z

    .line 92
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_1
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDaysLeft:I

    if-eqz v1, :cond_2

    .line 95
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDaysLeft:I

    .line 96
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->imageUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 99
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->imageUrl:Ljava/lang/String;

    .line 100
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_3
    iget-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->alwaysReturnable:Z

    if-eqz v1, :cond_4

    .line 103
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->alwaysReturnable:Z

    .line 104
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDeadline:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_5

    .line 107
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDeadline:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 108
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 119
    sparse-switch v0, :sswitch_data_0

    .line 123
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    :sswitch_0
    return-object p0

    .line 129
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->productName:Ljava/lang/String;

    goto :goto_0

    .line 133
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->canReturn:Z

    goto :goto_0

    .line 137
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDaysLeft:I

    goto :goto_0

    .line 141
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->imageUrl:Ljava/lang/String;

    goto :goto_0

    .line 145
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->alwaysReturnable:Z

    goto :goto_0

    .line 149
    :sswitch_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDeadline:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_1

    .line 150
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDeadline:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDeadline:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

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
    .line 62
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->productName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->productName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 65
    :cond_0
    iget-boolean v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->canReturn:Z

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->canReturn:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 68
    :cond_1
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDaysLeft:I

    if-eqz v0, :cond_2

    .line 69
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDaysLeft:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->imageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 74
    :cond_3
    iget-boolean v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->alwaysReturnable:Z

    if-eqz v0, :cond_4

    .line 75
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->alwaysReturnable:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDeadline:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_5

    .line 78
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;->returnDeadline:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 80
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 81
    return-void
.end method
