.class public final Lcom/google/calendar/suggest/v2/nano/TimeSettings;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/suggest/v2/nano/TimeSettings;",
        ">;"
    }
.end annotation


# instance fields
.field public duration:Lcom/google/protobuf/nano/Duration;

.field public timeframeType:I

.field public windowEndTime:Lcom/google/protobuf/nano/Timestamp;

.field public windowStartTime:Lcom/google/protobuf/nano/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 44
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->timeframeType:I

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->cachedSize:I

    .line 46
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->duration:Lcom/google/protobuf/nano/Duration;

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->duration:Lcom/google/protobuf/nano/Duration;

    .line 71
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    .line 75
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v1, :cond_2

    .line 78
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    .line 79
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_2
    iget v1, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->timeframeType:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    .line 82
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->timeframeType:I

    .line 83
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/TimeSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 94
    sparse-switch v0, :sswitch_data_0

    .line 98
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :sswitch_0
    return-object p0

    .line 104
    :sswitch_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->duration:Lcom/google/protobuf/nano/Duration;

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Lcom/google/protobuf/nano/Duration;

    invoke-direct {v0}, Lcom/google/protobuf/nano/Duration;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->duration:Lcom/google/protobuf/nano/Duration;

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->duration:Lcom/google/protobuf/nano/Duration;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 111
    :sswitch_2
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Lcom/google/protobuf/nano/Timestamp;

    invoke-direct {v0}, Lcom/google/protobuf/nano/Timestamp;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 118
    :sswitch_3
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    if-nez v0, :cond_3

    .line 119
    new-instance v0, Lcom/google/protobuf/nano/Timestamp;

    invoke-direct {v0}, Lcom/google/protobuf/nano/Timestamp;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 125
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 126
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->timeframeType:I

    goto :goto_0

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/TimeSettings;

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
    .line 51
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->duration:Lcom/google/protobuf/nano/Duration;

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->duration:Lcom/google/protobuf/nano/Duration;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowStartTime:Lcom/google/protobuf/nano/Timestamp;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    if-eqz v0, :cond_2

    .line 58
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->windowEndTime:Lcom/google/protobuf/nano/Timestamp;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 60
    :cond_2
    iget v0, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->timeframeType:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    .line 61
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/calendar/suggest/v2/nano/TimeSettings;->timeframeType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 63
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 64
    return-void
.end method
