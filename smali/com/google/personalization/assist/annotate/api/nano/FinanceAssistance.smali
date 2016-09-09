.class public final Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "FinanceAssistance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;",
        ">;"
    }
.end annotation


# instance fields
.field public actionText:Ljava/lang/String;

.field public change:Ljava/lang/String;

.field public changeDbl:D

.field public changePercent:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public disclaimerText:Ljava/lang/String;

.field public disclaimerUrl:Ljava/lang/String;

.field public exchange:Ljava/lang/String;

.field public financeUrl:Ljava/lang/String;

.field public fullName:Ljava/lang/String;

.field public lastPrice:Ljava/lang/String;

.field public lastPriceDbl:D

.field public lastPriceTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->clear()Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    .line 69
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->symbol:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->fullName:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->currency:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPrice:Ljava/lang/String;

    .line 76
    iput-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceDbl:D

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->change:Ljava/lang/String;

    .line 78
    iput-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->changeDbl:D

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->changePercent:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->exchange:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->disclaimerUrl:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->disclaimerText:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->financeUrl:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->actionText:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->cachedSize:I

    .line 88
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 143
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->symbol:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->symbol:Ljava/lang/String;

    .line 146
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->fullName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->fullName:Ljava/lang/String;

    .line 150
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->currency:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->currency:Ljava/lang/String;

    .line 154
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPrice:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 157
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPrice:Ljava/lang/String;

    .line 158
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->change:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 161
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->change:Ljava/lang/String;

    .line 162
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->changePercent:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 165
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->changePercent:Ljava/lang/String;

    .line 166
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->exchange:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 169
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->exchange:Ljava/lang/String;

    .line 170
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->disclaimerUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 173
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->disclaimerUrl:Ljava/lang/String;

    .line 174
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_7
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_8

    .line 177
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 178
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 180
    :cond_8
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->disclaimerText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 181
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->disclaimerText:Ljava/lang/String;

    .line 182
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    :cond_9
    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceDbl:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 185
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_a

    .line 186
    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceDbl:D

    .line 187
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_a
    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->changeDbl:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 190
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    .line 191
    const/16 v1, 0xc

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->changeDbl:D

    .line 192
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_b
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->financeUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 195
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->financeUrl:Ljava/lang/String;

    .line 196
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    :cond_c
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->actionText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 199
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->actionText:Ljava/lang/String;

    .line 200
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    :cond_d
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 211
    sparse-switch v0, :sswitch_data_0

    .line 215
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    :sswitch_0
    return-object p0

    .line 221
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->symbol:Ljava/lang/String;

    goto :goto_0

    .line 225
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->fullName:Ljava/lang/String;

    goto :goto_0

    .line 229
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->currency:Ljava/lang/String;

    goto :goto_0

    .line 233
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPrice:Ljava/lang/String;

    goto :goto_0

    .line 237
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->change:Ljava/lang/String;

    goto :goto_0

    .line 241
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->changePercent:Ljava/lang/String;

    goto :goto_0

    .line 245
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->exchange:Ljava/lang/String;

    goto :goto_0

    .line 249
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->disclaimerUrl:Ljava/lang/String;

    goto :goto_0

    .line 253
    :sswitch_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 260
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->disclaimerText:Ljava/lang/String;

    goto :goto_0

    .line 264
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceDbl:D

    goto :goto_0

    .line 268
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->changeDbl:D

    goto :goto_0

    .line 272
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->financeUrl:Ljava/lang/String;

    goto :goto_0

    .line 276
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->actionText:Ljava/lang/String;

    goto :goto_0

    .line 211
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x59 -> :sswitch_b
        0x61 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 94
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->symbol:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->symbol:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->fullName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->currency:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPrice:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPrice:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->change:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 107
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->change:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->changePercent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 110
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->changePercent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->exchange:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 113
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->exchange:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 115
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->disclaimerUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 116
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->disclaimerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 118
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_8

    .line 119
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 121
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->disclaimerText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 122
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->disclaimerText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 124
    :cond_9
    iget-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceDbl:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 125
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    .line 126
    const/16 v0, 0xb

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->lastPriceDbl:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 128
    :cond_a
    iget-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->changeDbl:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 129
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 130
    const/16 v0, 0xc

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->changeDbl:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 132
    :cond_b
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->financeUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 133
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->financeUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 135
    :cond_c
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->actionText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 136
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;->actionText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 138
    :cond_d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 139
    return-void
.end method
