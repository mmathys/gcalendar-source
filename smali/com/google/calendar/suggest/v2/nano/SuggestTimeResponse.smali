.class public final Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SuggestTimeResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public acceptableSuggestions:Ljava/lang/Integer;

.field public attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

.field public consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

.field public omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

.field public responseId:Ljava/lang/String;

.field public suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

.field public windowEndTime:Lcom/google/protobuf/nano/Timestamp;

.field public windowStartTime:Lcom/google/protobuf/nano/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->responseId:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;->emptyArray()[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    .line 52
    iput-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->acceptableSuggestions:Ljava/lang/Integer;

    .line 53
    invoke-static {}, Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;->emptyArray()[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    .line 54
    invoke-static {}, Lcom/google/calendar/suggest/v2/nano/Attendee;->emptyArray()[Lcom/google/calendar/suggest/v2/nano/Attendee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    .line 55
    invoke-static {}, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->emptyArray()[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->cachedSize:I

    .line 57
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 112
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 113
    :goto_0
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 114
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    aget-object v3, v3, v0

    .line 115
    if-eqz v3, :cond_0

    .line 116
    const/4 v4, 0x1

    .line 117
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    array-length v2, v2

    if-lez v2, :cond_5

    move v2, v0

    move v0, v1

    .line 122
    :goto_1
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 123
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    aget-object v3, v3, v0

    .line 124
    if-eqz v3, :cond_3

    .line 125
    const/4 v4, 0x2

    .line 126
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 122
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 130
    :cond_5
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v2, :cond_6

    .line 131
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    .line 132
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 134
    :cond_6
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v2, :cond_7

    .line 135
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    .line 136
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 138
    :cond_7
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v2, v2

    if-lez v2, :cond_a

    move v2, v0

    move v0, v1

    .line 139
    :goto_2
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v3, v3

    if-ge v0, v3, :cond_9

    .line 140
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    aget-object v3, v3, v0

    .line 141
    if-eqz v3, :cond_8

    .line 142
    const/4 v4, 0x5

    .line 143
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 139
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    move v0, v2

    .line 147
    :cond_a
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->acceptableSuggestions:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .line 148
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->acceptableSuggestions:Ljava/lang/Integer;

    .line 149
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 151
    :cond_b
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    array-length v2, v2

    if-lez v2, :cond_d

    .line 152
    :goto_3
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 153
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    aget-object v2, v2, v1

    .line 154
    if-eqz v2, :cond_c

    .line 155
    const/4 v3, 0x7

    .line 156
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 152
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 160
    :cond_d
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->responseId:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 161
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->responseId:Ljava/lang/String;

    .line 162
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_e
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 172
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 173
    sparse-switch v0, :sswitch_data_0

    .line 177
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    :sswitch_0
    return-object p0

    .line 183
    :sswitch_1
    const/16 v0, 0xa

    .line 184
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 185
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    if-nez v0, :cond_2

    move v0, v1

    .line 186
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    .line 188
    if-eqz v0, :cond_1

    .line 189
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 192
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;-><init>()V

    aput-object v3, v2, v0

    .line 193
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 194
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    array-length v0, v0

    goto :goto_1

    .line 197
    :cond_3
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;-><init>()V

    aput-object v3, v2, v0

    .line 198
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 199
    iput-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    goto :goto_0

    .line 203
    :sswitch_2
    const/16 v0, 0x12

    .line 204
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 205
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    if-nez v0, :cond_5

    move v0, v1

    .line 206
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    .line 208
    if-eqz v0, :cond_4

    .line 209
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 212
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;-><init>()V

    aput-object v3, v2, v0

    .line 213
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 214
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    array-length v0, v0

    goto :goto_3

    .line 217
    :cond_6
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;-><init>()V

    aput-object v3, v2, v0

    .line 218
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 219
    iput-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    goto/16 :goto_0

    .line 223
    :sswitch_3
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    if-nez v0, :cond_7

    .line 224
    new-instance v0, Lcom/google/protobuf/nano/Timestamp;

    invoke-direct {v0}, Lcom/google/protobuf/nano/Timestamp;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 230
    :sswitch_4
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    if-nez v0, :cond_8

    .line 231
    new-instance v0, Lcom/google/protobuf/nano/Timestamp;

    invoke-direct {v0}, Lcom/google/protobuf/nano/Timestamp;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    .line 233
    :cond_8
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 237
    :sswitch_5
    const/16 v0, 0x2a

    .line 238
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 239
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-nez v0, :cond_a

    move v0, v1

    .line 240
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/suggest/v2/nano/Attendee;

    .line 242
    if-eqz v0, :cond_9

    .line 243
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    :cond_9
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_b

    .line 246
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/Attendee;-><init>()V

    aput-object v3, v2, v0

    .line 247
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 248
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 239
    :cond_a
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v0, v0

    goto :goto_5

    .line 251
    :cond_b
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/Attendee;-><init>()V

    aput-object v3, v2, v0

    .line 252
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 253
    iput-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    goto/16 :goto_0

    .line 257
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->acceptableSuggestions:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 261
    :sswitch_7
    const/16 v0, 0x3a

    .line 262
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 263
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    if-nez v0, :cond_d

    move v0, v1

    .line 264
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    .line 266
    if-eqz v0, :cond_c

    .line 267
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    :cond_c
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_e

    .line 270
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;-><init>()V

    aput-object v3, v2, v0

    .line 271
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 272
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 263
    :cond_d
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    array-length v0, v0

    goto :goto_7

    .line 275
    :cond_e
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;-><init>()V

    aput-object v3, v2, v0

    .line 276
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 277
    iput-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    goto/16 :goto_0

    .line 281
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->responseId:Ljava/lang/String;

    goto/16 :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
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
    invoke-virtual {p0, p1}, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;

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

    .line 62
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->suggestions:[Lcom/google/calendar/suggest/v2/nano/TimeSuggestion;

    aget-object v2, v2, v0

    .line 65
    if-eqz v2, :cond_0

    .line 66
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 71
    :goto_1
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 72
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->attendeeEvents:[Lcom/google/calendar/suggest/v2/nano/AttendeeEvents;

    aget-object v2, v2, v0

    .line 73
    if-eqz v2, :cond_2

    .line 74
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 71
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v0, :cond_4

    .line 79
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v0, :cond_5

    .line 82
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 85
    :goto_2
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 86
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->consideredAttendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    aget-object v2, v2, v0

    .line 87
    if-eqz v2, :cond_6

    .line 88
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 85
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 92
    :cond_7
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->acceptableSuggestions:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 93
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->acceptableSuggestions:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 95
    :cond_8
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    array-length v0, v0

    if-lez v0, :cond_a

    .line 96
    :goto_3
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    array-length v0, v0

    if-ge v1, v0, :cond_a

    .line 97
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->omittedAttendees:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    aget-object v0, v0, v1

    .line 98
    if-eqz v0, :cond_9

    .line 99
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 96
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 103
    :cond_a
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->responseId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 104
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SuggestTimeResponse;->responseId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 106
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 107
    return-void
.end method
