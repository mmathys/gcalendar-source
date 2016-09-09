.class public final Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CustomizedSnoozePreset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomSnoozePreset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;


# instance fields
.field public name:Ljava/lang/String;

.field public time:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->clear()Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    .line 126
    return-void
.end method

.method public static emptyArray()[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->_emptyArray:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    if-nez v0, :cond_1

    .line 106
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    sget-object v0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->_emptyArray:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    sput-object v0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->_emptyArray:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    .line 111
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_1
    sget-object v0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->_emptyArray:[Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->name:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->time:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    .line 131
    iput-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->cachedSize:I

    .line 133
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->name:Ljava/lang/String;

    .line 153
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->time:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    if-eqz v1, :cond_1

    .line 156
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->time:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    .line 157
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 168
    sparse-switch v0, :sswitch_data_0

    .line 172
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    :sswitch_0
    return-object p0

    .line 178
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->name:Ljava/lang/String;

    goto :goto_0

    .line 182
    :sswitch_2
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->time:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    invoke-direct {v0}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;-><init>()V

    iput-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->time:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->time:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 168
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
    .line 99
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;

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
    .line 139
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->time:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    if-eqz v0, :cond_1

    .line 143
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozePreset;->time:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset$CustomSnoozeTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 145
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 146
    return-void
.end method
