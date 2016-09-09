.class public final Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "FlairProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/libs/proto/nano/FlairProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Flair"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;


# instance fields
.field public key:Ljava/lang/String;

.field public trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 130
    invoke-virtual {p0}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->clear()Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    .line 131
    return-void
.end method

.method public static emptyArray()[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->_emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    if-nez v0, :cond_1

    .line 111
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->_emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    sput-object v0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->_emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    .line 116
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    sget-object v0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->_emptyArray:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;
    .locals 1

    .prologue
    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->key:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;->emptyArray()[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->cachedSize:I

    .line 138
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 159
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->key:Ljava/lang/String;

    .line 160
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    .line 161
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 162
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    aget-object v2, v2, v0

    .line 164
    if-eqz v2, :cond_0

    .line 165
    const/4 v3, 0x2

    .line 166
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 178
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 179
    sparse-switch v0, :sswitch_data_0

    .line 183
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :sswitch_0
    return-object p0

    .line 189
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->key:Ljava/lang/String;

    goto :goto_0

    .line 193
    :sswitch_2
    const/16 v0, 0x12

    .line 194
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 195
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    if-nez v0, :cond_2

    move v0, v1

    .line 196
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    .line 198
    if-eqz v0, :cond_1

    .line 199
    iget-object v3, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 202
    new-instance v3, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    invoke-direct {v3}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;-><init>()V

    aput-object v3, v2, v0

    .line 203
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 204
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    array-length v0, v0

    goto :goto_1

    .line 207
    :cond_3
    new-instance v3, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    invoke-direct {v3}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;-><init>()V

    aput-object v3, v2, v0

    .line 208
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 209
    iput-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    goto :goto_0

    .line 179
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;

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
    .line 144
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 146
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair;->trigger:[Lcom/google/calendar/v2/libs/proto/nano/FlairProto$Flair$FlairTrigger;

    aget-object v1, v1, v0

    .line 148
    if-eqz v1, :cond_0

    .line 149
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 154
    return-void
.end method
