.class public final Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AnnotatedSuggestResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

.field public suggestEventToReminder:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->suggestEventToReminder:Ljava/lang/Boolean;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->cachedSize:I

    .line 35
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 57
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 58
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    aget-object v2, v2, v0

    .line 60
    if-eqz v2, :cond_0

    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 58
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->suggestEventToReminder:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 67
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->suggestEventToReminder:Ljava/lang/Boolean;

    .line 68
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 70
    :cond_2
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;
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
    const/16 v0, 0x12

    .line 90
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 91
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    if-nez v0, :cond_2

    move v0, v1

    .line 92
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    .line 94
    if-eqz v0, :cond_1

    .line 95
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 98
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;-><init>()V

    aput-object v3, v2, v0

    .line 99
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 100
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    array-length v0, v0

    goto :goto_1

    .line 103
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;-><init>()V

    aput-object v3, v2, v0

    .line 104
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 105
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    goto :goto_0

    .line 109
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->suggestEventToReminder:Ljava/lang/Boolean;

    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x18 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;

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
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 41
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->annotatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestion;

    aget-object v1, v1, v0

    .line 43
    if-eqz v1, :cond_0

    .line 44
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->suggestEventToReminder:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 49
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestResponse;->suggestEventToReminder:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 51
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 52
    return-void
.end method
