.class public final Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NetworkEventUsage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;


# instance fields
.field public contentType:Ljava/lang/String;

.field public httpStatusCode:Ljava/lang/Integer;

.field public networkConnectionInfo:Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;

.field public processStats:Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

.field public requestNegotiatedProtocol:I

.field public requestPath:Ljava/lang/String;

.field public requestSizeBytes:Ljava/lang/Integer;

.field public responseSizeBytes:Ljava/lang/Integer;

.field public subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

.field public timeToResponseDataFinishMs:Ljava/lang/Integer;

.field public timeToResponseHeaderMs:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 59
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->contentType:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestPath:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->timeToResponseDataFinishMs:Ljava/lang/Integer;

    .line 62
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->timeToResponseHeaderMs:Ljava/lang/Integer;

    .line 63
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->httpStatusCode:Ljava/lang/Integer;

    .line 64
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->responseSizeBytes:Ljava/lang/Integer;

    .line 65
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestSizeBytes:Ljava/lang/Integer;

    .line 66
    const/high16 v0, -0x80000000

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestNegotiatedProtocol:I

    .line 67
    invoke-static {}, Llogs/proto/wireless/performance/mobile/nano/SubRequestData;->emptyArray()[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->cachedSize:I

    .line 69
    return-void
.end method

.method public static emptyArray()[Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;

    sput-object v0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;

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
.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 117
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 118
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x1

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->contentType:Ljava/lang/String;

    .line 120
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_0
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 123
    const/4 v1, 0x2

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestPath:Ljava/lang/String;

    .line 124
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_1
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->timeToResponseDataFinishMs:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 127
    const/4 v1, 0x3

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->timeToResponseDataFinishMs:Ljava/lang/Integer;

    .line 128
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    :cond_2
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->timeToResponseHeaderMs:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 131
    const/4 v1, 0x4

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->timeToResponseHeaderMs:Ljava/lang/Integer;

    .line 132
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_3
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->httpStatusCode:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 135
    const/4 v1, 0x5

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->httpStatusCode:Ljava/lang/Integer;

    .line 136
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_4
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->responseSizeBytes:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 139
    const/4 v1, 0x6

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->responseSizeBytes:Ljava/lang/Integer;

    .line 140
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_5
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestSizeBytes:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 143
    const/4 v1, 0x7

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestSizeBytes:Ljava/lang/Integer;

    .line 144
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_6
    iget v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestNegotiatedProtocol:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_7

    .line 147
    const/16 v1, 0x8

    iget v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestNegotiatedProtocol:I

    .line 148
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_7
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    if-eqz v1, :cond_a

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    array-length v1, v1

    if-lez v1, :cond_a

    .line 151
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 152
    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    aget-object v2, v2, v0

    .line 153
    if-eqz v2, :cond_8

    .line 154
    const/16 v3, 0x9

    .line 155
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 151
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    move v0, v1

    .line 159
    :cond_a
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->processStats:Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

    if-eqz v1, :cond_b

    .line 160
    const/16 v1, 0xa

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->processStats:Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

    .line 161
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_b
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->networkConnectionInfo:Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;

    if-eqz v1, :cond_c

    .line 164
    const/16 v1, 0xb

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->networkConnectionInfo:Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;

    .line 165
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_c
    return v0
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
    invoke-virtual {p0, p1}, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 175
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 176
    sparse-switch v0, :sswitch_data_0

    .line 180
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    :sswitch_0
    return-object p0

    .line 186
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->contentType:Ljava/lang/String;

    goto :goto_0

    .line 190
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestPath:Ljava/lang/String;

    goto :goto_0

    .line 194
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->timeToResponseDataFinishMs:Ljava/lang/Integer;

    goto :goto_0

    .line 198
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->timeToResponseHeaderMs:Ljava/lang/Integer;

    goto :goto_0

    .line 202
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->httpStatusCode:Ljava/lang/Integer;

    goto :goto_0

    .line 206
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->responseSizeBytes:Ljava/lang/Integer;

    goto :goto_0

    .line 210
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestSizeBytes:Ljava/lang/Integer;

    goto :goto_0

    .line 214
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 215
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestNegotiatedProtocol:I

    goto :goto_0

    .line 229
    :sswitch_9
    const/16 v0, 0x4a

    .line 230
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 231
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    if-nez v0, :cond_2

    move v0, v1

    .line 232
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    .line 234
    if-eqz v0, :cond_1

    .line 235
    iget-object v3, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 238
    new-instance v3, Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    invoke-direct {v3}, Llogs/proto/wireless/performance/mobile/nano/SubRequestData;-><init>()V

    aput-object v3, v2, v0

    .line 239
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 240
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 231
    :cond_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    array-length v0, v0

    goto :goto_1

    .line 243
    :cond_3
    new-instance v3, Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    invoke-direct {v3}, Llogs/proto/wireless/performance/mobile/nano/SubRequestData;-><init>()V

    aput-object v3, v2, v0

    .line 244
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 245
    iput-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    goto/16 :goto_0

    .line 249
    :sswitch_a
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->processStats:Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

    if-nez v0, :cond_4

    .line 250
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->processStats:Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

    .line 252
    :cond_4
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->processStats:Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 256
    :sswitch_b
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->networkConnectionInfo:Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;

    if-nez v0, :cond_5

    .line 257
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->networkConnectionInfo:Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;

    .line 259
    :cond_5
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->networkConnectionInfo:Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 176
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 77
    :cond_0
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 78
    const/4 v0, 0x2

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 80
    :cond_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->timeToResponseDataFinishMs:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 81
    const/4 v0, 0x3

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->timeToResponseDataFinishMs:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 83
    :cond_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->timeToResponseHeaderMs:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 84
    const/4 v0, 0x4

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->timeToResponseHeaderMs:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 86
    :cond_3
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->httpStatusCode:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 87
    const/4 v0, 0x5

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->httpStatusCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 89
    :cond_4
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->responseSizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 90
    const/4 v0, 0x6

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->responseSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 92
    :cond_5
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestSizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 93
    const/4 v0, 0x7

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 95
    :cond_6
    iget v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestNegotiatedProtocol:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    .line 96
    const/16 v0, 0x8

    iget v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->requestNegotiatedProtocol:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 98
    :cond_7
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    if-eqz v0, :cond_9

    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 99
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    .line 100
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->subRequest:[Llogs/proto/wireless/performance/mobile/nano/SubRequestData;

    aget-object v1, v1, v0

    .line 101
    if-eqz v1, :cond_8

    .line 102
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 99
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_9
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->processStats:Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

    if-eqz v0, :cond_a

    .line 107
    const/16 v0, 0xa

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->processStats:Llogs/proto/wireless/performance/mobile/nano/AndroidProcessStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 109
    :cond_a
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->networkConnectionInfo:Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;

    if-eqz v0, :cond_b

    .line 110
    const/16 v0, 0xb

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkEventUsage;->networkConnectionInfo:Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 112
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 113
    return-void
.end method
