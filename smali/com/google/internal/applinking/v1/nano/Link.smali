.class public final Lcom/google/internal/applinking/v1/nano/Link;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/internal/applinking/v1/nano/Link;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/internal/applinking/v1/nano/Link;


# instance fields
.field public displayInfo:Lcom/google/internal/applinking/v1/nano/DisplayInfo;

.field public launchInfo:Lcom/google/internal/applinking/v1/nano/LaunchInfo;

.field public platform:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/google/internal/applinking/v1/nano/Link;->clear()Lcom/google/internal/applinking/v1/nano/Link;

    .line 39
    return-void
.end method

.method public static emptyArray()[Lcom/google/internal/applinking/v1/nano/Link;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/internal/applinking/v1/nano/Link;->_emptyArray:[Lcom/google/internal/applinking/v1/nano/Link;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/internal/applinking/v1/nano/Link;->_emptyArray:[Lcom/google/internal/applinking/v1/nano/Link;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/internal/applinking/v1/nano/Link;

    sput-object v0, Lcom/google/internal/applinking/v1/nano/Link;->_emptyArray:[Lcom/google/internal/applinking/v1/nano/Link;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/internal/applinking/v1/nano/Link;->_emptyArray:[Lcom/google/internal/applinking/v1/nano/Link;

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
.method public clear()Lcom/google/internal/applinking/v1/nano/Link;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->platform:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->url:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/google/internal/applinking/v1/nano/Link;->displayInfo:Lcom/google/internal/applinking/v1/nano/DisplayInfo;

    .line 45
    iput-object v1, p0, Lcom/google/internal/applinking/v1/nano/Link;->launchInfo:Lcom/google/internal/applinking/v1/nano/LaunchInfo;

    .line 46
    iput-object v1, p0, Lcom/google/internal/applinking/v1/nano/Link;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->cachedSize:I

    .line 48
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 72
    iget v1, p0, Lcom/google/internal/applinking/v1/nano/Link;->platform:I

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/internal/applinking/v1/nano/Link;->platform:I

    .line 74
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/google/internal/applinking/v1/nano/Link;->url:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/internal/applinking/v1/nano/Link;->url:Ljava/lang/String;

    .line 78
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/google/internal/applinking/v1/nano/Link;->displayInfo:Lcom/google/internal/applinking/v1/nano/DisplayInfo;

    if-eqz v1, :cond_2

    .line 81
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/internal/applinking/v1/nano/Link;->displayInfo:Lcom/google/internal/applinking/v1/nano/DisplayInfo;

    .line 82
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/google/internal/applinking/v1/nano/Link;->launchInfo:Lcom/google/internal/applinking/v1/nano/LaunchInfo;

    if-eqz v1, :cond_3

    .line 85
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/internal/applinking/v1/nano/Link;->launchInfo:Lcom/google/internal/applinking/v1/nano/LaunchInfo;

    .line 86
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/internal/applinking/v1/nano/Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 97
    sparse-switch v0, :sswitch_data_0

    .line 101
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :sswitch_0
    return-object p0

    .line 107
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 108
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    iput v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->platform:I

    goto :goto_0

    .line 119
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->url:Ljava/lang/String;

    goto :goto_0

    .line 123
    :sswitch_3
    iget-object v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->displayInfo:Lcom/google/internal/applinking/v1/nano/DisplayInfo;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Lcom/google/internal/applinking/v1/nano/DisplayInfo;

    invoke-direct {v0}, Lcom/google/internal/applinking/v1/nano/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->displayInfo:Lcom/google/internal/applinking/v1/nano/DisplayInfo;

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->displayInfo:Lcom/google/internal/applinking/v1/nano/DisplayInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 130
    :sswitch_4
    iget-object v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->launchInfo:Lcom/google/internal/applinking/v1/nano/LaunchInfo;

    if-nez v0, :cond_2

    .line 131
    new-instance v0, Lcom/google/internal/applinking/v1/nano/LaunchInfo;

    invoke-direct {v0}, Lcom/google/internal/applinking/v1/nano/LaunchInfo;-><init>()V

    iput-object v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->launchInfo:Lcom/google/internal/applinking/v1/nano/LaunchInfo;

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->launchInfo:Lcom/google/internal/applinking/v1/nano/LaunchInfo;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch

    .line 108
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
    invoke-virtual {p0, p1}, Lcom/google/internal/applinking/v1/nano/Link;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/internal/applinking/v1/nano/Link;

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
    .line 54
    iget v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->platform:I

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/internal/applinking/v1/nano/Link;->platform:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->url:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/internal/applinking/v1/nano/Link;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->displayInfo:Lcom/google/internal/applinking/v1/nano/DisplayInfo;

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/internal/applinking/v1/nano/Link;->displayInfo:Lcom/google/internal/applinking/v1/nano/DisplayInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/google/internal/applinking/v1/nano/Link;->launchInfo:Lcom/google/internal/applinking/v1/nano/LaunchInfo;

    if-eqz v0, :cond_3

    .line 64
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/internal/applinking/v1/nano/Link;->launchInfo:Lcom/google/internal/applinking/v1/nano/LaunchInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 66
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 67
    return-void
.end method
