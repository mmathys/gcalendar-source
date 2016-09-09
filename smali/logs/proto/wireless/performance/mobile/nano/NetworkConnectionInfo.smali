.class public final Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "NetworkConnectionInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public networkType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 52
    const/high16 v0, -0x80000000

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;->networkType:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;->cachedSize:I

    .line 54
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 68
    iget v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;->networkType:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 69
    const/4 v1, 0x1

    iget v2, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;->networkType:I

    .line 70
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_0
    return v0
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
    invoke-virtual {p0, p1}, Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 81
    sparse-switch v0, :sswitch_data_0

    .line 85
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :sswitch_0
    return-object p0

    .line 91
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 92
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;->networkType:I

    goto :goto_0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 92
    :pswitch_data_0
    .packed-switch -0x1
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

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget v0, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;->networkType:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 60
    const/4 v0, 0x1

    iget v1, p0, Llogs/proto/wireless/performance/mobile/nano/NetworkConnectionInfo;->networkType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 63
    return-void
.end method
