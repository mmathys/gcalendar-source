.class public final Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "WeatherAssistance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;",
        ">;"
    }
.end annotation


# instance fields
.field public chanceOfPrecipitation:I

.field public currentCondition:I

.field public currentConditionDesc:Ljava/lang/String;

.field public currentTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

.field public currentUpdateTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

.field public forecastStartDate:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public forecastText:Ljava/lang/String;

.field public forecastUrl:Ljava/lang/String;

.field public humidity:I

.field public location:Ljava/lang/String;

.field public windDirection:I

.field public windSpeedMph:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->clear()Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    .line 66
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->location:Ljava/lang/String;

    .line 70
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentCondition:I

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentConditionDesc:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    .line 73
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->humidity:I

    .line 74
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->chanceOfPrecipitation:I

    .line 75
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->windDirection:I

    .line 76
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->windSpeedMph:I

    .line 77
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentUpdateTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 78
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastStartDate:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 79
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastUrl:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastText:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->cachedSize:I

    .line 84
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 139
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->location:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->location:Ljava/lang/String;

    .line 142
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_0
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentCondition:I

    if-eqz v1, :cond_1

    .line 145
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentCondition:I

    .line 146
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    if-eqz v1, :cond_2

    .line 149
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    .line 150
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_2
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->humidity:I

    if-eqz v1, :cond_3

    .line 153
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->humidity:I

    .line 154
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_3
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->chanceOfPrecipitation:I

    if-eqz v1, :cond_4

    .line 157
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->chanceOfPrecipitation:I

    .line 158
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_4
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->windDirection:I

    if-eqz v1, :cond_5

    .line 161
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->windDirection:I

    .line 162
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_5
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->windSpeedMph:I

    if-eqz v1, :cond_6

    .line 165
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->windSpeedMph:I

    .line 166
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentUpdateTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_7

    .line 169
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentUpdateTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 170
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    :cond_7
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastStartDate:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_8

    .line 173
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastStartDate:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 174
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 176
    :cond_8
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    array-length v1, v1

    if-lez v1, :cond_b

    .line 177
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 178
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    aget-object v2, v2, v0

    .line 179
    if-eqz v2, :cond_9

    .line 180
    const/16 v3, 0xa

    .line 181
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 177
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    move v0, v1

    .line 185
    :cond_b
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 186
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastUrl:Ljava/lang/String;

    .line 187
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_c
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 190
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastText:Ljava/lang/String;

    .line 191
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    :cond_d
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentConditionDesc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 194
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentConditionDesc:Ljava/lang/String;

    .line 195
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    :cond_e
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 205
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 206
    sparse-switch v0, :sswitch_data_0

    .line 210
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :sswitch_0
    return-object p0

    .line 216
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->location:Ljava/lang/String;

    goto :goto_0

    .line 220
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 221
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 238
    :sswitch_3
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentCondition:I

    goto :goto_0

    .line 244
    :sswitch_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    if-nez v0, :cond_1

    .line 245
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Temperature;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 251
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->humidity:I

    goto :goto_0

    .line 255
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->chanceOfPrecipitation:I

    goto :goto_0

    .line 259
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->windDirection:I

    goto :goto_0

    .line 263
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->windSpeedMph:I

    goto :goto_0

    .line 267
    :sswitch_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentUpdateTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_2

    .line 268
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentUpdateTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentUpdateTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 274
    :sswitch_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastStartDate:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_3

    .line 275
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastStartDate:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastStartDate:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 281
    :sswitch_b
    const/16 v0, 0x52

    .line 282
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 283
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    if-nez v0, :cond_5

    move v0, v1

    .line 284
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    .line 286
    if-eqz v0, :cond_4

    .line 287
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 290
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;-><init>()V

    aput-object v3, v2, v0

    .line 291
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 292
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 283
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    array-length v0, v0

    goto :goto_1

    .line 295
    :cond_6
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;-><init>()V

    aput-object v3, v2, v0

    .line 296
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 297
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    goto/16 :goto_0

    .line 301
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 305
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastText:Ljava/lang/String;

    goto/16 :goto_0

    .line 309
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentConditionDesc:Ljava/lang/String;

    goto/16 :goto_0

    .line 206
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x28 -> :sswitch_6
        0x30 -> :sswitch_7
        0x38 -> :sswitch_8
        0x42 -> :sswitch_9
        0x4a -> :sswitch_a
        0x52 -> :sswitch_b
        0x5a -> :sswitch_c
        0x62 -> :sswitch_d
        0x6a -> :sswitch_e
    .end sparse-switch

    .line 221
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0xa -> :sswitch_3
        0x2f -> :sswitch_3
        0x55 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x5e -> :sswitch_3
        0x75 -> :sswitch_3
        0x8a -> :sswitch_3
        0x8b -> :sswitch_3
        0x91 -> :sswitch_3
        0x94 -> :sswitch_3
        0xa2 -> :sswitch_3
        0x102 -> :sswitch_3
        0x106 -> :sswitch_3
        0x123 -> :sswitch_3
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

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
    .line 90
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->location:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->location:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 93
    :cond_0
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentCondition:I

    if-eqz v0, :cond_1

    .line 94
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentCondition:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    if-eqz v0, :cond_2

    .line 97
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 99
    :cond_2
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->humidity:I

    if-eqz v0, :cond_3

    .line 100
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->humidity:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 102
    :cond_3
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->chanceOfPrecipitation:I

    if-eqz v0, :cond_4

    .line 103
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->chanceOfPrecipitation:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 105
    :cond_4
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->windDirection:I

    if-eqz v0, :cond_5

    .line 106
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->windDirection:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 108
    :cond_5
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->windSpeedMph:I

    if-eqz v0, :cond_6

    .line 109
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->windSpeedMph:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentUpdateTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_7

    .line 112
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentUpdateTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastStartDate:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_8

    .line 115
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastStartDate:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 117
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    array-length v0, v0

    if-lez v0, :cond_a

    .line 118
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    .line 119
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->dailyForecast:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    aget-object v1, v1, v0

    .line 120
    if-eqz v1, :cond_9

    .line 121
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 118
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 126
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 128
    :cond_b
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 129
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->forecastText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 131
    :cond_c
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentConditionDesc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 132
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;->currentConditionDesc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 134
    :cond_d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 135
    return-void
.end method
