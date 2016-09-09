.class public final Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CustomizedSnoozePreset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;,
        Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;",
        ">;"
    }
.end annotation


# instance fields
.field public afternoonCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

.field public customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

.field public eveningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

.field public morningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 233
    invoke-virtual {p0}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->clear()Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    .line 234
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    iput-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->morningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    .line 238
    iput-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->afternoonCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    .line 239
    iput-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->eveningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    .line 240
    invoke-static {}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->emptyArray()[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    .line 241
    iput-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->cachedSize:I

    .line 243
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 271
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->morningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    if-eqz v1, :cond_0

    .line 273
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->morningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    .line 274
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->afternoonCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    if-eqz v1, :cond_1

    .line 277
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->afternoonCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    .line 278
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->eveningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    if-eqz v1, :cond_2

    .line 281
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->eveningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    .line 282
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 285
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 286
    iget-object v2, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    aget-object v2, v2, v0

    .line 287
    if-eqz v2, :cond_3

    .line 288
    const/4 v3, 0x4

    .line 289
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 285
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 293
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 301
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 302
    sparse-switch v0, :sswitch_data_0

    .line 306
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    :sswitch_0
    return-object p0

    .line 312
    :sswitch_1
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->morningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    if-nez v0, :cond_1

    .line 313
    new-instance v0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    invoke-direct {v0}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;-><init>()V

    iput-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->morningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->morningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 319
    :sswitch_2
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->afternoonCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    if-nez v0, :cond_2

    .line 320
    new-instance v0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    invoke-direct {v0}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;-><init>()V

    iput-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->afternoonCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->afternoonCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 326
    :sswitch_3
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->eveningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    if-nez v0, :cond_3

    .line 327
    new-instance v0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    invoke-direct {v0}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;-><init>()V

    iput-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->eveningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->eveningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 333
    :sswitch_4
    const/16 v0, 0x22

    .line 334
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 335
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    if-nez v0, :cond_5

    move v0, v1

    .line 336
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    .line 338
    if-eqz v0, :cond_4

    .line 339
    iget-object v3, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 342
    new-instance v3, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    invoke-direct {v3}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;-><init>()V

    aput-object v3, v2, v0

    .line 343
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 344
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    array-length v0, v0

    goto :goto_1

    .line 347
    :cond_6
    new-instance v3, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    invoke-direct {v3}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;-><init>()V

    aput-object v3, v2, v0

    .line 348
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 349
    iput-object v2, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    goto :goto_0

    .line 302
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

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
    .line 249
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->morningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    if-eqz v0, :cond_0

    .line 250
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->morningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->afternoonCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    if-eqz v0, :cond_1

    .line 253
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->afternoonCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->eveningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    if-eqz v0, :cond_2

    .line 256
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->eveningCustomizedTime:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 259
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 260
    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;->customSnoozePresets:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    aget-object v1, v1, v0

    .line 261
    if-eqz v1, :cond_3

    .line 262
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 259
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 267
    return-void
.end method
