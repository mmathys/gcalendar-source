.class public final Lcom/google/net/util/nano/Status$StatusProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/net/util/nano/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatusProto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/net/util/nano/Status$StatusProto;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Lcom/google/net/util/nano/Status$StatusProto;

.field public static final messageSetExtension:Lcom/google/protobuf/nano/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/nano/Extension",
            "<",
            "Lproto2/bridge/nano/MessageSet;",
            "Lcom/google/net/util/nano/Status$StatusProto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canonicalCode:Ljava/lang/Integer;

.field public code:Ljava/lang/Integer;

.field public message:Ljava/lang/String;

.field public messageSet:Lproto2/bridge/nano/MessageSet;

.field public payload:Lproto/nano/TypedMessage;

.field public space:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const/16 v0, 0xb

    const-class v1, Lcom/google/net/util/nano/Status$StatusProto;

    const-wide/32 v2, 0x13aba

    .line 18
    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/nano/Extension;->createMessageTyped(ILjava/lang/Class;J)Lcom/google/protobuf/nano/Extension;

    move-result-object v0

    sput-object v0, Lcom/google/net/util/nano/Status$StatusProto;->messageSetExtension:Lcom/google/protobuf/nano/Extension;

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/net/util/nano/Status$StatusProto;

    sput-object v0, Lcom/google/net/util/nano/Status$StatusProto;->EMPTY_ARRAY:[Lcom/google/net/util/nano/Status$StatusProto;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->code:Ljava/lang/Integer;

    .line 50
    iput-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->space:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->message:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->canonicalCode:Ljava/lang/Integer;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->cachedSize:I

    .line 54
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/google/net/util/nano/Status$StatusProto;->code:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/net/util/nano/Status$StatusProto;->code:Ljava/lang/Integer;

    .line 85
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/google/net/util/nano/Status$StatusProto;->space:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 88
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/net/util/nano/Status$StatusProto;->space:Ljava/lang/String;

    .line 89
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/google/net/util/nano/Status$StatusProto;->message:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 92
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/net/util/nano/Status$StatusProto;->message:Ljava/lang/String;

    .line 93
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/google/net/util/nano/Status$StatusProto;->payload:Lproto/nano/TypedMessage;

    if-eqz v1, :cond_3

    .line 96
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/net/util/nano/Status$StatusProto;->payload:Lproto/nano/TypedMessage;

    .line 97
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/google/net/util/nano/Status$StatusProto;->messageSet:Lproto2/bridge/nano/MessageSet;

    if-eqz v1, :cond_4

    .line 100
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/net/util/nano/Status$StatusProto;->messageSet:Lproto2/bridge/nano/MessageSet;

    .line 101
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_4
    iget-object v1, p0, Lcom/google/net/util/nano/Status$StatusProto;->canonicalCode:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 104
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/net/util/nano/Status$StatusProto;->canonicalCode:Ljava/lang/Integer;

    .line 105
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/net/util/nano/Status$StatusProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 116
    sparse-switch v0, :sswitch_data_0

    .line 120
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :sswitch_0
    return-object p0

    .line 126
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->code:Ljava/lang/Integer;

    goto :goto_0

    .line 130
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->space:Ljava/lang/String;

    goto :goto_0

    .line 134
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->message:Ljava/lang/String;

    goto :goto_0

    .line 138
    :sswitch_4
    iget-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->payload:Lproto/nano/TypedMessage;

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Lproto/nano/TypedMessage;

    invoke-direct {v0}, Lproto/nano/TypedMessage;-><init>()V

    iput-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->payload:Lproto/nano/TypedMessage;

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->payload:Lproto/nano/TypedMessage;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 145
    :sswitch_5
    iget-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->messageSet:Lproto2/bridge/nano/MessageSet;

    if-nez v0, :cond_2

    .line 146
    new-instance v0, Lproto2/bridge/nano/MessageSet;

    invoke-direct {v0}, Lproto2/bridge/nano/MessageSet;-><init>()V

    iput-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->messageSet:Lproto2/bridge/nano/MessageSet;

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->messageSet:Lproto2/bridge/nano/MessageSet;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 152
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->canonicalCode:Ljava/lang/Integer;

    goto :goto_0

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
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
    invoke-virtual {p0, p1}, Lcom/google/net/util/nano/Status$StatusProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/net/util/nano/Status$StatusProto;

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
    .line 59
    iget-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/net/util/nano/Status$StatusProto;->code:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->space:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/net/util/nano/Status$StatusProto;->space:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->message:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 66
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/net/util/nano/Status$StatusProto;->message:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->payload:Lproto/nano/TypedMessage;

    if-eqz v0, :cond_3

    .line 69
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/net/util/nano/Status$StatusProto;->payload:Lproto/nano/TypedMessage;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->messageSet:Lproto2/bridge/nano/MessageSet;

    if-eqz v0, :cond_4

    .line 72
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/net/util/nano/Status$StatusProto;->messageSet:Lproto2/bridge/nano/MessageSet;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/google/net/util/nano/Status$StatusProto;->canonicalCode:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 75
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/net/util/nano/Status$StatusProto;->canonicalCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 77
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 78
    return-void
.end method
