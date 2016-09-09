.class public final Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "FlightInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;


# instance fields
.field public actualArrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public actualDepartureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public airlineCode:Ljava/lang/String;

.field public airlineName:Ljava/lang/String;

.field public arrivalAirportCode:Ljava/lang/String;

.field public arrivalCity:Ljava/lang/String;

.field public arrivalGate:Ljava/lang/String;

.field public arrivalTerminal:Ljava/lang/String;

.field public arrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public departureAirportCode:Ljava/lang/String;

.field public departureCity:Ljava/lang/String;

.field public departureGate:Ljava/lang/String;

.field public departureTerminal:Ljava/lang/String;

.field public departureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public expirationDatetimeMillis:J

.field public flightNumber:Ljava/lang/String;

.field public image:Lcom/google/personalization/assist/annotate/api/nano/Image;

.field public imageUrl:Ljava/lang/String;

.field public statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->clear()Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    .line 84
    return-void
.end method

.method public static emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

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
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->airlineName:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->airlineCode:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->flightNumber:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 91
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualDepartureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 92
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 93
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualArrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureAirportCode:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureCity:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalAirportCode:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalCity:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTerminal:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTerminal:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureGate:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalGate:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->statusCode:I

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->imageUrl:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->image:Lcom/google/personalization/assist/annotate/api/nano/Image;

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->expirationDatetimeMillis:J

    .line 106
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->cachedSize:I

    .line 108
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 176
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->airlineName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->airlineName:Ljava/lang/String;

    .line 179
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->airlineCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->airlineCode:Ljava/lang/String;

    .line 183
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->flightNumber:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->flightNumber:Ljava/lang/String;

    .line 187
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_3

    .line 190
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 191
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualDepartureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_4

    .line 194
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualDepartureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 195
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_5

    .line 198
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 199
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualArrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_6

    .line 202
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualArrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 203
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureAirportCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 206
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureAirportCode:Ljava/lang/String;

    .line 207
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    :cond_7
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureCity:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 210
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureCity:Ljava/lang/String;

    .line 211
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 213
    :cond_8
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalAirportCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 214
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalAirportCode:Ljava/lang/String;

    .line 215
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_9
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalCity:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 218
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalCity:Ljava/lang/String;

    .line 219
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_a
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTerminal:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 222
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTerminal:Ljava/lang/String;

    .line 223
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_b
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTerminal:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 226
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTerminal:Ljava/lang/String;

    .line 227
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_c
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureGate:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 230
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureGate:Ljava/lang/String;

    .line 231
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_d
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalGate:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 234
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalGate:Ljava/lang/String;

    .line 235
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_e
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->statusCode:I

    if-eqz v1, :cond_f

    .line 238
    const/16 v1, 0x10

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->statusCode:I

    .line 239
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_f
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->imageUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 242
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->imageUrl:Ljava/lang/String;

    .line 243
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_10
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->image:Lcom/google/personalization/assist/annotate/api/nano/Image;

    if-eqz v1, :cond_11

    .line 246
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->image:Lcom/google/personalization/assist/annotate/api/nano/Image;

    .line 247
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_11
    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->expirationDatetimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_12

    .line 250
    const/16 v1, 0x13

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->expirationDatetimeMillis:J

    .line 251
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    :cond_12
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 262
    sparse-switch v0, :sswitch_data_0

    .line 266
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    :sswitch_0
    return-object p0

    .line 272
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->airlineName:Ljava/lang/String;

    goto :goto_0

    .line 276
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->airlineCode:Ljava/lang/String;

    goto :goto_0

    .line 280
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->flightNumber:Ljava/lang/String;

    goto :goto_0

    .line 284
    :sswitch_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_1

    .line 285
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 291
    :sswitch_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualDepartureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_2

    .line 292
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualDepartureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualDepartureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 298
    :sswitch_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_3

    .line 299
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 305
    :sswitch_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualArrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_4

    .line 306
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualArrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualArrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 312
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureAirportCode:Ljava/lang/String;

    goto :goto_0

    .line 316
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureCity:Ljava/lang/String;

    goto :goto_0

    .line 320
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalAirportCode:Ljava/lang/String;

    goto :goto_0

    .line 324
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalCity:Ljava/lang/String;

    goto/16 :goto_0

    .line 328
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTerminal:Ljava/lang/String;

    goto/16 :goto_0

    .line 332
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTerminal:Ljava/lang/String;

    goto/16 :goto_0

    .line 336
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureGate:Ljava/lang/String;

    goto/16 :goto_0

    .line 340
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalGate:Ljava/lang/String;

    goto/16 :goto_0

    .line 344
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 345
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 352
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->statusCode:I

    goto/16 :goto_0

    .line 358
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->imageUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 362
    :sswitch_12
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->image:Lcom/google/personalization/assist/annotate/api/nano/Image;

    if-nez v0, :cond_5

    .line 363
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Image;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Image;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->image:Lcom/google/personalization/assist/annotate/api/nano/Image;

    .line 365
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->image:Lcom/google/personalization/assist/annotate/api/nano/Image;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 369
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->expirationDatetimeMillis:J

    goto/16 :goto_0

    .line 262
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
        0x7a -> :sswitch_f
        0x80 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x98 -> :sswitch_13
    .end sparse-switch

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;

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
    .line 114
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->airlineName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->airlineName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->airlineCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->airlineCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->flightNumber:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->flightNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_3

    .line 124
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualDepartureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_4

    .line 127
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualDepartureTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_5

    .line 130
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualArrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_6

    .line 133
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->actualArrivalTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 135
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureAirportCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 136
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureAirportCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 138
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureCity:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 139
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureCity:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 141
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalAirportCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 142
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalAirportCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 144
    :cond_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalCity:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 145
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalCity:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 147
    :cond_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTerminal:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 148
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureTerminal:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 150
    :cond_b
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTerminal:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 151
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalTerminal:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 153
    :cond_c
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureGate:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 154
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->departureGate:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 156
    :cond_d
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalGate:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 157
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->arrivalGate:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 159
    :cond_e
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->statusCode:I

    if-eqz v0, :cond_f

    .line 160
    const/16 v0, 0x10

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->statusCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 162
    :cond_f
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->imageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 163
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 165
    :cond_10
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->image:Lcom/google/personalization/assist/annotate/api/nano/Image;

    if-eqz v0, :cond_11

    .line 166
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->image:Lcom/google/personalization/assist/annotate/api/nano/Image;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 168
    :cond_11
    iget-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->expirationDatetimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 169
    const/16 v0, 0x13

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlightInfo;->expirationDatetimeMillis:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 171
    :cond_12
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 172
    return-void
.end method
