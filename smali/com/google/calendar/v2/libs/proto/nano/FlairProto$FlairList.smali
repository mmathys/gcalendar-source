.class public final Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "FlairProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/libs/proto/nano/FlairProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlairList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;",
        ">;"
    }
.end annotation


# instance fields
.field public flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

.field public locale:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 254
    invoke-virtual {p0}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->clear()Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;

    .line 255
    return-void
.end method

.method public static parseFrom([B)Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;

    invoke-direct {v0}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->emptyArray()[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->locale:Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->cachedSize:I

    .line 262
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 284
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 285
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 286
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    aget-object v2, v2, v0

    .line 288
    if-eqz v2, :cond_0

    .line 289
    const/4 v3, 0x1

    .line 290
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 286
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->locale:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->locale:Ljava/lang/String;

    .line 296
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 298
    :cond_2
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 306
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 307
    sparse-switch v0, :sswitch_data_0

    .line 311
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    :sswitch_0
    return-object p0

    .line 317
    :sswitch_1
    const/16 v0, 0xa

    .line 318
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 319
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    if-nez v0, :cond_2

    move v0, v1

    .line 320
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    .line 322
    if-eqz v0, :cond_1

    .line 323
    iget-object v3, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 326
    new-instance v3, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    invoke-direct {v3}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;-><init>()V

    aput-object v3, v2, v0

    .line 327
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 328
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    array-length v0, v0

    goto :goto_1

    .line 331
    :cond_3
    new-instance v3, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    invoke-direct {v3}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;-><init>()V

    aput-object v3, v2, v0

    .line 332
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 333
    iput-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    goto :goto_0

    .line 337
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->locale:Ljava/lang/String;

    goto :goto_0

    .line 307
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
    .line 228
    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;

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
    .line 268
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 269
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->flair:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    aget-object v1, v1, v0

    .line 271
    if-eqz v1, :cond_0

    .line 272
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->locale:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 277
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$FlairList;->locale:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 279
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 280
    return-void
.end method
