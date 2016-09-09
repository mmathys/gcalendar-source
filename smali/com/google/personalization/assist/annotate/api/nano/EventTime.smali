.class public final Lcom/google/personalization/assist/annotate/api/nano/EventTime;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "EventTime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/EventTime;",
        ">;"
    }
.end annotation


# instance fields
.field public allDay:Z

.field public endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->clear()Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    .line 36
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/EventTime;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 40
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->allDay:Z

    .line 42
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->cachedSize:I

    .line 44
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 67
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_1

    .line 70
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 71
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_1
    iget-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->allDay:Z

    if-eqz v1, :cond_2

    .line 74
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->allDay:Z

    .line 75
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/EventTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 86
    sparse-switch v0, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :sswitch_0
    return-object p0

    .line 96
    :sswitch_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 103
    :sswitch_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 110
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->allDay:Z

    goto :goto_0

    .line 86
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/EventTime;

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
    .line 50
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 56
    :cond_1
    iget-boolean v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->allDay:Z

    if-eqz v0, :cond_2

    .line 57
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;->allDay:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 59
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 60
    return-void
.end method
