.class public final Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DirectoryProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectoryEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;


# instance fields
.field public country:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->clear()Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    .line 40
    return-void
.end method

.method public static emptyArray()[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->_emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->_emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    sput-object v0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->_emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->_emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;
    .locals 1

    .prologue
    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->id:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->name:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->country:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->cachedSize:I

    .line 48
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->id:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->id:Ljava/lang/String;

    .line 71
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->name:Ljava/lang/String;

    .line 75
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->country:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->country:Ljava/lang/String;

    .line 79
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 90
    sparse-switch v0, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :sswitch_0
    return-object p0

    .line 100
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->id:Ljava/lang/String;

    goto :goto_0

    .line 104
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->name:Ljava/lang/String;

    goto :goto_0

    .line 108
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->country:Ljava/lang/String;

    goto :goto_0

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

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
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->id:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->country:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->country:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 63
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 64
    return-void
.end method
