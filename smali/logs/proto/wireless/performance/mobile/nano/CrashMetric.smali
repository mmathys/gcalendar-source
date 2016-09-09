.class public final Llogs/proto/wireless/performance/mobile/nano/CrashMetric;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CrashMetric.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs/proto/wireless/performance/mobile/nano/CrashMetric;",
        ">;"
    }
.end annotation


# instance fields
.field public hasCrashed:Ljava/lang/Boolean;

.field public processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->hasCrashed:Ljava/lang/Boolean;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->cachedSize:I

    .line 34
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 51
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->hasCrashed:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x1

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->hasCrashed:Ljava/lang/Boolean;

    .line 53
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_0
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    if-eqz v1, :cond_1

    .line 56
    const/4 v1, 0x2

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    .line 57
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_1
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
    invoke-virtual {p0, p1}, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/CrashMetric;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/CrashMetric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 68
    sparse-switch v0, :sswitch_data_0

    .line 72
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :sswitch_0
    return-object p0

    .line 78
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->hasCrashed:Ljava/lang/Boolean;

    goto :goto_0

    .line 82
    :sswitch_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    invoke-direct {v0}, Llogs/proto/wireless/performance/mobile/nano/ProcessStats;-><init>()V

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    .line 85
    :cond_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 39
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->hasCrashed:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->hasCrashed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 42
    :cond_0
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x2

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/CrashMetric;->processStats:Llogs/proto/wireless/performance/mobile/nano/ProcessStats;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 45
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 46
    return-void
.end method
