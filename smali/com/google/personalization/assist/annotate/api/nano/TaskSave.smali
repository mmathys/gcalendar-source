.class public final Lcom/google/personalization/assist/annotate/api/nano/TaskSave;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TaskSave.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/TaskSave;",
        ">;"
    }
.end annotation


# instance fields
.field public annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

.field public annotationHint:Ljava/lang/String;

.field public hasAssistance:Ljava/lang/Boolean;

.field public numCharactersTyped:Ljava/lang/Integer;

.field public sessionId:Ljava/lang/String;

.field public suggestionClicked:Ljava/lang/Boolean;

.field public suggestionType:I

.field public taskString:Ljava/lang/String;

.field public taskStringLength:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotationHint:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionClicked:Ljava/lang/Boolean;

    .line 55
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskStringLength:Ljava/lang/Integer;

    .line 56
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->numCharactersTyped:Ljava/lang/Integer;

    .line 57
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->hasAssistance:Ljava/lang/Boolean;

    .line 58
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskString:Ljava/lang/String;

    .line 59
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionType:I

    .line 60
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->sessionId:Ljava/lang/String;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->cachedSize:I

    .line 62
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotationHint:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 101
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotationHint:Ljava/lang/String;

    .line 102
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionClicked:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 105
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionClicked:Ljava/lang/Boolean;

    .line 106
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskStringLength:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 109
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskStringLength:Ljava/lang/Integer;

    .line 110
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->numCharactersTyped:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 113
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->numCharactersTyped:Ljava/lang/Integer;

    .line 114
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->hasAssistance:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 117
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->hasAssistance:Ljava/lang/Boolean;

    .line 118
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskString:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 121
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskString:Ljava/lang/String;

    .line 122
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-eqz v1, :cond_6

    .line 125
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    .line 126
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_6
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionType:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_7

    .line 129
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionType:I

    .line 130
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_7
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->sessionId:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 133
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->sessionId:Ljava/lang/String;

    .line 134
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TaskSave;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 145
    sparse-switch v0, :sswitch_data_0

    .line 149
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :sswitch_0
    return-object p0

    .line 155
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotationHint:Ljava/lang/String;

    goto :goto_0

    .line 159
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionClicked:Ljava/lang/Boolean;

    goto :goto_0

    .line 163
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskStringLength:Ljava/lang/Integer;

    goto :goto_0

    .line 167
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->numCharactersTyped:Ljava/lang/Integer;

    goto :goto_0

    .line 171
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->hasAssistance:Ljava/lang/Boolean;

    goto :goto_0

    .line 175
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskString:Ljava/lang/String;

    goto :goto_0

    .line 179
    :sswitch_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-nez v0, :cond_1

    .line 180
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Annotation;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 186
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 187
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionType:I

    goto :goto_0

    .line 197
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->sessionId:Ljava/lang/String;

    goto :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

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
    .line 67
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotationHint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotationHint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionClicked:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionClicked:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskStringLength:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 74
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskStringLength:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->numCharactersTyped:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 77
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->numCharactersTyped:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->hasAssistance:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 80
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->hasAssistance:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskString:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 83
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->taskString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-eqz v0, :cond_6

    .line 86
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 88
    :cond_6
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionType:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    .line 89
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->suggestionType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 91
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 92
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 94
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 95
    return-void
.end method
