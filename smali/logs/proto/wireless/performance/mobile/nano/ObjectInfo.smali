.class public final Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ObjectInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;


# instance fields
.field public className:Ljava/lang/String;

.field public leakPath:Ljava/lang/String;

.field public leakedCount:Ljava/lang/Integer;

.field public releasedCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 38
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->className:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->releasedCount:Ljava/lang/Integer;

    .line 40
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakedCount:Ljava/lang/Integer;

    .line 41
    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakPath:Ljava/lang/String;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->cachedSize:I

    .line 43
    return-void
.end method

.method public static emptyArray()[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    sput-object v0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->_emptyArray:[Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 66
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->className:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x1

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->className:Ljava/lang/String;

    .line 68
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_0
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->releasedCount:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 71
    const/4 v1, 0x2

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->releasedCount:Ljava/lang/Integer;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_1
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakedCount:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 75
    const/4 v1, 0x3

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakedCount:Ljava/lang/Integer;

    .line 76
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_2
    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 79
    const/4 v1, 0x4

    iget-object v2, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakPath:Ljava/lang/String;

    .line 80
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    :cond_3
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
    invoke-virtual {p0, p1}, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 91
    sparse-switch v0, :sswitch_data_0

    .line 95
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    :sswitch_0
    return-object p0

    .line 101
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->className:Ljava/lang/String;

    goto :goto_0

    .line 105
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->releasedCount:Ljava/lang/Integer;

    goto :goto_0

    .line 109
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakedCount:Ljava/lang/Integer;

    goto :goto_0

    .line 113
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakPath:Ljava/lang/String;

    goto :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 48
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->className:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 51
    :cond_0
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->releasedCount:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 52
    const/4 v0, 0x2

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->releasedCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 54
    :cond_1
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakedCount:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 55
    const/4 v0, 0x3

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakedCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 57
    :cond_2
    iget-object v0, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 58
    const/4 v0, 0x4

    iget-object v1, p0, Llogs/proto/wireless/performance/mobile/nano/ObjectInfo;->leakPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 60
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 61
    return-void
.end method
