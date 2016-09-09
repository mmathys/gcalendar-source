.class public final Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimeComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;


# instance fields
.field public interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->clear()Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    .line 30
    return-void
.end method

.method public static emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

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
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->cachedSize:I

    .line 36
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 56
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 57
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    aget-object v2, v2, v0

    .line 59
    if-eqz v2, :cond_0

    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 74
    sparse-switch v0, :sswitch_data_0

    .line 78
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :sswitch_0
    return-object p0

    .line 84
    :sswitch_1
    const/16 v0, 0xa

    .line 85
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 86
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    if-nez v0, :cond_2

    move v0, v1

    .line 87
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    .line 89
    if-eqz v0, :cond_1

    .line 90
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 93
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;-><init>()V

    aput-object v3, v2, v0

    .line 94
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 95
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    array-length v0, v0

    goto :goto_1

    .line 98
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;-><init>()V

    aput-object v3, v2, v0

    .line 99
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 100
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;

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
    .line 42
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 43
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 44
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TimeComponent;->interval:[Lcom/google/personalization/assist/annotate/api/nano/TimeInterval;

    aget-object v1, v1, v0

    .line 45
    if-eqz v1, :cond_0

    .line 46
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 43
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 51
    return-void
.end method
