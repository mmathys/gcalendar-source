.class public final Llogs/proto/wireless/performance/mobile/nano/MetricExtension;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MetricExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs/proto/wireless/performance/mobile/nano/MetricExtension;",
        ">;"
    }
.end annotation


# instance fields
.field public gmailExtension:Llogs/proto/wireless/performance/mobile/nano/GmailExtension;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/MetricExtension;->cachedSize:I

    .line 30
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 43
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 44
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MetricExtension;->gmailExtension:Llogs/proto/wireless/performance/mobile/nano/GmailExtension;

    if-eqz v1, :cond_0

    .line 45
    const/4 v1, 0x1

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/MetricExtension;->gmailExtension:Llogs/proto/wireless/performance/mobile/nano/GmailExtension;

    .line 46
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
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
    invoke-virtual {p0, p1}, Llogs/proto/wireless/performance/mobile/nano/MetricExtension;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/MetricExtension;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/MetricExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 57
    sparse-switch v0, :sswitch_data_0

    .line 61
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    :sswitch_0
    return-object p0

    .line 67
    :sswitch_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MetricExtension;->gmailExtension:Llogs/proto/wireless/performance/mobile/nano/GmailExtension;

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/GmailExtension;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/GmailExtension;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MetricExtension;->gmailExtension:Llogs/proto/wireless/performance/mobile/nano/GmailExtension;

    .line 70
    :cond_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MetricExtension;->gmailExtension:Llogs/proto/wireless/performance/mobile/nano/GmailExtension;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/MetricExtension;->gmailExtension:Llogs/proto/wireless/performance/mobile/nano/GmailExtension;

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/MetricExtension;->gmailExtension:Llogs/proto/wireless/performance/mobile/nano/GmailExtension;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 39
    return-void
.end method
