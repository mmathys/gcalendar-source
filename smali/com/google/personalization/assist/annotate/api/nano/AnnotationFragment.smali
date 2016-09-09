.class public final Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AnnotationFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;


# instance fields
.field public annotationType:I

.field public associateEntity:Lcom/google/personalization/assist/annotate/api/nano/AssociatedEntity;

.field public beginPos:I

.field public book:Lcom/google/personalization/assist/annotate/api/nano/Book;

.field public bookedFlight:Lcom/google/personalization/assist/annotate/api/nano/BookedFlight;

.field public bookedHotel:Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;

.field public contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

.field public document:Lcom/google/personalization/assist/annotate/api/nano/Document;

.field public endPos:I

.field public eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

.field public flexTimeWindow:I

.field public localBusiness:Lcom/google/personalization/assist/annotate/api/nano/Place;

.field public mid:[Ljava/lang/String;

.field public purchasedProduct:Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->clear()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    .line 72
    return-void
.end method

.method public static emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

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
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->text:Ljava/lang/String;

    .line 76
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->annotationType:I

    .line 77
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->beginPos:I

    .line 78
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->endPos:I

    .line 79
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mid:[Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->associateEntity:Lcom/google/personalization/assist/annotate/api/nano/AssociatedEntity;

    .line 81
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->book:Lcom/google/personalization/assist/annotate/api/nano/Book;

    .line 82
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedFlight:Lcom/google/personalization/assist/annotate/api/nano/BookedFlight;

    .line 83
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedHotel:Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;

    .line 84
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    .line 85
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->document:Lcom/google/personalization/assist/annotate/api/nano/Document;

    .line 86
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    .line 87
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->localBusiness:Lcom/google/personalization/assist/annotate/api/nano/Place;

    .line 88
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->purchasedProduct:Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;

    .line 89
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->flexTimeWindow:I

    .line 90
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->cachedSize:I

    .line 92
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 154
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->text:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->text:Ljava/lang/String;

    .line 156
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 158
    :cond_0
    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->annotationType:I

    if-eqz v2, :cond_1

    .line 159
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->annotationType:I

    .line 160
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 162
    :cond_1
    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->beginPos:I

    if-eqz v2, :cond_2

    .line 163
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->beginPos:I

    .line 164
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 166
    :cond_2
    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->endPos:I

    if-eqz v2, :cond_3

    .line 167
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->endPos:I

    .line 168
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    if-eqz v2, :cond_4

    .line 171
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    .line 172
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 174
    :cond_4
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->localBusiness:Lcom/google/personalization/assist/annotate/api/nano/Place;

    if-eqz v2, :cond_5

    .line 175
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->localBusiness:Lcom/google/personalization/assist/annotate/api/nano/Place;

    .line 176
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 178
    :cond_5
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    if-eqz v2, :cond_6

    .line 179
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    .line 180
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 182
    :cond_6
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mid:[Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mid:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_9

    move v2, v1

    move v3, v1

    .line 185
    :goto_0
    iget-object v4, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mid:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_8

    .line 186
    iget-object v4, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mid:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 187
    if-eqz v4, :cond_7

    .line 188
    add-int/lit8 v3, v3, 0x1

    .line 190
    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 185
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_8
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 196
    :cond_9
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->associateEntity:Lcom/google/personalization/assist/annotate/api/nano/AssociatedEntity;

    if-eqz v1, :cond_a

    .line 197
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->associateEntity:Lcom/google/personalization/assist/annotate/api/nano/AssociatedEntity;

    .line 198
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_a
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->book:Lcom/google/personalization/assist/annotate/api/nano/Book;

    if-eqz v1, :cond_b

    .line 201
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->book:Lcom/google/personalization/assist/annotate/api/nano/Book;

    .line 202
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_b
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedFlight:Lcom/google/personalization/assist/annotate/api/nano/BookedFlight;

    if-eqz v1, :cond_c

    .line 205
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedFlight:Lcom/google/personalization/assist/annotate/api/nano/BookedFlight;

    .line 206
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    :cond_c
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedHotel:Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;

    if-eqz v1, :cond_d

    .line 209
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedHotel:Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;

    .line 210
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_d
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->document:Lcom/google/personalization/assist/annotate/api/nano/Document;

    if-eqz v1, :cond_e

    .line 213
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->document:Lcom/google/personalization/assist/annotate/api/nano/Document;

    .line 214
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_e
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->purchasedProduct:Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;

    if-eqz v1, :cond_f

    .line 217
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->purchasedProduct:Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;

    .line 218
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    :cond_f
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->flexTimeWindow:I

    if-eqz v1, :cond_10

    .line 221
    const/16 v1, 0xf

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->flexTimeWindow:I

    .line 222
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_10
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 232
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 233
    sparse-switch v0, :sswitch_data_0

    .line 237
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    :sswitch_0
    return-object p0

    .line 243
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->text:Ljava/lang/String;

    goto :goto_0

    .line 247
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 248
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 580
    :pswitch_1
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->annotationType:I

    goto :goto_0

    .line 586
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->beginPos:I

    goto :goto_0

    .line 590
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->endPos:I

    goto :goto_0

    .line 594
    :sswitch_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    if-nez v0, :cond_1

    .line 595
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Contact;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Contact;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 601
    :sswitch_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->localBusiness:Lcom/google/personalization/assist/annotate/api/nano/Place;

    if-nez v0, :cond_2

    .line 602
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Place;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Place;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->localBusiness:Lcom/google/personalization/assist/annotate/api/nano/Place;

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->localBusiness:Lcom/google/personalization/assist/annotate/api/nano/Place;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 608
    :sswitch_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    if-nez v0, :cond_3

    .line 609
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/EventTime;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    .line 611
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 615
    :sswitch_8
    const/16 v0, 0x42

    .line 616
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 617
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mid:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    .line 618
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 619
    if-eqz v0, :cond_4

    .line 620
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mid:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 623
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 624
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 617
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mid:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 627
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 628
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mid:[Ljava/lang/String;

    goto/16 :goto_0

    .line 632
    :sswitch_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->associateEntity:Lcom/google/personalization/assist/annotate/api/nano/AssociatedEntity;

    if-nez v0, :cond_7

    .line 633
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/AssociatedEntity;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/AssociatedEntity;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->associateEntity:Lcom/google/personalization/assist/annotate/api/nano/AssociatedEntity;

    .line 635
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->associateEntity:Lcom/google/personalization/assist/annotate/api/nano/AssociatedEntity;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 639
    :sswitch_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->book:Lcom/google/personalization/assist/annotate/api/nano/Book;

    if-nez v0, :cond_8

    .line 640
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Book;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Book;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->book:Lcom/google/personalization/assist/annotate/api/nano/Book;

    .line 642
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->book:Lcom/google/personalization/assist/annotate/api/nano/Book;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 646
    :sswitch_b
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedFlight:Lcom/google/personalization/assist/annotate/api/nano/BookedFlight;

    if-nez v0, :cond_9

    .line 647
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/BookedFlight;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/BookedFlight;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedFlight:Lcom/google/personalization/assist/annotate/api/nano/BookedFlight;

    .line 649
    :cond_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedFlight:Lcom/google/personalization/assist/annotate/api/nano/BookedFlight;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 653
    :sswitch_c
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedHotel:Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;

    if-nez v0, :cond_a

    .line 654
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedHotel:Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;

    .line 656
    :cond_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedHotel:Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 660
    :sswitch_d
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->document:Lcom/google/personalization/assist/annotate/api/nano/Document;

    if-nez v0, :cond_b

    .line 661
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Document;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Document;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->document:Lcom/google/personalization/assist/annotate/api/nano/Document;

    .line 663
    :cond_b
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->document:Lcom/google/personalization/assist/annotate/api/nano/Document;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 667
    :sswitch_e
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->purchasedProduct:Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;

    if-nez v0, :cond_c

    .line 668
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->purchasedProduct:Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;

    .line 670
    :cond_c
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->purchasedProduct:Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 674
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 675
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 683
    :pswitch_2
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->flexTimeWindow:I

    goto/16 :goto_0

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x78 -> :sswitch_f
    .end sparse-switch

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 675
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;

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
    .line 98
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->text:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 101
    :cond_0
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->annotationType:I

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->annotationType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 104
    :cond_1
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->beginPos:I

    if-eqz v0, :cond_2

    .line 105
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->beginPos:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 107
    :cond_2
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->endPos:I

    if-eqz v0, :cond_3

    .line 108
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->endPos:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    if-eqz v0, :cond_4

    .line 111
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->contact:Lcom/google/personalization/assist/annotate/api/nano/Contact;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->localBusiness:Lcom/google/personalization/assist/annotate/api/nano/Place;

    if-eqz v0, :cond_5

    .line 114
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->localBusiness:Lcom/google/personalization/assist/annotate/api/nano/Place;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    if-eqz v0, :cond_6

    .line 117
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mid:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mid:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_8

    .line 120
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mid:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 121
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->mid:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 122
    if-eqz v1, :cond_7

    .line 123
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 120
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->associateEntity:Lcom/google/personalization/assist/annotate/api/nano/AssociatedEntity;

    if-eqz v0, :cond_9

    .line 128
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->associateEntity:Lcom/google/personalization/assist/annotate/api/nano/AssociatedEntity;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 130
    :cond_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->book:Lcom/google/personalization/assist/annotate/api/nano/Book;

    if-eqz v0, :cond_a

    .line 131
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->book:Lcom/google/personalization/assist/annotate/api/nano/Book;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 133
    :cond_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedFlight:Lcom/google/personalization/assist/annotate/api/nano/BookedFlight;

    if-eqz v0, :cond_b

    .line 134
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedFlight:Lcom/google/personalization/assist/annotate/api/nano/BookedFlight;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 136
    :cond_b
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedHotel:Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;

    if-eqz v0, :cond_c

    .line 137
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->bookedHotel:Lcom/google/personalization/assist/annotate/api/nano/BookedHotel;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 139
    :cond_c
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->document:Lcom/google/personalization/assist/annotate/api/nano/Document;

    if-eqz v0, :cond_d

    .line 140
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->document:Lcom/google/personalization/assist/annotate/api/nano/Document;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 142
    :cond_d
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->purchasedProduct:Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;

    if-eqz v0, :cond_e

    .line 143
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->purchasedProduct:Lcom/google/personalization/assist/annotate/api/nano/PurchasedProduct;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 145
    :cond_e
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->flexTimeWindow:I

    if-eqz v0, :cond_f

    .line 146
    const/16 v0, 0xf

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotationFragment;->flexTimeWindow:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 148
    :cond_f
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 149
    return-void
.end method
