.class public final Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TemplatedSuggestResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public dropCandidateIndex:Ljava/lang/Integer;

.field public explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

.field public linkMetadata:Lcom/google/personalization/assist/annotate/api/nano/CalendarLinkMetadata;

.field public populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

.field public status:Lcom/google/net/util/nano/Status$StatusProto;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 41
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    .line 42
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->dropCandidateIndex:Ljava/lang/Integer;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->cachedSize:I

    .line 45
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 81
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 82
    :goto_0
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 83
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    aget-object v3, v3, v0

    .line 84
    if-eqz v3, :cond_0

    .line 85
    const/4 v4, 0x1

    .line 86
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 91
    :goto_1
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 92
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    aget-object v2, v2, v1

    .line 93
    if-eqz v2, :cond_3

    .line 94
    const/4 v3, 0x2

    .line 95
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 91
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->dropCandidateIndex:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 100
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->dropCandidateIndex:Ljava/lang/Integer;

    .line 101
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->status:Lcom/google/net/util/nano/Status$StatusProto;

    if-eqz v1, :cond_6

    .line 104
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->status:Lcom/google/net/util/nano/Status$StatusProto;

    .line 105
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->linkMetadata:Lcom/google/personalization/assist/annotate/api/nano/CalendarLinkMetadata;

    if-eqz v1, :cond_7

    .line 108
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->linkMetadata:Lcom/google/personalization/assist/annotate/api/nano/CalendarLinkMetadata;

    .line 109
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_7
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 120
    sparse-switch v0, :sswitch_data_0

    .line 124
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :sswitch_0
    return-object p0

    .line 130
    :sswitch_1
    const/16 v0, 0xa

    .line 131
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 132
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    if-nez v0, :cond_2

    move v0, v1

    .line 133
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    .line 135
    if-eqz v0, :cond_1

    .line 136
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 139
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;-><init>()V

    aput-object v3, v2, v0

    .line 140
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 141
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    array-length v0, v0

    goto :goto_1

    .line 144
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;-><init>()V

    aput-object v3, v2, v0

    .line 145
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 146
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    goto :goto_0

    .line 150
    :sswitch_2
    const/16 v0, 0x12

    .line 151
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 152
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    if-nez v0, :cond_5

    move v0, v1

    .line 153
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    .line 155
    if-eqz v0, :cond_4

    .line 156
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 159
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;-><init>()V

    aput-object v3, v2, v0

    .line 160
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 161
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    array-length v0, v0

    goto :goto_3

    .line 164
    :cond_6
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;-><init>()V

    aput-object v3, v2, v0

    .line 165
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 166
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    goto/16 :goto_0

    .line 170
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->dropCandidateIndex:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 174
    :sswitch_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->status:Lcom/google/net/util/nano/Status$StatusProto;

    if-nez v0, :cond_7

    .line 175
    new-instance v0, Lcom/google/net/util/nano/Status$StatusProto;

    invoke-direct {v0}, Lcom/google/net/util/nano/Status$StatusProto;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->status:Lcom/google/net/util/nano/Status$StatusProto;

    .line 177
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->status:Lcom/google/net/util/nano/Status$StatusProto;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 181
    :sswitch_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->linkMetadata:Lcom/google/personalization/assist/annotate/api/nano/CalendarLinkMetadata;

    if-nez v0, :cond_8

    .line 182
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/CalendarLinkMetadata;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/CalendarLinkMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->linkMetadata:Lcom/google/personalization/assist/annotate/api/nano/CalendarLinkMetadata;

    .line 184
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->linkMetadata:Lcom/google/personalization/assist/annotate/api/nano/CalendarLinkMetadata;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 120
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->populatedSuggestion:[Lcom/google/personalization/assist/annotate/api/nano/PopulatedSuggestion;

    aget-object v2, v2, v0

    .line 53
    if-eqz v2, :cond_0

    .line 54
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 51
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 59
    :goto_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->explanation:[Lcom/google/personalization/assist/annotate/api/nano/SuggestionExplanation;

    aget-object v0, v0, v1

    .line 61
    if-eqz v0, :cond_2

    .line 62
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 59
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->dropCandidateIndex:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 67
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->dropCandidateIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->status:Lcom/google/net/util/nano/Status$StatusProto;

    if-eqz v0, :cond_5

    .line 70
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->status:Lcom/google/net/util/nano/Status$StatusProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->linkMetadata:Lcom/google/personalization/assist/annotate/api/nano/CalendarLinkMetadata;

    if-eqz v0, :cond_6

    .line 73
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TemplatedSuggestResponse;->linkMetadata:Lcom/google/personalization/assist/annotate/api/nano/CalendarLinkMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 75
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 76
    return-void
.end method
