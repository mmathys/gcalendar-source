.class public final Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "EmailAddress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;


# instance fields
.field public contactTag:Lcom/google/personalization/assist/annotate/api/nano/ContactTag;

.field public emailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->clear()Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    .line 33
    return-void
.end method

.method public static emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

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
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emailAddress:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->contactTag:Lcom/google/personalization/assist/annotate/api/nano/ContactTag;

    .line 38
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->cachedSize:I

    .line 40
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emailAddress:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emailAddress:Ljava/lang/String;

    .line 60
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->contactTag:Lcom/google/personalization/assist/annotate/api/nano/ContactTag;

    if-eqz v1, :cond_1

    .line 63
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->contactTag:Lcom/google/personalization/assist/annotate/api/nano/ContactTag;

    .line 64
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 75
    sparse-switch v0, :sswitch_data_0

    .line 79
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :sswitch_0
    return-object p0

    .line 85
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emailAddress:Ljava/lang/String;

    goto :goto_0

    .line 89
    :sswitch_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->contactTag:Lcom/google/personalization/assist/annotate/api/nano/ContactTag;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/ContactTag;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/ContactTag;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->contactTag:Lcom/google/personalization/assist/annotate/api/nano/ContactTag;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->contactTag:Lcom/google/personalization/assist/annotate/api/nano/ContactTag;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 75
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

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
    .line 46
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emailAddress:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->contactTag:Lcom/google/personalization/assist/annotate/api/nano/ContactTag;

    if-eqz v0, :cond_1

    .line 50
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->contactTag:Lcom/google/personalization/assist/annotate/api/nano/ContactTag;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 52
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 53
    return-void
.end method
