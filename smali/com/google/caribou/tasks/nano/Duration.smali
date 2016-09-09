.class public final Lcom/google/caribou/tasks/nano/Duration;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Duration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/caribou/tasks/nano/Duration;",
        ">;"
    }
.end annotation


# instance fields
.field public durationMillis:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/google/caribou/tasks/nano/Duration;->clear()Lcom/google/caribou/tasks/nano/Duration;

    .line 30
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/nano/Duration;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/caribou/tasks/nano/Duration;->durationMillis:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/Duration;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/nano/Duration;->cachedSize:I

    .line 36
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 51
    iget v1, p0, Lcom/google/caribou/tasks/nano/Duration;->durationMillis:I

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/caribou/tasks/nano/Duration;->durationMillis:I

    .line 53
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/nano/Duration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 64
    sparse-switch v0, :sswitch_data_0

    .line 68
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :sswitch_0
    return-object p0

    .line 74
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/caribou/tasks/nano/Duration;->durationMillis:I

    goto :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/nano/Duration;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/nano/Duration;

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
    iget v0, p0, Lcom/google/caribou/tasks/nano/Duration;->durationMillis:I

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/caribou/tasks/nano/Duration;->durationMillis:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 46
    return-void
.end method
