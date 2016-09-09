.class public final Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SuggestionClick.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;",
        ">;"
    }
.end annotation


# instance fields
.field public annotationType:I

.field public creationTime:Ljava/lang/Long;

.field public isBuildingBlock:Ljava/lang/Boolean;

.field public numCharactersSaved:Ljava/lang/Integer;

.field public position:Ljava/lang/Integer;

.field public sourceType:I

.field public spellCorrectionType:I

.field public subsourceType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->position:Ljava/lang/Integer;

    .line 51
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->creationTime:Ljava/lang/Long;

    .line 52
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->numCharactersSaved:Ljava/lang/Integer;

    .line 53
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->sourceType:I

    .line 54
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->spellCorrectionType:I

    .line 55
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->isBuildingBlock:Ljava/lang/Boolean;

    .line 56
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->annotationType:I

    .line 57
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->subsourceType:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->cachedSize:I

    .line 59
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 93
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->position:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->position:Ljava/lang/Integer;

    .line 96
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->creationTime:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 99
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->creationTime:Ljava/lang/Long;

    .line 100
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->numCharactersSaved:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 103
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->numCharactersSaved:Ljava/lang/Integer;

    .line 104
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_2
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->sourceType:I

    if-eq v1, v4, :cond_3

    .line 107
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->sourceType:I

    .line 108
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_3
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->spellCorrectionType:I

    if-eq v1, v4, :cond_4

    .line 111
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->spellCorrectionType:I

    .line 112
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->isBuildingBlock:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 115
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->isBuildingBlock:Ljava/lang/Boolean;

    .line 116
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_5
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->annotationType:I

    if-eq v1, v4, :cond_6

    .line 119
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->annotationType:I

    .line 120
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_6
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->subsourceType:I

    if-eq v1, v4, :cond_7

    .line 123
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->subsourceType:I

    .line 124
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_7
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 135
    sparse-switch v0, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    :sswitch_0
    return-object p0

    .line 145
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->position:Ljava/lang/Integer;

    goto :goto_0

    .line 149
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->creationTime:Ljava/lang/Long;

    goto :goto_0

    .line 153
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->numCharactersSaved:Ljava/lang/Integer;

    goto :goto_0

    .line 157
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 158
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->sourceType:I

    goto :goto_0

    .line 176
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 177
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 181
    :pswitch_1
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->spellCorrectionType:I

    goto :goto_0

    .line 187
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->isBuildingBlock:Ljava/lang/Boolean;

    goto :goto_0

    .line 191
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 192
    packed-switch v0, :pswitch_data_2

    :pswitch_2
    goto :goto_0

    .line 524
    :pswitch_3
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->annotationType:I

    goto :goto_0

    .line 530
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 531
    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 542
    :pswitch_4
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->subsourceType:I

    goto :goto_0

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 177
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 192
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 531
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v4, -0x80000000

    .line 64
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->position:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->position:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->creationTime:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->creationTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->numCharactersSaved:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 71
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->numCharactersSaved:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 73
    :cond_2
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->sourceType:I

    if-eq v0, v4, :cond_3

    .line 74
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->sourceType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 76
    :cond_3
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->spellCorrectionType:I

    if-eq v0, v4, :cond_4

    .line 77
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->spellCorrectionType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->isBuildingBlock:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 80
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->isBuildingBlock:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 82
    :cond_5
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->annotationType:I

    if-eq v0, v4, :cond_6

    .line 83
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->annotationType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 85
    :cond_6
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->subsourceType:I

    if-eq v0, v4, :cond_7

    .line 86
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;->subsourceType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 88
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 89
    return-void
.end method
