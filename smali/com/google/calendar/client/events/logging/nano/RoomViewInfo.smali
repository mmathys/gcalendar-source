.class public final Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "RoomViewInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public containsListing:Z

.field public containsSuggestions:Z

.field public emptyListing:Z

.field public listingType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 43
    invoke-virtual {p0}, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->clear()Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;

    .line 44
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->containsSuggestions:Z

    .line 48
    iput-boolean v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->containsListing:Z

    .line 49
    iput v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->listingType:I

    .line 50
    iput-boolean v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->emptyListing:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->cachedSize:I

    .line 53
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 77
    iget-boolean v1, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->containsSuggestions:Z

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->containsSuggestions:Z

    .line 79
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_0
    iget-boolean v1, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->containsListing:Z

    if-eqz v1, :cond_1

    .line 82
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->containsListing:Z

    .line 83
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_1
    iget v1, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->listingType:I

    if-eqz v1, :cond_2

    .line 86
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->listingType:I

    .line 87
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_2
    iget-boolean v1, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->emptyListing:Z

    if-eqz v1, :cond_3

    .line 90
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->emptyListing:Z

    .line 91
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 102
    sparse-switch v0, :sswitch_data_0

    .line 106
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :sswitch_0
    return-object p0

    .line 112
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->containsSuggestions:Z

    goto :goto_0

    .line 116
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->containsListing:Z

    goto :goto_0

    .line 120
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 121
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    iput v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->listingType:I

    goto :goto_0

    .line 131
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->emptyListing:Z

    goto :goto_0

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
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
    invoke-virtual {p0, p1}, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;

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
    .line 59
    iget-boolean v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->containsSuggestions:Z

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->containsSuggestions:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 62
    :cond_0
    iget-boolean v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->containsListing:Z

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->containsListing:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 65
    :cond_1
    iget v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->listingType:I

    if-eqz v0, :cond_2

    .line 66
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->listingType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 68
    :cond_2
    iget-boolean v0, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->emptyListing:Z

    if-eqz v0, :cond_3

    .line 69
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/calendar/client/events/logging/nano/RoomViewInfo;->emptyListing:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 71
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 72
    return-void
.end method
