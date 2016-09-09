.class public final Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AssistanceRequestData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;


# instance fields
.field public annotationHint:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public currencyCode:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

.field public locationAlias:Lcom/google/personalization/assist/annotate/api/nano/Alias;

.field public query:Ljava/lang/String;

.field public scope:Lcom/google/personalization/assist/annotate/api/nano/AssistScope;

.field public timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->clear()Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    .line 54
    return-void
.end method

.method public static emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

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
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->query:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->annotationHint:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->timezone:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->language:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->country:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->currencyCode:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->locationAlias:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    .line 65
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->scope:Lcom/google/personalization/assist/annotate/api/nano/AssistScope;

    .line 66
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->cachedSize:I

    .line 68
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->query:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->query:Ljava/lang/String;

    .line 109
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->annotationHint:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->annotationHint:Ljava/lang/String;

    .line 113
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    if-eqz v1, :cond_2

    .line 116
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    .line 117
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->language:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 120
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->language:Ljava/lang/String;

    .line 121
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->country:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 124
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->country:Ljava/lang/String;

    .line 125
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->currencyCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 128
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->currencyCode:Ljava/lang/String;

    .line 129
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->locationAlias:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    if-eqz v1, :cond_6

    .line 132
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->locationAlias:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    .line 133
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->scope:Lcom/google/personalization/assist/annotate/api/nano/AssistScope;

    if-eqz v1, :cond_7

    .line 136
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->scope:Lcom/google/personalization/assist/annotate/api/nano/AssistScope;

    .line 137
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_7
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->timezone:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 140
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->timezone:Ljava/lang/String;

    .line 141
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 152
    sparse-switch v0, :sswitch_data_0

    .line 156
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :sswitch_0
    return-object p0

    .line 162
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->query:Ljava/lang/String;

    goto :goto_0

    .line 166
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->annotationHint:Ljava/lang/String;

    goto :goto_0

    .line 170
    :sswitch_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 177
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->language:Ljava/lang/String;

    goto :goto_0

    .line 181
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->country:Ljava/lang/String;

    goto :goto_0

    .line 185
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->currencyCode:Ljava/lang/String;

    goto :goto_0

    .line 189
    :sswitch_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->locationAlias:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    if-nez v0, :cond_2

    .line 190
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Alias;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Alias;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->locationAlias:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->locationAlias:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 196
    :sswitch_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->scope:Lcom/google/personalization/assist/annotate/api/nano/AssistScope;

    if-nez v0, :cond_3

    .line 197
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/AssistScope;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/AssistScope;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->scope:Lcom/google/personalization/assist/annotate/api/nano/AssistScope;

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->scope:Lcom/google/personalization/assist/annotate/api/nano/AssistScope;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 203
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->timezone:Ljava/lang/String;

    goto :goto_0

    .line 152
    nop

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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;

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
    .line 74
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->query:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->query:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->annotationHint:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->annotationHint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    if-eqz v0, :cond_2

    .line 81
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->language:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->language:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->country:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 87
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->country:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->currencyCode:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 90
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->locationAlias:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    if-eqz v0, :cond_6

    .line 93
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->locationAlias:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->scope:Lcom/google/personalization/assist/annotate/api/nano/AssistScope;

    if-eqz v0, :cond_7

    .line 96
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->scope:Lcom/google/personalization/assist/annotate/api/nano/AssistScope;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 98
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->timezone:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 99
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AssistanceRequestData;->timezone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 101
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 102
    return-void
.end method
