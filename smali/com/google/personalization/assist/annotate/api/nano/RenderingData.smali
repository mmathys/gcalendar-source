.class public final Lcom/google/personalization/assist/annotate/api/nano/RenderingData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "RenderingData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/RenderingData;",
        ">;"
    }
.end annotation


# instance fields
.field public assistanceType:I

.field public helpText:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->url:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->id:Ljava/lang/String;

    .line 76
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->assistanceType:I

    .line 77
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->helpText:Ljava/lang/String;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->cachedSize:I

    .line 79
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->url:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->url:Ljava/lang/String;

    .line 104
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->id:Ljava/lang/String;

    .line 108
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_1
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->assistanceType:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_2

    .line 111
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->assistanceType:I

    .line 112
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->helpText:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 115
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->helpText:Ljava/lang/String;

    .line 116
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/RenderingData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 127
    sparse-switch v0, :sswitch_data_0

    .line 131
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :sswitch_0
    return-object p0

    .line 137
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->url:Ljava/lang/String;

    goto :goto_0

    .line 141
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->id:Ljava/lang/String;

    goto :goto_0

    .line 145
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 146
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->assistanceType:I

    goto :goto_0

    .line 185
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->helpText:Ljava/lang/String;

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/RenderingData;

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
    .line 84
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 90
    :cond_1
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->assistanceType:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 91
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->assistanceType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->helpText:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 94
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/RenderingData;->helpText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 96
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 97
    return-void
.end method
