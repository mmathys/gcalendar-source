.class public final Lcom/google/personalization/timesuggest/nano/Intention;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Intention.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/timesuggest/nano/Intention;",
        ">;"
    }
.end annotation


# instance fields
.field public calendarId:Ljava/lang/String;

.field public durationMinutes:Ljava/lang/Integer;

.field public intentionId:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 49
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/personalization/timesuggest/nano/Intention;->type:I

    .line 50
    iput-object v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->name:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->calendarId:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->durationMinutes:Ljava/lang/Integer;

    .line 53
    iput-object v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->intentionId:Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/timesuggest/nano/Intention;->cachedSize:I

    .line 55
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 81
    iget v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->type:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 82
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/personalization/timesuggest/nano/Intention;->type:I

    .line 83
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/timesuggest/nano/Intention;->name:Ljava/lang/String;

    .line 87
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->calendarId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 90
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/timesuggest/nano/Intention;->calendarId:Ljava/lang/String;

    .line 91
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->durationMinutes:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 94
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/timesuggest/nano/Intention;->durationMinutes:Ljava/lang/Integer;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->intentionId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 98
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/timesuggest/nano/Intention;->intentionId:Ljava/lang/String;

    .line 99
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/timesuggest/nano/Intention;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 110
    sparse-switch v0, :sswitch_data_0

    .line 114
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    :sswitch_0
    return-object p0

    .line 120
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 121
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/timesuggest/nano/Intention;->type:I

    goto :goto_0

    .line 132
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/timesuggest/nano/Intention;->name:Ljava/lang/String;

    goto :goto_0

    .line 136
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/timesuggest/nano/Intention;->calendarId:Ljava/lang/String;

    goto :goto_0

    .line 140
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/timesuggest/nano/Intention;->durationMinutes:Ljava/lang/Integer;

    goto :goto_0

    .line 144
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/timesuggest/nano/Intention;->intentionId:Ljava/lang/String;

    goto :goto_0

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 121
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/timesuggest/nano/Intention;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/timesuggest/nano/Intention;

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
    iget v0, p0, Lcom/google/personalization/timesuggest/nano/Intention;->type:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 61
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/timesuggest/nano/Intention;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/timesuggest/nano/Intention;->calendarId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 67
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->calendarId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/timesuggest/nano/Intention;->durationMinutes:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 70
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->durationMinutes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/timesuggest/nano/Intention;->intentionId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 73
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/timesuggest/nano/Intention;->intentionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 75
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 76
    return-void
.end method
