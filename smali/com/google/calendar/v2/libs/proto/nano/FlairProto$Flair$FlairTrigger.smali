.class public final Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "FlairProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlairTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;


# instance fields
.field public score:I

.field public word:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->clear()Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    .line 40
    return-void
.end method

.method public static emptyArray()[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->_emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->_emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    sput-object v0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->_emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->_emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->score:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->word:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->cachedSize:I

    .line 47
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 61
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->score:I

    .line 62
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->word:Ljava/lang/String;

    .line 64
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->score:I

    goto :goto_0

    .line 88
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->word:Ljava/lang/String;

    goto :goto_0

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

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
    .line 53
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->score:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 54
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->word:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 55
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 56
    return-void
.end method
