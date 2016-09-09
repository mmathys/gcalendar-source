.class public final Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ClientHabitProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitialInstanceData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;",
        ">;"
    }
.end annotation


# instance fields
.field public clientSchedulingWindowEndMillisUtc:J

.field public instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1334
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1335
    invoke-virtual {p0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;

    .line 1336
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;
    .locals 2

    .prologue
    .line 1339
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->clientSchedulingWindowEndMillisUtc:J

    .line 1340
    invoke-static {}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->emptyArray()[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    .line 1341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1342
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->cachedSize:I

    .line 1343
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 7

    .prologue
    .line 1365
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1366
    iget-wide v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->clientSchedulingWindowEndMillisUtc:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1367
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->clientSchedulingWindowEndMillisUtc:J

    .line 1368
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1370
    :cond_0
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 1371
    const/4 v1, 0x0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1372
    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    aget-object v2, v2, v0

    .line 1373
    if-eqz v2, :cond_1

    .line 1374
    const/4 v3, 0x2

    .line 1375
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1371
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1379
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1387
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1388
    sparse-switch v0, :sswitch_data_0

    .line 1392
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1393
    :sswitch_0
    return-object p0

    .line 1398
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->clientSchedulingWindowEndMillisUtc:J

    goto :goto_0

    .line 1402
    :sswitch_2
    const/16 v0, 0x12

    .line 1403
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1404
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    if-nez v0, :cond_2

    move v0, v1

    .line 1405
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    .line 1407
    if-eqz v0, :cond_1

    .line 1408
    iget-object v3, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1410
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1411
    new-instance v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    invoke-direct {v3}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;-><init>()V

    aput-object v3, v2, v0

    .line 1412
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1413
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1410
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1404
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    array-length v0, v0

    goto :goto_1

    .line 1416
    :cond_3
    new-instance v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    invoke-direct {v3}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;-><init>()V

    aput-object v3, v2, v0

    .line 1417
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1418
    iput-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    goto :goto_0

    .line 1388
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 1207
    invoke-virtual {p0, p1}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;

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
    .line 1349
    iget-wide v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->clientSchedulingWindowEndMillisUtc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1350
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->clientSchedulingWindowEndMillisUtc:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1353
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1354
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;->instances:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    aget-object v1, v1, v0

    .line 1355
    if-eqz v1, :cond_1

    .line 1356
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 1353
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1360
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1361
    return-void
.end method
