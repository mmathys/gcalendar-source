.class public final Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CompletionFragmentsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/suggest/nano/CompletionFragmentsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompletionFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;


# instance fields
.field public fragment:Ljava/lang/String;

.field public originalFragment:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->fragment:Ljava/lang/String;

    .line 47
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->type:I

    .line 48
    iput-object v1, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->originalFragment:Ljava/lang/String;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->cachedSize:I

    .line 50
    return-void
.end method

.method public static emptyArray()[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->_emptyArray:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    if-nez v0, :cond_1

    .line 24
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->_emptyArray:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    sput-object v0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->_emptyArray:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->_emptyArray:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    return-object v0

    .line 29
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
    .line 67
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 68
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->fragment:Ljava/lang/String;

    .line 69
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    iget v1, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->type:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 71
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->type:I

    .line 72
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->originalFragment:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 75
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->originalFragment:Ljava/lang/String;

    .line 76
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
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
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 87
    sparse-switch v0, :sswitch_data_0

    .line 91
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :sswitch_0
    return-object p0

    .line 97
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->fragment:Ljava/lang/String;

    goto :goto_0

    .line 101
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 102
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    iput v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->type:I

    goto :goto_0

    .line 112
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->originalFragment:Ljava/lang/String;

    goto :goto_0

    .line 87
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 56
    iget v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->type:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 57
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->originalFragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 60
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->originalFragment:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 62
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 63
    return-void
.end method
