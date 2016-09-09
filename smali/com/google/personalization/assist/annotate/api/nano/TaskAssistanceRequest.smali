.class public final Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TaskAssistanceRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public clientType:I

.field public emailAddress:Ljava/lang/String;

.field public requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

.field public snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

.field public weekdays:Lcom/google/caribou/tasks/nano/Weekdays;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->clear()Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;

    .line 42
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->clientType:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->emailAddress:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    .line 49
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    .line 50
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->cachedSize:I

    .line 52
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 83
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v1

    .line 84
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 85
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    aget-object v2, v2, v0

    .line 87
    if-eqz v2, :cond_0

    .line 88
    const/4 v3, 0x1

    .line 89
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->clientType:I

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x2

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->clientType:I

    .line 95
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->emailAddress:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 98
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->emailAddress:Ljava/lang/String;

    .line 99
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    if-eqz v0, :cond_4

    .line 102
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    .line 103
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    if-eqz v0, :cond_5

    .line 106
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    .line 107
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v0

    add-int/2addr v1, v0

    .line 109
    :cond_5
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 118
    sparse-switch v0, :sswitch_data_0

    .line 122
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    :sswitch_0
    return-object p0

    .line 128
    :sswitch_1
    const/16 v0, 0xa

    .line 129
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 130
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    if-nez v0, :cond_2

    move v0, v1

    .line 131
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    .line 133
    if-eqz v0, :cond_1

    .line 134
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 137
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;-><init>()V

    aput-object v3, v2, v0

    .line 138
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 139
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    array-length v0, v0

    goto :goto_1

    .line 142
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;-><init>()V

    aput-object v3, v2, v0

    .line 143
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 144
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    goto :goto_0

    .line 148
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 149
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->clientType:I

    goto :goto_0

    .line 164
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->emailAddress:Ljava/lang/String;

    goto :goto_0

    .line 168
    :sswitch_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    if-nez v0, :cond_4

    .line 169
    new-instance v0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    invoke-direct {v0}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 175
    :sswitch_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    if-nez v0, :cond_5

    .line 176
    new-instance v0, Lcom/google/caribou/tasks/nano/Weekdays;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/Weekdays;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 149
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;

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
    .line 58
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 59
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->requestData:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    aget-object v1, v1, v0

    .line 61
    if-eqz v1, :cond_0

    .line 62
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->clientType:I

    if-eqz v0, :cond_2

    .line 67
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->clientType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->emailAddress:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    if-eqz v0, :cond_4

    .line 73
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    if-eqz v0, :cond_5

    .line 76
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistanceRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 78
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 79
    return-void
.end method
