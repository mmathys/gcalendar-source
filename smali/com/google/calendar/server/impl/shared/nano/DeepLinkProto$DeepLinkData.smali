.class public final Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DeepLinkProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeepLinkData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;",
        ">;"
    }
.end annotation


# instance fields
.field public links:[Lcom/google/internal/applinking/v1/nano/Link;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->clear()Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;

    .line 37
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;
    .locals 1

    .prologue
    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->url:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/google/internal/applinking/v1/nano/Link;->emptyArray()[Lcom/google/internal/applinking/v1/nano/Link;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->links:[Lcom/google/internal/applinking/v1/nano/Link;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->cachedSize:I

    .line 44
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 66
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 67
    iget-object v1, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->url:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->url:Ljava/lang/String;

    .line 69
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->links:[Lcom/google/internal/applinking/v1/nano/Link;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->links:[Lcom/google/internal/applinking/v1/nano/Link;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 72
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->links:[Lcom/google/internal/applinking/v1/nano/Link;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 73
    iget-object v2, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->links:[Lcom/google/internal/applinking/v1/nano/Link;

    aget-object v2, v2, v0

    .line 74
    if-eqz v2, :cond_1

    .line 75
    const/4 v3, 0x2

    .line 76
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 80
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 89
    sparse-switch v0, :sswitch_data_0

    .line 93
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :sswitch_0
    return-object p0

    .line 99
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->url:Ljava/lang/String;

    goto :goto_0

    .line 103
    :sswitch_2
    const/16 v0, 0x12

    .line 104
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 105
    iget-object v0, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->links:[Lcom/google/internal/applinking/v1/nano/Link;

    if-nez v0, :cond_2

    move v0, v1

    .line 106
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/internal/applinking/v1/nano/Link;

    .line 108
    if-eqz v0, :cond_1

    .line 109
    iget-object v3, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->links:[Lcom/google/internal/applinking/v1/nano/Link;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 112
    new-instance v3, Lcom/google/internal/applinking/v1/nano/Link;

    invoke-direct {v3}, Lcom/google/internal/applinking/v1/nano/Link;-><init>()V

    aput-object v3, v2, v0

    .line 113
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 114
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->links:[Lcom/google/internal/applinking/v1/nano/Link;

    array-length v0, v0

    goto :goto_1

    .line 117
    :cond_3
    new-instance v3, Lcom/google/internal/applinking/v1/nano/Link;

    invoke-direct {v3}, Lcom/google/internal/applinking/v1/nano/Link;-><init>()V

    aput-object v3, v2, v0

    .line 118
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 119
    iput-object v2, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->links:[Lcom/google/internal/applinking/v1/nano/Link;

    goto :goto_0

    .line 89
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
    invoke-virtual {p0, p1}, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;

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
    .line 50
    iget-object v0, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->url:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->links:[Lcom/google/internal/applinking/v1/nano/Link;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->links:[Lcom/google/internal/applinking/v1/nano/Link;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 54
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->links:[Lcom/google/internal/applinking/v1/nano/Link;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/google/calendar/server/impl/shared/nano/DeepLinkProto$DeepLinkData;->links:[Lcom/google/internal/applinking/v1/nano/Link;

    aget-object v1, v1, v0

    .line 56
    if-eqz v1, :cond_1

    .line 57
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 62
    return-void
.end method
