.class public final Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ClientHabitProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Instance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;


# instance fields
.field public eventId:Ljava/lang/String;

.field public startTimeMillisUtc:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1235
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1236
    invoke-virtual {p0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    .line 1237
    return-void
.end method

.method public static emptyArray()[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;
    .locals 2

    .prologue
    .line 1216
    sget-object v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->_emptyArray:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    if-nez v0, :cond_1

    .line 1217
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1219
    :try_start_0
    sget-object v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->_emptyArray:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    if-nez v0, :cond_0

    .line 1220
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    sput-object v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->_emptyArray:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    .line 1222
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    :cond_1
    sget-object v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->_emptyArray:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

    return-object v0

    .line 1222
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;
    .locals 2

    .prologue
    .line 1240
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->eventId:Ljava/lang/String;

    .line 1241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->startTimeMillisUtc:J

    .line 1242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1243
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->cachedSize:I

    .line 1244
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 1261
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1262
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->eventId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1263
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->eventId:Ljava/lang/String;

    .line 1264
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1266
    :cond_0
    iget-wide v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->startTimeMillisUtc:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 1267
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->startTimeMillisUtc:J

    .line 1268
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1270
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1278
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1279
    sparse-switch v0, :sswitch_data_0

    .line 1283
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1284
    :sswitch_0
    return-object p0

    .line 1289
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->eventId:Ljava/lang/String;

    goto :goto_0

    .line 1293
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->startTimeMillisUtc:J

    goto :goto_0

    .line 1279
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 1210
    invoke-virtual {p0, p1}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;

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
    .line 1250
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->eventId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->eventId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1253
    :cond_0
    iget-wide v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->startTimeMillisUtc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1254
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$InitialInstanceData$Instance;->startTimeMillisUtc:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1256
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1257
    return-void
.end method
