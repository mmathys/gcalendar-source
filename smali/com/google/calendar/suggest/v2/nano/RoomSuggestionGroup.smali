.class public final Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "RoomSuggestionGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;


# instance fields
.field public attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

.field public rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    invoke-static {}, Lcom/google/calendar/suggest/v2/nano/Attendee;->emptyArray()[Lcom/google/calendar/suggest/v2/nano/Attendee;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    .line 33
    invoke-static {}, Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;->emptyArray()[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->cachedSize:I

    .line 35
    return-void
.end method

.method public static emptyArray()[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    sput-object v0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

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

    .line 61
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 62
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 63
    :goto_0
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 64
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    aget-object v3, v3, v0

    .line 65
    if-eqz v3, :cond_0

    .line 66
    const/4 v4, 0x1

    .line 67
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 72
    :goto_1
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 73
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    aget-object v2, v2, v1

    .line 74
    if-eqz v2, :cond_3

    .line 75
    const/4 v3, 0x2

    .line 76
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 72
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 89
    sparse-switch v0, :sswitch_data_0

    .line 93
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :sswitch_0
    return-object p0

    .line 99
    :sswitch_1
    const/16 v0, 0xa

    .line 100
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 101
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-nez v0, :cond_2

    move v0, v1

    .line 102
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/suggest/v2/nano/Attendee;

    .line 104
    if-eqz v0, :cond_1

    .line 105
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 108
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/Attendee;-><init>()V

    aput-object v3, v2, v0

    .line 109
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 110
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v0, v0

    goto :goto_1

    .line 113
    :cond_3
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/Attendee;-><init>()V

    aput-object v3, v2, v0

    .line 114
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 115
    iput-object v2, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    goto :goto_0

    .line 119
    :sswitch_2
    const/16 v0, 0x12

    .line 120
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 121
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    if-nez v0, :cond_5

    move v0, v1

    .line 122
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    .line 124
    if-eqz v0, :cond_4

    .line 125
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 128
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;-><init>()V

    aput-object v3, v2, v0

    .line 129
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 130
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    array-length v0, v0

    goto :goto_3

    .line 133
    :cond_6
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;-><init>()V

    aput-object v3, v2, v0

    .line 134
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 135
    iput-object v2, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    goto/16 :goto_0

    .line 89
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;

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

    .line 40
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 41
    :goto_0
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->attendees:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    aget-object v2, v2, v0

    .line 43
    if-eqz v2, :cond_0

    .line 44
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 49
    :goto_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/RoomSuggestionGroup;->rooms:[Lcom/google/calendar/suggest/v2/nano/RoomSuggestion;

    aget-object v0, v0, v1

    .line 51
    if-eqz v0, :cond_2

    .line 52
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 49
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 57
    return-void
.end method
