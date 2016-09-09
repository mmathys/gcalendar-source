.class public final Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "CalendarAssistance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;",
        ">;"
    }
.end annotation


# instance fields
.field public attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

.field public description:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public urlText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->clear()Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    .line 42
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;
    .locals 1

    .prologue
    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->title:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->description:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->url:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->urlText:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->cachedSize:I

    .line 52
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 83
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->title:Ljava/lang/String;

    .line 86
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->description:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->description:Ljava/lang/String;

    .line 90
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->url:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 93
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->url:Ljava/lang/String;

    .line 94
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->urlText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 97
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->urlText:Ljava/lang/String;

    .line 98
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 101
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 102
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    aget-object v2, v2, v0

    .line 103
    if-eqz v2, :cond_4

    .line 104
    const/4 v3, 0x5

    .line 105
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 101
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 109
    :cond_6
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->title:Ljava/lang/String;

    goto :goto_0

    .line 132
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->description:Ljava/lang/String;

    goto :goto_0

    .line 136
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->url:Ljava/lang/String;

    goto :goto_0

    .line 140
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->urlText:Ljava/lang/String;

    goto :goto_0

    .line 144
    :sswitch_5
    const/16 v0, 0x2a

    .line 145
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 146
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-nez v0, :cond_2

    move v0, v1

    .line 147
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    .line 149
    if-eqz v0, :cond_1

    .line 150
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 153
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;-><init>()V

    aput-object v3, v2, v0

    .line 154
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 155
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v0, v0

    goto :goto_1

    .line 158
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;-><init>()V

    aput-object v3, v2, v0

    .line 159
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 160
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

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
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->description:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->url:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->urlText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->urlText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 71
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 72
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;->attendee:[Lcom/google/personalization/assist/annotate/api/nano/EmailAddress;

    aget-object v1, v1, v0

    .line 73
    if-eqz v1, :cond_4

    .line 74
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 71
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 79
    return-void
.end method
