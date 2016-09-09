.class public final Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimeSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;


# instance fields
.field public attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

.field public debugInfo:[Ljava/lang/String;

.field public eventTime:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

.field public roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

.field public suggestionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->suggestionId:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/google/calendar/suggest/v2/nano/Explanation;->emptyArray()[Lcom/google/calendar/suggest/v2/nano/Explanation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    .line 43
    invoke-static {}, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->emptyArray()[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    .line 44
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->debugInfo:[Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->cachedSize:I

    .line 46
    return-void
.end method

.method public static emptyArray()[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    sput-object v0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

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
    const/4 v1, 0x0

    .line 86
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 87
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->eventTime:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    if-eqz v2, :cond_0

    .line 88
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->eventTime:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    .line 89
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 93
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    aget-object v3, v3, v0

    .line 94
    if-eqz v3, :cond_1

    .line 95
    const/4 v4, 0x2

    .line 96
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 101
    :goto_1
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 102
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    aget-object v3, v3, v0

    .line 103
    if-eqz v3, :cond_4

    .line 104
    const/4 v4, 0x3

    .line 105
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 101
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 109
    :cond_6
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->suggestionId:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 110
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->suggestionId:Ljava/lang/String;

    .line 111
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 113
    :cond_7
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->debugInfo:[Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->debugInfo:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_a

    move v2, v1

    move v3, v1

    .line 116
    :goto_2
    iget-object v4, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->debugInfo:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_9

    .line 117
    iget-object v4, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->debugInfo:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 118
    if-eqz v4, :cond_8

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 121
    invoke-static {v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 116
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    :cond_9
    add-int/2addr v0, v2

    .line 125
    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v0, v1

    .line 127
    :cond_a
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 135
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 136
    sparse-switch v0, :sswitch_data_0

    .line 140
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    :sswitch_0
    return-object p0

    .line 146
    :sswitch_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->eventTime:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    invoke-direct {v0}, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->eventTime:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->eventTime:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 153
    :sswitch_2
    const/16 v0, 0x12

    .line 154
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 155
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    if-nez v0, :cond_3

    move v0, v1

    .line 156
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/suggest/v2/nano/Explanation;

    .line 158
    if-eqz v0, :cond_2

    .line 159
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 162
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/Explanation;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/Explanation;-><init>()V

    aput-object v3, v2, v0

    .line 163
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 164
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    array-length v0, v0

    goto :goto_1

    .line 167
    :cond_4
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/Explanation;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/Explanation;-><init>()V

    aput-object v3, v2, v0

    .line 168
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 169
    iput-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    goto :goto_0

    .line 173
    :sswitch_3
    const/16 v0, 0x1a

    .line 174
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 175
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    if-nez v0, :cond_6

    move v0, v1

    .line 176
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    .line 178
    if-eqz v0, :cond_5

    .line 179
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 182
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;-><init>()V

    aput-object v3, v2, v0

    .line 183
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 184
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 175
    :cond_6
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    array-length v0, v0

    goto :goto_3

    .line 187
    :cond_7
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;-><init>()V

    aput-object v3, v2, v0

    .line 188
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 189
    iput-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    goto/16 :goto_0

    .line 193
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->suggestionId:Ljava/lang/String;

    goto/16 :goto_0

    .line 197
    :sswitch_5
    const/16 v0, 0x31a

    .line 198
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 199
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->debugInfo:[Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    .line 200
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 201
    if-eqz v0, :cond_8

    .line 202
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->debugInfo:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    :cond_8
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 205
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 206
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 199
    :cond_9
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->debugInfo:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_5

    .line 209
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 210
    iput-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->debugInfo:[Ljava/lang/String;

    goto/16 :goto_0

    .line 136
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x31a -> :sswitch_5
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
    invoke-virtual {p0, p1}, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

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
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->eventTime:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->eventTime:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 55
    :goto_0
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 56
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->attendeeExplanations:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    aget-object v2, v2, v0

    .line 57
    if-eqz v2, :cond_1

    .line 58
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 55
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 63
    :goto_1
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 64
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->roomSuggestionGroups:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    aget-object v2, v2, v0

    .line 65
    if-eqz v2, :cond_3

    .line 66
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 63
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->suggestionId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 71
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->suggestionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 73
    :cond_5
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->debugInfo:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->debugInfo:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 74
    :goto_2
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->debugInfo:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 75
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->debugInfo:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 76
    if-eqz v0, :cond_6

    .line 77
    const/16 v2, 0x63

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 74
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 81
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 82
    return-void
.end method
