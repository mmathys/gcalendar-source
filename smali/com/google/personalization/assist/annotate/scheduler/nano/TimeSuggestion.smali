.class public final Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TimeSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field public experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

.field public suggestedDatetime:Lcom/google/caribou/tasks/nano/DateTime;

.field public suggestionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;->emptyArray()[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestionId:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->cachedSize:I

    .line 38
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 62
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestedDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestedDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 65
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 68
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    aget-object v2, v2, v0

    .line 70
    if-eqz v2, :cond_1

    .line 71
    const/4 v3, 0x2

    .line 72
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 68
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestionId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 77
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestionId:Ljava/lang/String;

    .line 78
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;
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
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestedDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcom/google/caribou/tasks/nano/DateTime;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/DateTime;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestedDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestedDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 106
    :sswitch_2
    const/16 v0, 0x12

    .line 107
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 108
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    if-nez v0, :cond_3

    move v0, v1

    .line 109
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    .line 111
    if-eqz v0, :cond_2

    .line 112
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 115
    new-instance v3, Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;-><init>()V

    aput-object v3, v2, v0

    .line 116
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 117
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 108
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    array-length v0, v0

    goto :goto_1

    .line 120
    :cond_4
    new-instance v3, Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;-><init>()V

    aput-object v3, v2, v0

    .line 121
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 122
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    goto :goto_0

    .line 126
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestionId:Ljava/lang/String;

    goto :goto_0

    .line 89
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;

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
    .line 43
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestedDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestedDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 47
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 48
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->experimentTreatments:[Lcom/google/personalization/assist/annotate/scheduler/nano/ExperimentTreatment;

    aget-object v1, v1, v0

    .line 49
    if-eqz v1, :cond_1

    .line 50
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 47
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestionId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 55
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/TimeSuggestion;->suggestionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 57
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 58
    return-void
.end method
