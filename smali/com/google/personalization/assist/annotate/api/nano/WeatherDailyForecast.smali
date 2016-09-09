.class public final Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "WeatherDailyForecast.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;


# instance fields
.field public chanceOfPrecipitation:I

.field public condition:I

.field public conditionDesc:Ljava/lang/String;

.field public highTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

.field public lowTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->clear()Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    .line 42
    return-void
.end method

.method public static emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->condition:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->conditionDesc:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->highTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    .line 48
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->lowTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    .line 49
    iput v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->chanceOfPrecipitation:I

    .line 50
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->cachedSize:I

    .line 52
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 79
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->condition:I

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->condition:I

    .line 81
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->highTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    if-eqz v1, :cond_1

    .line 84
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->highTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    .line 85
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->lowTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    if-eqz v1, :cond_2

    .line 88
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->lowTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    .line 89
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_2
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->chanceOfPrecipitation:I

    if-eqz v1, :cond_3

    .line 92
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->chanceOfPrecipitation:I

    .line 93
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->conditionDesc:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 96
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->conditionDesc:Ljava/lang/String;

    .line 97
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 108
    sparse-switch v0, :sswitch_data_0

    .line 112
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    :sswitch_0
    return-object p0

    .line 118
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 119
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 136
    :sswitch_2
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->condition:I

    goto :goto_0

    .line 142
    :sswitch_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->highTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Temperature;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->highTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->highTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 149
    :sswitch_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->lowTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    if-nez v0, :cond_2

    .line 150
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Temperature;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->lowTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->lowTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 156
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->chanceOfPrecipitation:I

    goto :goto_0

    .line 160
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->conditionDesc:Ljava/lang/String;

    goto :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch

    .line 119
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0xa -> :sswitch_2
        0x2f -> :sswitch_2
        0x55 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x5e -> :sswitch_2
        0x75 -> :sswitch_2
        0x8a -> :sswitch_2
        0x8b -> :sswitch_2
        0x91 -> :sswitch_2
        0x94 -> :sswitch_2
        0xa2 -> :sswitch_2
        0x102 -> :sswitch_2
        0x106 -> :sswitch_2
        0x123 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;

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
    .line 58
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->condition:I

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->condition:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->highTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    if-eqz v0, :cond_1

    .line 62
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->highTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->lowTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    if-eqz v0, :cond_2

    .line 65
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->lowTemp:Lcom/google/personalization/assist/annotate/api/nano/Temperature;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 67
    :cond_2
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->chanceOfPrecipitation:I

    if-eqz v0, :cond_3

    .line 68
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->chanceOfPrecipitation:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->conditionDesc:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/WeatherDailyForecast;->conditionDesc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 73
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 74
    return-void
.end method
