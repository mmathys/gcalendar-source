.class public final Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TemplatedSuggestRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public clientType:I

.field public country:Ljava/lang/String;

.field public deviceType:I

.field public emailAddress:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public requestData:Lcom/google/personalization/assist/annotate/api/nano/TemplateRequests;

.field public requestDataPayload:[B

.field public timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->requestDataPayload:[B

    .line 51
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->language:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->country:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->clientType:I

    .line 54
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->deviceType:I

    .line 55
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->timezone:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->emailAddress:Ljava/lang/String;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->cachedSize:I

    .line 58
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 92
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->requestDataPayload:[B

    if-eqz v1, :cond_0

    .line 94
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->requestDataPayload:[B

    .line 95
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->requestData:Lcom/google/personalization/assist/annotate/api/nano/TemplateRequests;

    if-eqz v1, :cond_1

    .line 98
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->requestData:Lcom/google/personalization/assist/annotate/api/nano/TemplateRequests;

    .line 99
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->language:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 102
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->language:Ljava/lang/String;

    .line 103
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->country:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 106
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->country:Ljava/lang/String;

    .line 107
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_3
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->clientType:I

    if-eq v1, v3, :cond_4

    .line 110
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->clientType:I

    .line 111
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_4
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->deviceType:I

    if-eq v1, v3, :cond_5

    .line 114
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->deviceType:I

    .line 115
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->timezone:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 118
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->timezone:Ljava/lang/String;

    .line 119
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->emailAddress:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 122
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->emailAddress:Ljava/lang/String;

    .line 123
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_7
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 134
    sparse-switch v0, :sswitch_data_0

    .line 138
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :sswitch_0
    return-object p0

    .line 144
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->requestDataPayload:[B

    goto :goto_0

    .line 148
    :sswitch_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->requestData:Lcom/google/personalization/assist/annotate/api/nano/TemplateRequests;

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/TemplateRequests;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/TemplateRequests;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->requestData:Lcom/google/personalization/assist/annotate/api/nano/TemplateRequests;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->requestData:Lcom/google/personalization/assist/annotate/api/nano/TemplateRequests;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 155
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->language:Ljava/lang/String;

    goto :goto_0

    .line 159
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->country:Ljava/lang/String;

    goto :goto_0

    .line 163
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 164
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 173
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->clientType:I

    goto :goto_0

    .line 179
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 180
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 188
    :pswitch_1
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->deviceType:I

    goto :goto_0

    .line 194
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->timezone:Ljava/lang/String;

    goto :goto_0

    .line 198
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->emailAddress:Ljava/lang/String;

    goto :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch

    .line 164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 180
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;

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
    const/high16 v2, -0x80000000

    .line 63
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->requestDataPayload:[B

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->requestDataPayload:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->requestData:Lcom/google/personalization/assist/annotate/api/nano/TemplateRequests;

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->requestData:Lcom/google/personalization/assist/annotate/api/nano/TemplateRequests;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->language:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 70
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->language:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->country:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 73
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->country:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 75
    :cond_3
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->clientType:I

    if-eq v0, v2, :cond_4

    .line 76
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->clientType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 78
    :cond_4
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->deviceType:I

    if-eq v0, v2, :cond_5

    .line 79
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->deviceType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->timezone:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 82
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->timezone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->emailAddress:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 85
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestRequest;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 87
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 88
    return-void
.end method
