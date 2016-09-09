.class public final Lcom/google/calendar/suggest/v2/nano/Event;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/suggest/v2/nano/Event;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/calendar/suggest/v2/nano/Event;


# instance fields
.field public calendarId:Ljava/lang/String;

.field public declined:Ljava/lang/Boolean;

.field public eventId:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public private_:Ljava/lang/Boolean;

.field public summary:Ljava/lang/String;

.field public time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

.field public transparent:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->calendarId:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->eventId:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->summary:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->private_:Ljava/lang/Boolean;

    .line 54
    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->declined:Ljava/lang/Boolean;

    .line 55
    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->transparent:Ljava/lang/Boolean;

    .line 56
    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->location:Ljava/lang/String;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->cachedSize:I

    .line 58
    return-void
.end method

.method public static emptyArray()[Lcom/google/calendar/suggest/v2/nano/Event;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/Event;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/Event;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/Event;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/Event;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/suggest/v2/nano/Event;

    sput-object v0, Lcom/google/calendar/suggest/v2/nano/Event;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/Event;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/Event;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/Event;

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
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->calendarId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 94
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Event;->calendarId:Ljava/lang/String;

    .line 95
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->eventId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 98
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Event;->eventId:Ljava/lang/String;

    .line 99
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    if-eqz v1, :cond_2

    .line 102
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Event;->time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    .line 103
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->summary:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 106
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Event;->summary:Ljava/lang/String;

    .line 107
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->private_:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 110
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Event;->private_:Ljava/lang/Boolean;

    .line 111
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_4
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->declined:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 114
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Event;->declined:Ljava/lang/Boolean;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_5
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->transparent:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 118
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Event;->transparent:Ljava/lang/Boolean;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_6
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->location:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 122
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Event;->location:Ljava/lang/String;

    .line 123
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_7
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 134
    sparse-switch v0, :sswitch_data_0

    .line 138
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :sswitch_0
    return-object p0

    .line 144
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->calendarId:Ljava/lang/String;

    goto :goto_0

    .line 148
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->eventId:Ljava/lang/String;

    goto :goto_0

    .line 152
    :sswitch_3
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    invoke-direct {v0}, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 159
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->summary:Ljava/lang/String;

    goto :goto_0

    .line 163
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->private_:Ljava/lang/Boolean;

    goto :goto_0

    .line 167
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->declined:Ljava/lang/Boolean;

    goto :goto_0

    .line 171
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->transparent:Ljava/lang/Boolean;

    goto :goto_0

    .line 175
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->location:Ljava/lang/String;

    goto :goto_0

    .line 134
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
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
    invoke-virtual {p0, p1}, Lcom/google/calendar/suggest/v2/nano/Event;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/Event;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->calendarId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->calendarId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->eventId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->eventId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    if-eqz v0, :cond_2

    .line 70
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->time:Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->summary:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 73
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->private_:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 76
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->private_:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->declined:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 79
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->declined:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->transparent:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 82
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->transparent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 84
    :cond_6
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Event;->location:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 85
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Event;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 87
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 88
    return-void
.end method
