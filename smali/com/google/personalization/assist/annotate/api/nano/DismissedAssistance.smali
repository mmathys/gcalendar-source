.class public final Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DismissedAssistance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;",
        ">;"
    }
.end annotation


# instance fields
.field public annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

.field public annotationHint:Ljava/lang/String;

.field public taskStringLength:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->annotationHint:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->taskStringLength:Ljava/lang/Integer;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->cachedSize:I

    .line 38
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->annotationHint:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->annotationHint:Ljava/lang/String;

    .line 60
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->taskStringLength:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 63
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->taskStringLength:Ljava/lang/Integer;

    .line 64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-eqz v1, :cond_2

    .line 67
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    .line 68
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
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

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->annotationHint:Ljava/lang/String;

    goto :goto_0

    .line 93
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->taskStringLength:Ljava/lang/Integer;

    goto :goto_0

    .line 97
    :sswitch_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Annotation;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;

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
    .line 43
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->annotationHint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->annotationHint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->taskStringLength:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 47
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->taskStringLength:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-eqz v0, :cond_2

    .line 50
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/DismissedAssistance;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 52
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 53
    return-void
.end method
