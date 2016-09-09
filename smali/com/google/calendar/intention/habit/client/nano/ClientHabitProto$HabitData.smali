.class public final Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ClientHabitProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HabitData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;",
        ">;"
    }
.end annotation


# instance fields
.field public color:Ljava/lang/String;

.field public contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

.field public customName:Ljava/lang/String;

.field public deepLink:Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;

.field public initialInstanceData:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;

.field public reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

.field public summary:Ljava/lang/String;

.field public transparency:I

.field public type:I

.field public visibility:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 281
    invoke-virtual {p0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;

    .line 282
    return-void
.end method

.method public static parseFrom([B)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 541
    new-instance v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;

    invoke-direct {v0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 285
    iput v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->type:I

    .line 286
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->customName:Ljava/lang/String;

    .line 287
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->summary:Ljava/lang/String;

    .line 288
    iput-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    .line 289
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->color:Ljava/lang/String;

    .line 290
    iput v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->visibility:I

    .line 291
    iput v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->transparency:I

    .line 292
    iput-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    .line 293
    iput-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->initialInstanceData:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;

    .line 294
    iput-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->deepLink:Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;

    .line 295
    iput-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 296
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->cachedSize:I

    .line 297
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 338
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 339
    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->type:I

    if-eqz v1, :cond_0

    .line 340
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->type:I

    .line 341
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->customName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->customName:Ljava/lang/String;

    .line 345
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    if-eqz v1, :cond_2

    .line 348
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    .line 349
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->color:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 352
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->color:Ljava/lang/String;

    .line 353
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    :cond_3
    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->visibility:I

    if-eqz v1, :cond_4

    .line 356
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->visibility:I

    .line 357
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    :cond_4
    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->transparency:I

    if-eqz v1, :cond_5

    .line 360
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->transparency:I

    .line 361
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 363
    :cond_5
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    if-eqz v1, :cond_6

    .line 364
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    .line 365
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    :cond_6
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->summary:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 368
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->summary:Ljava/lang/String;

    .line 369
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 371
    :cond_7
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->initialInstanceData:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;

    if-eqz v1, :cond_8

    .line 372
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->initialInstanceData:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;

    .line 373
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 375
    :cond_8
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->deepLink:Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;

    if-eqz v1, :cond_9

    .line 376
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->deepLink:Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;

    .line 377
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_9
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 388
    sparse-switch v0, :sswitch_data_0

    .line 392
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    :sswitch_0
    return-object p0

    .line 398
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 399
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 469
    :sswitch_2
    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->type:I

    goto :goto_0

    .line 475
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->customName:Ljava/lang/String;

    goto :goto_0

    .line 479
    :sswitch_4
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    if-nez v0, :cond_1

    .line 480
    new-instance v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    invoke-direct {v0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 486
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->color:Ljava/lang/String;

    goto :goto_0

    .line 490
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 491
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 495
    :pswitch_0
    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->visibility:I

    goto :goto_0

    .line 501
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 502
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 505
    :pswitch_1
    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->transparency:I

    goto :goto_0

    .line 511
    :sswitch_8
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    if-nez v0, :cond_2

    .line 512
    new-instance v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    invoke-direct {v0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 518
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->summary:Ljava/lang/String;

    goto :goto_0

    .line 522
    :sswitch_a
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->initialInstanceData:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;

    if-nez v0, :cond_3

    .line 523
    new-instance v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;

    invoke-direct {v0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->initialInstanceData:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->initialInstanceData:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 529
    :sswitch_b
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->deepLink:Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;

    if-nez v0, :cond_4

    .line 530
    new-instance v0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;

    invoke-direct {v0}, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->deepLink:Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;

    .line 532
    :cond_4
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->deepLink:Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 388
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch

    .line 399
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_2
        0x69 -> :sswitch_2
        0x6a -> :sswitch_2
        0x6b -> :sswitch_2
        0x6c -> :sswitch_2
        0x6d -> :sswitch_2
        0x6e -> :sswitch_2
        0x6f -> :sswitch_2
        0x70 -> :sswitch_2
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0xcc -> :sswitch_2
        0xcd -> :sswitch_2
        0xce -> :sswitch_2
        0xcf -> :sswitch_2
        0xd0 -> :sswitch_2
        0xd1 -> :sswitch_2
        0xd2 -> :sswitch_2
        0xd3 -> :sswitch_2
        0xd4 -> :sswitch_2
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x130 -> :sswitch_2
        0x131 -> :sswitch_2
        0x132 -> :sswitch_2
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x135 -> :sswitch_2
        0x136 -> :sswitch_2
        0x137 -> :sswitch_2
        0x138 -> :sswitch_2
        0x190 -> :sswitch_2
        0x191 -> :sswitch_2
        0x192 -> :sswitch_2
        0x193 -> :sswitch_2
        0x194 -> :sswitch_2
        0x195 -> :sswitch_2
        0x196 -> :sswitch_2
        0x197 -> :sswitch_2
        0x198 -> :sswitch_2
        0x199 -> :sswitch_2
        0x19a -> :sswitch_2
        0x19b -> :sswitch_2
        0x19c -> :sswitch_2
        0x19d -> :sswitch_2
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_2
        0x1f6 -> :sswitch_2
        0x1f7 -> :sswitch_2
        0x1f8 -> :sswitch_2
        0x1f9 -> :sswitch_2
        0x1fa -> :sswitch_2
        0x1fb -> :sswitch_2
        0x1fc -> :sswitch_2
        0x1fd -> :sswitch_2
        0x1fe -> :sswitch_2
        0x1ff -> :sswitch_2
        0x200 -> :sswitch_2
    .end sparse-switch

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 502
    :pswitch_data_1
    .packed-switch 0x0
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
    .line 145
    invoke-virtual {p0, p1}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;

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
    .line 303
    iget v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->type:I

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->customName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->customName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    if-eqz v0, :cond_2

    .line 310
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->color:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 313
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->color:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 315
    :cond_3
    iget v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->visibility:I

    if-eqz v0, :cond_4

    .line 316
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->visibility:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 318
    :cond_4
    iget v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->transparency:I

    if-eqz v0, :cond_5

    .line 319
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->transparency:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 321
    :cond_5
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    if-eqz v0, :cond_6

    .line 322
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 324
    :cond_6
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->summary:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 325
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 327
    :cond_7
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->initialInstanceData:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;

    if-eqz v0, :cond_8

    .line 328
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->initialInstanceData:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 330
    :cond_8
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->deepLink:Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;

    if-eqz v0, :cond_9

    .line 331
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->deepLink:Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 333
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 334
    return-void
.end method
