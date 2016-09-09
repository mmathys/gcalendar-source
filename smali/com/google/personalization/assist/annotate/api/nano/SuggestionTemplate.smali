.class public final Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SuggestionTemplate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;",
        ">;"
    }
.end annotation


# instance fields
.field public text:Ljava/lang/String;

.field public timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->text:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;->emptyArray()[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->cachedSize:I

    .line 35
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->text:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 58
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->text:Ljava/lang/String;

    .line 59
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 62
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    aget-object v2, v2, v0

    .line 64
    if-eqz v2, :cond_1

    .line 65
    const/4 v3, 0x2

    .line 66
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 70
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 79
    sparse-switch v0, :sswitch_data_0

    .line 83
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :sswitch_0
    return-object p0

    .line 89
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->text:Ljava/lang/String;

    goto :goto_0

    .line 93
    :sswitch_2
    const/16 v0, 0x12

    .line 94
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 95
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    if-nez v0, :cond_2

    move v0, v1

    .line 96
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    .line 98
    if-eqz v0, :cond_1

    .line 99
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 102
    new-instance v3, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    invoke-direct {v3}, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;-><init>()V

    aput-object v3, v2, v0

    .line 103
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 104
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    array-length v0, v0

    goto :goto_1

    .line 107
    :cond_3
    new-instance v3, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    invoke-direct {v3}, Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;-><init>()V

    aput-object v3, v2, v0

    .line 108
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 109
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    goto :goto_0

    .line 79
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;

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
    .line 40
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 44
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 45
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionTemplate;->timePlaceholder:[Lcom/google/caribou/smartreply/proto/nano/Template$TimePlaceholder;

    aget-object v1, v1, v0

    .line 46
    if-eqz v1, :cond_1

    .line 47
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 52
    return-void
.end method
