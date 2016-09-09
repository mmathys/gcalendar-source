.class public final Lcom/google/calendar/suggest/v2/nano/SingleEventTime;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SingleEventTime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/suggest/v2/nano/SingleEventTime;",
        ">;"
    }
.end annotation


# instance fields
.field public allDay:Ljava/lang/Boolean;

.field public endTime:Lcom/google/protobuf/nano/Timestamp;

.field public startTime:Lcom/google/protobuf/nano/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->allDay:Ljava/lang/Boolean;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->cachedSize:I

    .line 37
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->startTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->startTime:Lcom/google/protobuf/nano/Timestamp;

    .line 59
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->endTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v1, :cond_1

    .line 62
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->endTime:Lcom/google/protobuf/nano/Timestamp;

    .line 63
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->allDay:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 66
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->allDay:Ljava/lang/Boolean;

    .line 67
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/SingleEventTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 78
    sparse-switch v0, :sswitch_data_0

    .line 82
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    :sswitch_0
    return-object p0

    .line 88
    :sswitch_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->startTime:Lcom/google/protobuf/nano/Timestamp;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lcom/google/protobuf/nano/Timestamp;

    invoke-direct {v0}, Lcom/google/protobuf/nano/Timestamp;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->startTime:Lcom/google/protobuf/nano/Timestamp;

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->startTime:Lcom/google/protobuf/nano/Timestamp;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 95
    :sswitch_2
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->endTime:Lcom/google/protobuf/nano/Timestamp;

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Lcom/google/protobuf/nano/Timestamp;

    invoke-direct {v0}, Lcom/google/protobuf/nano/Timestamp;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->endTime:Lcom/google/protobuf/nano/Timestamp;

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->endTime:Lcom/google/protobuf/nano/Timestamp;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 102
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->allDay:Ljava/lang/Boolean;

    goto :goto_0

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    invoke-virtual {p0, p1}, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/SingleEventTime;

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
    .line 42
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->startTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->startTime:Lcom/google/protobuf/nano/Timestamp;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->endTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v0, :cond_1

    .line 46
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->endTime:Lcom/google/protobuf/nano/Timestamp;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->allDay:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 49
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/SingleEventTime;->allDay:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 51
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 52
    return-void
.end method
