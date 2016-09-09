.class public final Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SuggestTimeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

.field public considerRooms:Ljava/lang/Boolean;

.field public eventReference:Ljava/lang/String;

.field public existingEvent:Lcom/google/calendar/suggest/v2/nano/CalendarEvent;

.field public expandGroupAttendees:Ljava/lang/Boolean;

.field public includeAttendeesEvents:Ljava/lang/Boolean;

.field public maxResults:Ljava/lang/Integer;

.field public roomRequest:Lcom/google/calendar/suggest/v2/nano/RoomRequest;

.field public summary:Ljava/lang/String;

.field public timeSettings:Lcom/google/calendar/suggest/v2/nano/TimeSettings;

.field public userContext:Lcom/google/calendar/suggest/v2/nano/UserContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 59
    invoke-static {}, Lcom/google/calendar/suggest/v2/nano/Attendee;->emptyArray()[Lcom/google/calendar/suggest/v2/nano/Attendee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    .line 60
    iput-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->summary:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->includeAttendeesEvents:Ljava/lang/Boolean;

    .line 62
    iput-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->maxResults:Ljava/lang/Integer;

    .line 63
    iput-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->considerRooms:Ljava/lang/Boolean;

    .line 64
    iput-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->eventReference:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->expandGroupAttendees:Ljava/lang/Boolean;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->cachedSize:I

    .line 67
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 115
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 116
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 117
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    aget-object v2, v2, v0

    .line 119
    if-eqz v2, :cond_0

    .line 120
    const/4 v3, 0x1

    .line 121
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->timeSettings:Lcom/google/calendar/suggest/v2/nano/TimeSettings;

    if-eqz v0, :cond_2

    .line 126
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->timeSettings:Lcom/google/calendar/suggest/v2/nano/TimeSettings;

    .line 127
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->userContext:Lcom/google/calendar/suggest/v2/nano/UserContext;

    if-eqz v0, :cond_3

    .line 130
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->userContext:Lcom/google/calendar/suggest/v2/nano/UserContext;

    .line 131
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->includeAttendeesEvents:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 134
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->includeAttendeesEvents:Ljava/lang/Boolean;

    .line 135
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->maxResults:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 138
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->maxResults:Ljava/lang/Integer;

    .line 139
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->existingEvent:Lcom/google/calendar/suggest/v2/nano/CalendarEvent;

    if-eqz v0, :cond_6

    .line 142
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->existingEvent:Lcom/google/calendar/suggest/v2/nano/CalendarEvent;

    .line 143
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->roomRequest:Lcom/google/calendar/suggest/v2/nano/RoomRequest;

    if-eqz v0, :cond_7

    .line 146
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->roomRequest:Lcom/google/calendar/suggest/v2/nano/RoomRequest;

    .line 147
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->summary:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 150
    const/16 v0, 0x8

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->summary:Ljava/lang/String;

    .line 151
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 153
    :cond_8
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->considerRooms:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 154
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->considerRooms:Ljava/lang/Boolean;

    .line 155
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 157
    :cond_9
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->eventReference:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 158
    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->eventReference:Ljava/lang/String;

    .line 159
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 161
    :cond_a
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->expandGroupAttendees:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 162
    const/16 v0, 0xb

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->expandGroupAttendees:Ljava/lang/Boolean;

    .line 163
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 165
    :cond_b
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 173
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 174
    sparse-switch v0, :sswitch_data_0

    .line 178
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :sswitch_0
    return-object p0

    .line 184
    :sswitch_1
    const/16 v0, 0xa

    .line 185
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 186
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-nez v0, :cond_2

    move v0, v1

    .line 187
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/suggest/v2/nano/Attendee;

    .line 189
    if-eqz v0, :cond_1

    .line 190
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 193
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/Attendee;-><init>()V

    aput-object v3, v2, v0

    .line 194
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 195
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v0, v0

    goto :goto_1

    .line 198
    :cond_3
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/Attendee;-><init>()V

    aput-object v3, v2, v0

    .line 199
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 200
    iput-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    goto :goto_0

    .line 204
    :sswitch_2
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->timeSettings:Lcom/google/calendar/suggest/v2/nano/TimeSettings;

    if-nez v0, :cond_4

    .line 205
    new-instance v0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;

    invoke-direct {v0}, Lcom/google/calendar/suggest/v2/nano/TimeSettings;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->timeSettings:Lcom/google/calendar/suggest/v2/nano/TimeSettings;

    .line 207
    :cond_4
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->timeSettings:Lcom/google/calendar/suggest/v2/nano/TimeSettings;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 211
    :sswitch_3
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->userContext:Lcom/google/calendar/suggest/v2/nano/UserContext;

    if-nez v0, :cond_5

    .line 212
    new-instance v0, Lcom/google/calendar/suggest/v2/nano/UserContext;

    invoke-direct {v0}, Lcom/google/calendar/suggest/v2/nano/UserContext;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->userContext:Lcom/google/calendar/suggest/v2/nano/UserContext;

    .line 214
    :cond_5
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->userContext:Lcom/google/calendar/suggest/v2/nano/UserContext;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 218
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->includeAttendeesEvents:Ljava/lang/Boolean;

    goto :goto_0

    .line 222
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->maxResults:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 226
    :sswitch_6
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->existingEvent:Lcom/google/calendar/suggest/v2/nano/CalendarEvent;

    if-nez v0, :cond_6

    .line 227
    new-instance v0, Lcom/google/calendar/suggest/v2/nano/CalendarEvent;

    invoke-direct {v0}, Lcom/google/calendar/suggest/v2/nano/CalendarEvent;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->existingEvent:Lcom/google/calendar/suggest/v2/nano/CalendarEvent;

    .line 229
    :cond_6
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->existingEvent:Lcom/google/calendar/suggest/v2/nano/CalendarEvent;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 233
    :sswitch_7
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->roomRequest:Lcom/google/calendar/suggest/v2/nano/RoomRequest;

    if-nez v0, :cond_7

    .line 234
    new-instance v0, Lcom/google/calendar/suggest/v2/nano/RoomRequest;

    invoke-direct {v0}, Lcom/google/calendar/suggest/v2/nano/RoomRequest;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->roomRequest:Lcom/google/calendar/suggest/v2/nano/RoomRequest;

    .line 236
    :cond_7
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->roomRequest:Lcom/google/calendar/suggest/v2/nano/RoomRequest;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 240
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->summary:Ljava/lang/String;

    goto/16 :goto_0

    .line 244
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->considerRooms:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 248
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->eventReference:Ljava/lang/String;

    goto/16 :goto_0

    .line 252
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->expandGroupAttendees:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
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
    invoke-virtual {p0, p1}, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;

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
    .line 72
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 73
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    aget-object v1, v1, v0

    .line 75
    if-eqz v1, :cond_0

    .line 76
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->timeSettings:Lcom/google/calendar/suggest/v2/nano/TimeSettings;

    if-eqz v0, :cond_2

    .line 81
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->timeSettings:Lcom/google/calendar/suggest/v2/nano/TimeSettings;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->userContext:Lcom/google/calendar/suggest/v2/nano/UserContext;

    if-eqz v0, :cond_3

    .line 84
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->userContext:Lcom/google/calendar/suggest/v2/nano/UserContext;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->includeAttendeesEvents:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 87
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->includeAttendeesEvents:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->maxResults:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 90
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->maxResults:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->existingEvent:Lcom/google/calendar/suggest/v2/nano/CalendarEvent;

    if-eqz v0, :cond_6

    .line 93
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->existingEvent:Lcom/google/calendar/suggest/v2/nano/CalendarEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->roomRequest:Lcom/google/calendar/suggest/v2/nano/RoomRequest;

    if-eqz v0, :cond_7

    .line 96
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->roomRequest:Lcom/google/calendar/suggest/v2/nano/RoomRequest;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 98
    :cond_7
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->summary:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 99
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 101
    :cond_8
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->considerRooms:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 102
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->considerRooms:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 104
    :cond_9
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->eventReference:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 105
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->eventReference:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 107
    :cond_a
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->expandGroupAttendees:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 108
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeRequest;->expandGroupAttendees:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 110
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 111
    return-void
.end method
