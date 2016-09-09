.class public final Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "FlexScheduleInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public timeDuration:I

.field public timeWindow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->timeWindow:I

    .line 33
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->timeDuration:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->cachedSize:I

    .line 35
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 51
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 52
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->timeWindow:I

    if-eq v1, v3, :cond_0

    .line 53
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->timeWindow:I

    .line 54
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :cond_0
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->timeDuration:I

    if-eq v1, v3, :cond_1

    .line 57
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->timeDuration:I

    .line 58
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 69
    sparse-switch v0, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :sswitch_0
    return-object p0

    .line 79
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 80
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->timeWindow:I

    goto :goto_0

    .line 94
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 95
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 101
    :pswitch_1
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->timeDuration:I

    goto :goto_0

    .line 69
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 95
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v2, -0x80000000

    .line 40
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->timeWindow:I

    if-eq v0, v2, :cond_0

    .line 41
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->timeWindow:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 43
    :cond_0
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->timeDuration:I

    if-eq v0, v2, :cond_1

    .line 44
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FlexScheduleInfo;->timeDuration:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 46
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 47
    return-void
.end method
