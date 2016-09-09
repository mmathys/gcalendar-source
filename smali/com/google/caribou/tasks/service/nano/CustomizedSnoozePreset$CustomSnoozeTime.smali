.class public final Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CustomizedSnoozePreset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomSnoozeTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;",
        ">;"
    }
.end annotation


# instance fields
.field public timeOfDay:Lcom/google/caribou/tasks/nano/DateTime$Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;->clear()Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    .line 33
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;->timeOfDay:Lcom/google/caribou/tasks/nano/DateTime$Time;

    .line 37
    iput-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;->cachedSize:I

    .line 39
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;->timeOfDay:Lcom/google/caribou/tasks/nano/DateTime$Time;

    if-eqz v1, :cond_0

    .line 55
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;->timeOfDay:Lcom/google/caribou/tasks/nano/DateTime$Time;

    .line 56
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 67
    sparse-switch v0, :sswitch_data_0

    .line 71
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    :sswitch_0
    return-object p0

    .line 77
    :sswitch_1
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;->timeOfDay:Lcom/google/caribou/tasks/nano/DateTime$Time;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lcom/google/caribou/tasks/nano/DateTime$Time;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/DateTime$Time;-><init>()V

    iput-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;->timeOfDay:Lcom/google/caribou/tasks/nano/DateTime$Time;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;->timeOfDay:Lcom/google/caribou/tasks/nano/DateTime$Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 67
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

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
    .line 45
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;->timeOfDay:Lcom/google/caribou/tasks/nano/DateTime$Time;

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;->timeOfDay:Lcom/google/caribou/tasks/nano/DateTime$Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 49
    return-void
.end method
