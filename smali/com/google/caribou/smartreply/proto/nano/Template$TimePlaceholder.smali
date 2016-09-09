.class public final Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Template.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/caribou/smartreply/proto/nano/Template;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimePlaceholder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;


# instance fields
.field public offset:Ljava/lang/Integer;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->offset:Ljava/lang/Integer;

    .line 209
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->type:I

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->cachedSize:I

    .line 211
    return-void
.end method

.method public static emptyArray()[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->_emptyArray:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    if-nez v0, :cond_1

    .line 189
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    sget-object v0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->_emptyArray:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    sput-object v0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->_emptyArray:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    .line 194
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_1
    sget-object v0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->_emptyArray:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    return-object v0

    .line 194
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
    .line 227
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->offset:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 229
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->offset:Ljava/lang/Integer;

    .line 230
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_0
    iget v1, p0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->type:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 233
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->type:I

    .line 234
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 245
    sparse-switch v0, :sswitch_data_0

    .line 249
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    :sswitch_0
    return-object p0

    .line 255
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->offset:Ljava/lang/Integer;

    goto :goto_0

    .line 259
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 260
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 266
    :pswitch_0
    iput v0, p0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->type:I

    goto :goto_0

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 260
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 173
    invoke-virtual {p0, p1}, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

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
    .line 216
    iget-object v0, p0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->offset:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 219
    :cond_0
    iget v0, p0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->type:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 220
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 222
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 223
    return-void
.end method
