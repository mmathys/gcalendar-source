.class public final Lcom/google/caribou/tasks/nano/TaskExtensions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TaskExtensions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/caribou/tasks/nano/TaskExtensions;",
        ">;"
    }
.end annotation


# instance fields
.field public androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

.field public keepExtension:Lcom/google/caribou/tasks/nano/KeepExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/google/caribou/tasks/nano/TaskExtensions;->clear()Lcom/google/caribou/tasks/nano/TaskExtensions;

    .line 33
    return-void
.end method

.method public static parseFrom([B)Lcom/google/caribou/tasks/nano/TaskExtensions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/google/caribou/tasks/nano/TaskExtensions;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/TaskExtensions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/caribou/tasks/nano/TaskExtensions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/nano/TaskExtensions;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->keepExtension:Lcom/google/caribou/tasks/nano/KeepExtension;

    .line 37
    iput-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    .line 38
    iput-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->cachedSize:I

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
    iget-object v1, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->keepExtension:Lcom/google/caribou/tasks/nano/KeepExtension;

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->keepExtension:Lcom/google/caribou/tasks/nano/KeepExtension;

    .line 60
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    if-eqz v1, :cond_1

    .line 63
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    .line 64
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/nano/TaskExtensions;
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
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->keepExtension:Lcom/google/caribou/tasks/nano/KeepExtension;

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Lcom/google/caribou/tasks/nano/KeepExtension;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/KeepExtension;-><init>()V

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->keepExtension:Lcom/google/caribou/tasks/nano/KeepExtension;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->keepExtension:Lcom/google/caribou/tasks/nano/KeepExtension;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 92
    :sswitch_2
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    if-nez v0, :cond_2

    .line 93
    new-instance v0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;-><init>()V

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 75
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
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/nano/TaskExtensions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/nano/TaskExtensions;

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
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->keepExtension:Lcom/google/caribou/tasks/nano/KeepExtension;

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->keepExtension:Lcom/google/caribou/tasks/nano/KeepExtension;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    if-eqz v0, :cond_1

    .line 50
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/caribou/tasks/nano/TaskExtensions;->androidExperimentsExtension:Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 52
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 53
    return-void
.end method
