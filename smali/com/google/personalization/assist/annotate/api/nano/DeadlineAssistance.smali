.class public final Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DeadlineAssistance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;",
        ">;"
    }
.end annotation


# instance fields
.field public endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

.field public name:Ljava/lang/String;

.field public startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->clear()Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    .line 39
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->name:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    .line 44
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 45
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 46
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->cachedSize:I

    .line 48
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->name:Ljava/lang/String;

    .line 74
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_1

    .line 77
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 78
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_2

    .line 81
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 82
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    if-eqz v1, :cond_3

    .line 85
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    .line 86
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 97
    sparse-switch v0, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :sswitch_0
    return-object p0

    .line 107
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->name:Ljava/lang/String;

    goto :goto_0

    .line 111
    :sswitch_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 118
    :sswitch_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_2

    .line 119
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 125
    :sswitch_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    if-nez v0, :cond_3

    .line 126
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/EventTime;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

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
    .line 54
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->startTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->endTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    if-eqz v0, :cond_3

    .line 64
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;->eventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 66
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 67
    return-void
.end method
