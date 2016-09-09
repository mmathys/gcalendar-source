.class public final Lcom/google/caribou/tasks/nano/KeepExtension;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "KeepExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/caribou/tasks/nano/KeepExtension;",
        ">;"
    }
.end annotation


# instance fields
.field public clientNoteId:Ljava/lang/String;

.field public noteOwnerObfuscatedGaiaId:Ljava/lang/String;

.field public reminderVersion:I

.field public serverNoteId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/google/caribou/tasks/nano/KeepExtension;->clear()Lcom/google/caribou/tasks/nano/KeepExtension;

    .line 45
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/nano/KeepExtension;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->reminderVersion:I

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->clientNoteId:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->serverNoteId:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->noteOwnerObfuscatedGaiaId:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->cachedSize:I

    .line 54
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 78
    iget v1, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->reminderVersion:I

    if-eqz v1, :cond_0

    .line 79
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->reminderVersion:I

    .line 80
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->clientNoteId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->clientNoteId:Ljava/lang/String;

    .line 84
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->serverNoteId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->serverNoteId:Ljava/lang/String;

    .line 88
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->noteOwnerObfuscatedGaiaId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 91
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->noteOwnerObfuscatedGaiaId:Ljava/lang/String;

    .line 92
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/nano/KeepExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 103
    sparse-switch v0, :sswitch_data_0

    .line 107
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    :sswitch_0
    return-object p0

    .line 113
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 114
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    iput v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->reminderVersion:I

    goto :goto_0

    .line 125
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->clientNoteId:Ljava/lang/String;

    goto :goto_0

    .line 129
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->serverNoteId:Ljava/lang/String;

    goto :goto_0

    .line 133
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->noteOwnerObfuscatedGaiaId:Ljava/lang/String;

    goto :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
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
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/nano/KeepExtension;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/nano/KeepExtension;

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
    .line 60
    iget v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->reminderVersion:I

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->reminderVersion:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->clientNoteId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->clientNoteId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->serverNoteId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->serverNoteId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->noteOwnerObfuscatedGaiaId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/caribou/tasks/nano/KeepExtension;->noteOwnerObfuscatedGaiaId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 72
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 73
    return-void
.end method
