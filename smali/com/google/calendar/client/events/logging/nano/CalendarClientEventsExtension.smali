.class public final Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CalendarClientEventsExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;",
        ">;"
    }
.end annotation


# instance fields
.field public events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

.field public shardName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->clear()Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    .line 33
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->emptyArray()[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->shardName:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->cachedSize:I

    .line 40
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 63
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 64
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    aget-object v2, v2, v0

    .line 66
    if-eqz v2, :cond_0

    .line 67
    const/4 v3, 0x1

    .line 68
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->shardName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->shardName:Ljava/lang/String;

    .line 74
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 76
    :cond_2
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 84
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 85
    sparse-switch v0, :sswitch_data_0

    .line 89
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    :sswitch_0
    return-object p0

    .line 95
    :sswitch_1
    const/16 v0, 0xa

    .line 96
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 97
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    if-nez v0, :cond_2

    move v0, v1

    .line 98
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    .line 100
    if-eqz v0, :cond_1

    .line 101
    iget-object v3, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 104
    new-instance v3, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    invoke-direct {v3}, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;-><init>()V

    aput-object v3, v2, v0

    .line 105
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 106
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    array-length v0, v0

    goto :goto_1

    .line 109
    :cond_3
    new-instance v3, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    invoke-direct {v3}, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;-><init>()V

    aput-object v3, v2, v0

    .line 110
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 111
    iput-object v2, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    goto :goto_0

    .line 115
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->shardName:Ljava/lang/String;

    goto :goto_0

    .line 85
    nop

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
    invoke-virtual {p0, p1}, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

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
    .line 46
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 47
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    aget-object v1, v1, v0

    .line 49
    if-eqz v1, :cond_0

    .line 50
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->shardName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->shardName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 57
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 58
    return-void
.end method
