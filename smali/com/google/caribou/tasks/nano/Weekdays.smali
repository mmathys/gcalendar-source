.class public final Lcom/google/caribou/tasks/nano/Weekdays;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Weekdays.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/caribou/tasks/nano/Weekdays;",
        ">;"
    }
.end annotation


# instance fields
.field public firstDayOfWeek:I

.field public firstDayOfWeekend:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/google/caribou/tasks/nano/Weekdays;->clear()Lcom/google/caribou/tasks/nano/Weekdays;

    .line 33
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/nano/Weekdays;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/google/caribou/tasks/nano/Weekdays;->firstDayOfWeek:I

    .line 37
    iput v0, p0, Lcom/google/caribou/tasks/nano/Weekdays;->firstDayOfWeekend:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/Weekdays;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/nano/Weekdays;->cachedSize:I

    .line 40
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 58
    iget v1, p0, Lcom/google/caribou/tasks/nano/Weekdays;->firstDayOfWeek:I

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/caribou/tasks/nano/Weekdays;->firstDayOfWeek:I

    .line 60
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_0
    iget v1, p0, Lcom/google/caribou/tasks/nano/Weekdays;->firstDayOfWeekend:I

    if-eqz v1, :cond_1

    .line 63
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/caribou/tasks/nano/Weekdays;->firstDayOfWeekend:I

    .line 64
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/nano/Weekdays;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 75
    sparse-switch v0, :sswitch_data_0

    .line 79
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :sswitch_0
    return-object p0

    .line 85
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/caribou/tasks/nano/Weekdays;->firstDayOfWeek:I

    goto :goto_0

    .line 89
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/caribou/tasks/nano/Weekdays;->firstDayOfWeekend:I

    goto :goto_0

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/nano/Weekdays;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/nano/Weekdays;

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
    .line 46
    iget v0, p0, Lcom/google/caribou/tasks/nano/Weekdays;->firstDayOfWeek:I

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/caribou/tasks/nano/Weekdays;->firstDayOfWeek:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 49
    :cond_0
    iget v0, p0, Lcom/google/caribou/tasks/nano/Weekdays;->firstDayOfWeekend:I

    if-eqz v0, :cond_1

    .line 50
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/caribou/tasks/nano/Weekdays;->firstDayOfWeekend:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 52
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 53
    return-void
.end method
