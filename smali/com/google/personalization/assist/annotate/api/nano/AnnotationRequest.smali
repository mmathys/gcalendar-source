.class public final Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AnnotationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

.field public clientType:I

.field public country:Ljava/lang/String;

.field public deviceType:I

.field public emailAddress:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 53
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    .line 54
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->title:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->language:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->country:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->clientType:I

    .line 58
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->deviceType:I

    .line 59
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->timezone:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->emailAddress:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->sessionId:Ljava/lang/String;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->cachedSize:I

    .line 63
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 105
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 106
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 107
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    aget-object v2, v2, v0

    .line 109
    if-eqz v2, :cond_0

    .line 110
    const/4 v3, 0x1

    .line 111
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 116
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->title:Ljava/lang/String;

    .line 117
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->language:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 120
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->language:Ljava/lang/String;

    .line 121
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->country:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 124
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->country:Ljava/lang/String;

    .line 125
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 127
    :cond_4
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->clientType:I

    if-eq v0, v4, :cond_5

    .line 128
    const/4 v0, 0x5

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->clientType:I

    .line 129
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 131
    :cond_5
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->deviceType:I

    if-eq v0, v4, :cond_6

    .line 132
    const/4 v0, 0x6

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->deviceType:I

    .line 133
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->timezone:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 136
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->timezone:Ljava/lang/String;

    .line 137
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 139
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->emailAddress:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 140
    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->emailAddress:Ljava/lang/String;

    .line 141
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 143
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 144
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->sessionId:Ljava/lang/String;

    .line 145
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 147
    :cond_9
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 155
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 156
    sparse-switch v0, :sswitch_data_0

    .line 160
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :sswitch_0
    return-object p0

    .line 166
    :sswitch_1
    const/16 v0, 0xa

    .line 167
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 168
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    if-nez v0, :cond_2

    move v0, v1

    .line 169
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    .line 171
    if-eqz v0, :cond_1

    .line 172
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 175
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;-><init>()V

    aput-object v3, v2, v0

    .line 176
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 177
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    array-length v0, v0

    goto :goto_1

    .line 180
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;-><init>()V

    aput-object v3, v2, v0

    .line 181
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 182
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    goto :goto_0

    .line 186
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->title:Ljava/lang/String;

    goto :goto_0

    .line 190
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->language:Ljava/lang/String;

    goto :goto_0

    .line 194
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->country:Ljava/lang/String;

    goto :goto_0

    .line 198
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 199
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->clientType:I

    goto :goto_0

    .line 214
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 215
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 223
    :pswitch_1
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->deviceType:I

    goto :goto_0

    .line 229
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->timezone:Ljava/lang/String;

    goto :goto_0

    .line 233
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->emailAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 237
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->sessionId:Ljava/lang/String;

    goto/16 :goto_0

    .line 156
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
        0x4a -> :sswitch_9
    .end sparse-switch

    .line 199
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

    .line 215
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, -0x80000000

    .line 68
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 69
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->annotationQuery:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationQuery;

    aget-object v1, v1, v0

    .line 71
    if-eqz v1, :cond_0

    .line 72
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->language:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 80
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->language:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->country:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 83
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->country:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 85
    :cond_4
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->clientType:I

    if-eq v0, v3, :cond_5

    .line 86
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->clientType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 88
    :cond_5
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->deviceType:I

    if-eq v0, v3, :cond_6

    .line 89
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->deviceType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 91
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->timezone:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 92
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->timezone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 94
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->emailAddress:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 95
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 97
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 98
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 100
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 101
    return-void
.end method
