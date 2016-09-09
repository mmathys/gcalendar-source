.class public final Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CalendarClientLogEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;


# instance fields
.field public calendarEvent:Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

.field public eventTimestampMs:J

.field public hierarchyNodeId:Ljava/lang/String;

.field public logEventType:I

.field public room:Lcom/google/calendar/client/events/logging/nano/RoomInfo;

.field public roomViewInfo:Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;

.field public serviceResponseId:Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;

.field public timeSuggestionInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;

.field public timeSuggestionViewInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

.field public uiEntryPoint:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->clear()Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    .line 90
    return-void
.end method

.method public static emptyArray()[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->_emptyArray:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    if-nez v0, :cond_1

    .line 46
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->_emptyArray:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    sput-object v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->_emptyArray:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->_emptyArray:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 93
    iput v3, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->logEventType:I

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->eventTimestampMs:J

    .line 95
    iput-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->calendarEvent:Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

    .line 96
    iput-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->serviceResponseId:Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;

    .line 97
    iput-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;

    .line 98
    iput-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionViewInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

    .line 99
    iput-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->roomViewInfo:Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;

    .line 100
    iput-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->room:Lcom/google/calendar/client/events/logging/nano/RoomInfo;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->hierarchyNodeId:Ljava/lang/String;

    .line 102
    iput v3, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->uiEntryPoint:I

    .line 103
    iput-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->cachedSize:I

    .line 105
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 146
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 147
    iget v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->logEventType:I

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->logEventType:I

    .line 149
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->calendarEvent:Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

    if-eqz v1, :cond_1

    .line 152
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->calendarEvent:Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

    .line 153
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->serviceResponseId:Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;

    if-eqz v1, :cond_2

    .line 156
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->serviceResponseId:Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;

    .line 157
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;

    if-eqz v1, :cond_3

    .line 160
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;

    .line 161
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionViewInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

    if-eqz v1, :cond_4

    .line 164
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionViewInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

    .line 165
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_4
    iget-wide v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->eventTimestampMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 168
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->eventTimestampMs:J

    .line 169
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_5
    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->roomViewInfo:Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;

    if-eqz v1, :cond_6

    .line 172
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->roomViewInfo:Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;

    .line 173
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_6
    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->room:Lcom/google/calendar/client/events/logging/nano/RoomInfo;

    if-eqz v1, :cond_7

    .line 176
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->room:Lcom/google/calendar/client/events/logging/nano/RoomInfo;

    .line 177
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_7
    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->hierarchyNodeId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 180
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->hierarchyNodeId:Ljava/lang/String;

    .line 181
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_8
    iget v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->uiEntryPoint:I

    if-eqz v1, :cond_9

    .line 184
    const/16 v1, 0xa

    iget v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->uiEntryPoint:I

    .line 185
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :cond_9
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 196
    sparse-switch v0, :sswitch_data_0

    .line 200
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    :sswitch_0
    return-object p0

    .line 206
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 207
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 234
    :pswitch_1
    iput v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->logEventType:I

    goto :goto_0

    .line 240
    :sswitch_2
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->calendarEvent:Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

    if-nez v0, :cond_1

    .line 241
    new-instance v0, Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

    invoke-direct {v0}, Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->calendarEvent:Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->calendarEvent:Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 247
    :sswitch_3
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->serviceResponseId:Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;

    if-nez v0, :cond_2

    .line 248
    new-instance v0, Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;

    invoke-direct {v0}, Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->serviceResponseId:Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->serviceResponseId:Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 254
    :sswitch_4
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;

    if-nez v0, :cond_3

    .line 255
    new-instance v0, Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;

    invoke-direct {v0}, Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;

    .line 257
    :cond_3
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 261
    :sswitch_5
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionViewInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

    if-nez v0, :cond_4

    .line 262
    new-instance v0, Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

    invoke-direct {v0}, Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionViewInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionViewInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 268
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->eventTimestampMs:J

    goto :goto_0

    .line 272
    :sswitch_7
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->roomViewInfo:Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;

    if-nez v0, :cond_5

    .line 273
    new-instance v0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;

    invoke-direct {v0}, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->roomViewInfo:Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->roomViewInfo:Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 279
    :sswitch_8
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->room:Lcom/google/calendar/client/events/logging/nano/RoomInfo;

    if-nez v0, :cond_6

    .line 280
    new-instance v0, Lcom/google/calendar/client/events/logging/nano/RoomInfo;

    invoke-direct {v0}, Lcom/google/calendar/client/events/logging/nano/RoomInfo;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->room:Lcom/google/calendar/client/events/logging/nano/RoomInfo;

    .line 282
    :cond_6
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->room:Lcom/google/calendar/client/events/logging/nano/RoomInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 286
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->hierarchyNodeId:Ljava/lang/String;

    goto/16 :goto_0

    .line 290
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 291
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 295
    :pswitch_2
    iput v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->uiEntryPoint:I

    goto/16 :goto_0

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch

    .line 207
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
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 291
    :pswitch_data_1
    .packed-switch 0x0
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
    invoke-virtual {p0, p1}, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

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
    .line 111
    iget v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->logEventType:I

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->logEventType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->calendarEvent:Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

    if-eqz v0, :cond_1

    .line 115
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->calendarEvent:Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->serviceResponseId:Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;

    if-eqz v0, :cond_2

    .line 118
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->serviceResponseId:Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;

    if-eqz v0, :cond_3

    .line 121
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionViewInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

    if-eqz v0, :cond_4

    .line 124
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionViewInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 126
    :cond_4
    iget-wide v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->eventTimestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 127
    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->eventTimestampMs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->roomViewInfo:Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;

    if-eqz v0, :cond_6

    .line 130
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->roomViewInfo:Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->room:Lcom/google/calendar/client/events/logging/nano/RoomInfo;

    if-eqz v0, :cond_7

    .line 133
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->room:Lcom/google/calendar/client/events/logging/nano/RoomInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->hierarchyNodeId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 136
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->hierarchyNodeId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 138
    :cond_8
    iget v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->uiEntryPoint:I

    if-eqz v0, :cond_9

    .line 139
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->uiEntryPoint:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 141
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 142
    return-void
.end method
