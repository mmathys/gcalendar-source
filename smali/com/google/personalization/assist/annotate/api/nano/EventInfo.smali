.class public final Lcom/google/personalization/assist/annotate/api/nano/EventInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "EventInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/EventInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->title:Ljava/lang/String;

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->cachedSize:I

    .line 34
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->title:Ljava/lang/String;

    .line 53
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-eqz v1, :cond_1

    .line 56
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    .line 57
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/EventInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 68
    sparse-switch v0, :sswitch_data_0

    .line 72
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :sswitch_0
    return-object p0

    .line 78
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->title:Ljava/lang/String;

    goto :goto_0

    .line 82
    :sswitch_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Annotation;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 68
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/EventInfo;

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
    .line 39
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/EventInfo;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 45
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 46
    return-void
.end method
