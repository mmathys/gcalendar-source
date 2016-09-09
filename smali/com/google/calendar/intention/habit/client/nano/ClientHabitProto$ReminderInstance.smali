.class public final Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ClientHabitProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReminderInstance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;


# instance fields
.field public method:I

.field public minutes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1125
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1126
    invoke-virtual {p0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    .line 1127
    return-void
.end method

.method public static emptyArray()[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;
    .locals 2

    .prologue
    .line 1106
    sget-object v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->_emptyArray:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    if-nez v0, :cond_1

    .line 1107
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1109
    :try_start_0
    sget-object v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->_emptyArray:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    if-nez v0, :cond_0

    .line 1110
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    sput-object v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->_emptyArray:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    .line 1112
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    :cond_1
    sget-object v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->_emptyArray:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    return-object v0

    .line 1112
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;
    .locals 1

    .prologue
    .line 1130
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->method:I

    .line 1131
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->minutes:I

    .line 1132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1133
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->cachedSize:I

    .line 1134
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1151
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1152
    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->method:I

    if-eq v1, v3, :cond_0

    .line 1153
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->method:I

    .line 1154
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1156
    :cond_0
    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->minutes:I

    if-eqz v1, :cond_1

    .line 1157
    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->minutes:I

    .line 1158
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1160
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1168
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1169
    sparse-switch v0, :sswitch_data_0

    .line 1173
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1174
    :sswitch_0
    return-object p0

    .line 1179
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1180
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1182
    :pswitch_0
    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->method:I

    goto :goto_0

    .line 1188
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->minutes:I

    goto :goto_0

    .line 1169
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 1180
    :pswitch_data_0
    .packed-switch 0x2
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
    .line 1095
    invoke-virtual {p0, p1}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

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
    const/4 v2, 0x2

    .line 1140
    iget v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->method:I

    if-eq v0, v2, :cond_0

    .line 1141
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->method:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1143
    :cond_0
    iget v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->minutes:I

    if-eqz v0, :cond_1

    .line 1144
    iget v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->minutes:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1146
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1147
    return-void
.end method
