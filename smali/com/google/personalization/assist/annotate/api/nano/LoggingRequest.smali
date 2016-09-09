.class public final Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "LoggingRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public annotationHint:Ljava/lang/String;

.field public clientType:I

.field public country:Ljava/lang/String;

.field public deviceType:I

.field public dismissedAssistance:Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;

.field public hasAssistance:Ljava/lang/Boolean;

.field public language:Ljava/lang/String;

.field public numCharactersTyped:Ljava/lang/Integer;

.field public suggestionClicked:Ljava/lang/Boolean;

.field public taskSave:Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

.field public taskString:Ljava/lang/String;

.field public taskStringLength:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 62
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->clientType:I

    .line 63
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->deviceType:I

    .line 64
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->language:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->country:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->annotationHint:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->suggestionClicked:Ljava/lang/Boolean;

    .line 68
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskStringLength:Ljava/lang/Integer;

    .line 69
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->numCharactersTyped:Ljava/lang/Integer;

    .line 70
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->hasAssistance:Ljava/lang/Boolean;

    .line 71
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskString:Ljava/lang/String;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->cachedSize:I

    .line 73
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 119
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->annotationHint:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 121
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->annotationHint:Ljava/lang/String;

    .line 122
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->suggestionClicked:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 125
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->suggestionClicked:Ljava/lang/Boolean;

    .line 126
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskStringLength:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 129
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskStringLength:Ljava/lang/Integer;

    .line 130
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->numCharactersTyped:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 133
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->numCharactersTyped:Ljava/lang/Integer;

    .line 134
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :cond_3
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->clientType:I

    if-eq v1, v3, :cond_4

    .line 137
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->clientType:I

    .line 138
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_4
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->deviceType:I

    if-eq v1, v3, :cond_5

    .line 141
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->deviceType:I

    .line 142
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->hasAssistance:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 145
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->hasAssistance:Ljava/lang/Boolean;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskString:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 149
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskString:Ljava/lang/String;

    .line 150
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_7
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->language:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 153
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->language:Ljava/lang/String;

    .line 154
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_8
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->country:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 157
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->country:Ljava/lang/String;

    .line 158
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_9
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->dismissedAssistance:Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;

    if-eqz v1, :cond_a

    .line 161
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->dismissedAssistance:Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;

    .line 162
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_a
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskSave:Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

    if-eqz v1, :cond_b

    .line 165
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskSave:Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

    .line 166
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_b
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 177
    sparse-switch v0, :sswitch_data_0

    .line 181
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :sswitch_0
    return-object p0

    .line 187
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->annotationHint:Ljava/lang/String;

    goto :goto_0

    .line 191
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->suggestionClicked:Ljava/lang/Boolean;

    goto :goto_0

    .line 195
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskStringLength:Ljava/lang/Integer;

    goto :goto_0

    .line 199
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->numCharactersTyped:Ljava/lang/Integer;

    goto :goto_0

    .line 203
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 204
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 213
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->clientType:I

    goto :goto_0

    .line 219
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 220
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 228
    :pswitch_1
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->deviceType:I

    goto :goto_0

    .line 234
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->hasAssistance:Ljava/lang/Boolean;

    goto :goto_0

    .line 238
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskString:Ljava/lang/String;

    goto :goto_0

    .line 242
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->language:Ljava/lang/String;

    goto :goto_0

    .line 246
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->country:Ljava/lang/String;

    goto :goto_0

    .line 250
    :sswitch_b
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->dismissedAssistance:Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;

    if-nez v0, :cond_1

    .line 251
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->dismissedAssistance:Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->dismissedAssistance:Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 257
    :sswitch_c
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskSave:Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

    if-nez v0, :cond_2

    .line 258
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/TaskSave;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskSave:Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskSave:Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch

    .line 204
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
    .end packed-switch

    .line 220
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;

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
    const/high16 v2, -0x80000000

    .line 78
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->annotationHint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->annotationHint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->suggestionClicked:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->suggestionClicked:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskStringLength:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 85
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskStringLength:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->numCharactersTyped:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 88
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->numCharactersTyped:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 90
    :cond_3
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->clientType:I

    if-eq v0, v2, :cond_4

    .line 91
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->clientType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 93
    :cond_4
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->deviceType:I

    if-eq v0, v2, :cond_5

    .line 94
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->deviceType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->hasAssistance:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 97
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->hasAssistance:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 99
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskString:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 100
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->language:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 103
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->language:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 105
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->country:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 106
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->country:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 108
    :cond_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->dismissedAssistance:Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;

    if-eqz v0, :cond_a

    .line 109
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->dismissedAssistance:Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 111
    :cond_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskSave:Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

    if-eqz v0, :cond_b

    .line 112
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/LoggingRequest;->taskSave:Lcom/google/personalization/assist/annotate/api/nano/TaskSave;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 114
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 115
    return-void
.end method
