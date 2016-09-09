.class public final Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CompletionFragmentsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/suggest/nano/CompletionFragmentsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompletionFragments"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

.field public static final messageSetExtension:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lproto2/bridge/nano/MessageSet;",
            "Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 138
    const/16 v0, 0xb

    const-class v1, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

    const-wide/32 v2, 0xa0c538a

    .line 139
    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/nano/Extension;->createMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->messageSetExtension:Lcom/google/protobuf/nano/Extension;

    .line 144
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

    sput-object v0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->EMPTY_ARRAY:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 155
    invoke-static {}, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;->emptyArray()[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    .line 156
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->cachedSize:I

    .line 157
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 175
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 176
    iget-object v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 177
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    aget-object v2, v2, v0

    .line 179
    if-eqz v2, :cond_0

    .line 180
    const/4 v3, 0x1

    .line 181
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    return v1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 193
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 194
    sparse-switch v0, :sswitch_data_0

    .line 198
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    :sswitch_0
    return-object p0

    .line 204
    :sswitch_1
    const/16 v0, 0xa

    .line 205
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 206
    iget-object v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    if-nez v0, :cond_2

    move v0, v1

    .line 207
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    .line 209
    if-eqz v0, :cond_1

    .line 210
    iget-object v3, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 213
    new-instance v3, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    invoke-direct {v3}, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;-><init>()V

    aput-object v3, v2, v0

    .line 214
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 215
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    array-length v0, v0

    goto :goto_1

    .line 218
    :cond_3
    new-instance v3, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    invoke-direct {v3}, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;-><init>()V

    aput-object v3, v2, v0

    .line 219
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 220
    iput-object v2, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    goto :goto_0

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 163
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragments;->fragments:[Lcom/google/protos/suggest/nano/CompletionFragmentsProto$CompletionFragment;

    aget-object v1, v1, v0

    .line 165
    if-eqz v1, :cond_0

    .line 166
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 171
    return-void
.end method
