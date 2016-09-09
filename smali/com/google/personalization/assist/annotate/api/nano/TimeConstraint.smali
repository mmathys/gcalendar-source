.class public final Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimeConstraint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;",
        ">;"
    }
.end annotation


# instance fields
.field public durationMs:Ljava/lang/Long;

.field public timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 43
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->type:I

    .line 44
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->durationMs:Ljava/lang/Long;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->cachedSize:I

    .line 47
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 72
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->type:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 73
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->type:I

    .line 74
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 77
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 78
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    aget-object v2, v2, v0

    .line 79
    if-eqz v2, :cond_1

    .line 80
    const/4 v3, 0x3

    .line 81
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 77
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->durationMs:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 86
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->durationMs:Ljava/lang/Long;

    .line 87
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 98
    sparse-switch v0, :sswitch_data_0

    .line 102
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :sswitch_0
    return-object p0

    .line 108
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 109
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->type:I

    goto :goto_0

    .line 120
    :sswitch_2
    const/16 v0, 0x1a

    .line 121
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 122
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    if-nez v0, :cond_2

    move v0, v1

    .line 123
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    .line 125
    if-eqz v0, :cond_1

    .line 126
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 129
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;-><init>()V

    aput-object v3, v2, v0

    .line 130
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 131
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    array-length v0, v0

    goto :goto_1

    .line 134
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;-><init>()V

    aput-object v3, v2, v0

    .line 135
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 136
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    goto :goto_0

    .line 140
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->durationMs:Ljava/lang/Long;

    goto :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x1a -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch

    .line 109
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->type:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 53
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 56
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->timeCoordinate:[Lcom/google/personalization/assist/annotate/api/nano/TimeCoordinate;

    aget-object v1, v1, v0

    .line 58
    if-eqz v1, :cond_1

    .line 59
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 56
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->durationMs:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 64
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeConstraint;->durationMs:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 66
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 67
    return-void
.end method
