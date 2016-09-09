.class public final Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AnnotatedSuggestRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

.field public annotationHint:Ljava/lang/String;

.field public clientCapabilities:Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;

.field public clientEventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

.field public clientType:I

.field public conversationId:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public deviceType:I

.field public emailAddress:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

.field public numSuggestions:Ljava/lang/Integer;

.field public previousItems:Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;

.field public query:Ljava/lang/String;

.field public restrictedType:[I

.field public sessionId:Ljava/lang/String;

.field public snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

.field public suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

.field public suggestionType:I

.field public timezone:Ljava/lang/String;

.field public useBuildingBlock:Ljava/lang/Boolean;

.field public weekdays:Lcom/google/caribou/tasks/nano/Weekdays;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 92
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->query:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->language:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->country:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotationHint:Ljava/lang/String;

    .line 96
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientType:I

    .line 97
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->deviceType:I

    .line 98
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->timezone:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->numSuggestions:Ljava/lang/Integer;

    .line 100
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->sessionId:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->conversationId:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->useBuildingBlock:Ljava/lang/Boolean;

    .line 103
    iput v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionType:I

    .line 104
    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->emailAddress:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->cachedSize:I

    .line 107
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/high16 v4, -0x80000000

    .line 185
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 186
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->query:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 187
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->query:Ljava/lang/String;

    .line 188
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->language:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 191
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->language:Ljava/lang/String;

    .line 192
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotationHint:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 195
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotationHint:Ljava/lang/String;

    .line 196
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 198
    :cond_2
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->country:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 199
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->country:Ljava/lang/String;

    .line 200
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 202
    :cond_3
    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientType:I

    if-eq v2, v4, :cond_4

    .line 203
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientType:I

    .line 204
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 206
    :cond_4
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    if-eqz v2, :cond_5

    .line 207
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    .line 208
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 210
    :cond_5
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->numSuggestions:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 211
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->numSuggestions:Ljava/lang/Integer;

    .line 212
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 214
    :cond_6
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->sessionId:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 215
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->sessionId:Ljava/lang/String;

    .line 216
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 218
    :cond_7
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    if-eqz v2, :cond_8

    .line 219
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    .line 220
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 222
    :cond_8
    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->deviceType:I

    if-eq v2, v4, :cond_9

    .line 223
    const/16 v2, 0xa

    iget v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->deviceType:I

    .line 224
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 226
    :cond_9
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->conversationId:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 227
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->conversationId:Ljava/lang/String;

    .line 228
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 230
    :cond_a
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->useBuildingBlock:Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    .line 231
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->useBuildingBlock:Ljava/lang/Boolean;

    .line 232
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 234
    :cond_b
    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionType:I

    if-eq v2, v4, :cond_c

    .line 235
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionType:I

    .line 236
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 238
    :cond_c
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-eqz v2, :cond_d

    .line 239
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    .line 240
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 242
    :cond_d
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->timezone:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 243
    const/16 v2, 0xf

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->timezone:Ljava/lang/String;

    .line 244
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 246
    :cond_e
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientEventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    if-eqz v2, :cond_f

    .line 247
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientEventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    .line 248
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 250
    :cond_f
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->emailAddress:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 251
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->emailAddress:Ljava/lang/String;

    .line 252
    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 254
    :cond_10
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    array-length v2, v2

    if-lez v2, :cond_12

    move v2, v1

    .line 256
    :goto_0
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    array-length v3, v3

    if-ge v1, v3, :cond_11

    .line 257
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    aget v3, v3, v1

    .line 259
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_11
    add-int/2addr v0, v2

    .line 262
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 264
    :cond_12
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    if-eqz v1, :cond_13

    .line 265
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    .line 266
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 268
    :cond_13
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    if-eqz v1, :cond_14

    .line 269
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    .line 270
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_14
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientCapabilities:Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;

    if-eqz v1, :cond_15

    .line 273
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientCapabilities:Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;

    .line 274
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_15
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->previousItems:Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;

    if-eqz v1, :cond_16

    .line 277
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->previousItems:Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;

    .line 278
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    :cond_16
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 288
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 289
    sparse-switch v0, :sswitch_data_0

    .line 293
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    :sswitch_0
    return-object p0

    .line 299
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->query:Ljava/lang/String;

    goto :goto_0

    .line 303
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->language:Ljava/lang/String;

    goto :goto_0

    .line 307
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotationHint:Ljava/lang/String;

    goto :goto_0

    .line 311
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->country:Ljava/lang/String;

    goto :goto_0

    .line 315
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 316
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 325
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientType:I

    goto :goto_0

    .line 331
    :sswitch_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    if-nez v0, :cond_1

    .line 332
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 338
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->numSuggestions:Ljava/lang/Integer;

    goto :goto_0

    .line 342
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->sessionId:Ljava/lang/String;

    goto :goto_0

    .line 346
    :sswitch_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    if-nez v0, :cond_2

    .line 347
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 353
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 354
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 362
    :pswitch_1
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->deviceType:I

    goto :goto_0

    .line 368
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->conversationId:Ljava/lang/String;

    goto :goto_0

    .line 372
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->useBuildingBlock:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 376
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 377
    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 381
    :pswitch_2
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionType:I

    goto/16 :goto_0

    .line 387
    :sswitch_e
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-nez v0, :cond_3

    .line 388
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Annotation;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 394
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->timezone:Ljava/lang/String;

    goto/16 :goto_0

    .line 398
    :sswitch_10
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientEventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    if-nez v0, :cond_4

    .line 399
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/EventTime;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientEventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    .line 401
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientEventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 405
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->emailAddress:Ljava/lang/String;

    goto/16 :goto_0

    .line 409
    :sswitch_12
    const/16 v0, 0x90

    .line 410
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v4

    .line 411
    new-array v5, v4, [I

    move v3, v2

    move v1, v2

    .line 413
    :goto_1
    if-ge v3, v4, :cond_6

    .line 414
    if-eqz v3, :cond_5

    .line 415
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 417
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    .line 418
    packed-switch v6, :pswitch_data_3

    :pswitch_3
    move v0, v1

    .line 413
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 750
    :pswitch_4
    add-int/lit8 v0, v1, 0x1

    aput v6, v5, v1

    goto :goto_2

    .line 754
    :cond_6
    if-eqz v1, :cond_0

    .line 755
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    if-nez v0, :cond_7

    move v0, v2

    .line 756
    :goto_3
    if-nez v0, :cond_8

    array-length v3, v5

    if-ne v1, v3, :cond_8

    .line 757
    iput-object v5, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    goto/16 :goto_0

    .line 755
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    array-length v0, v0

    goto :goto_3

    .line 759
    :cond_8
    add-int v3, v0, v1

    new-array v3, v3, [I

    .line 760
    if-eqz v0, :cond_9

    .line 761
    iget-object v4, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    invoke-static {v4, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 763
    :cond_9
    invoke-static {v5, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    iput-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    goto/16 :goto_0

    .line 770
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 771
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 774
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v0, v2

    .line 775
    :goto_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_a

    .line 776
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    packed-switch v4, :pswitch_data_4

    :pswitch_5
    goto :goto_4

    .line 1108
    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1112
    :cond_a
    if-eqz v0, :cond_e

    .line 1113
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1114
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    if-nez v1, :cond_c

    move v1, v2

    .line 1115
    :goto_5
    add-int/2addr v0, v1

    new-array v4, v0, [I

    .line 1116
    if-eqz v1, :cond_b

    .line 1117
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1119
    :cond_b
    :goto_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v0

    if-lez v0, :cond_d

    .line 1120
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 1121
    packed-switch v5, :pswitch_data_5

    :pswitch_7
    goto :goto_6

    .line 1453
    :pswitch_8
    add-int/lit8 v0, v1, 0x1

    aput v5, v4, v1

    move v1, v0

    goto :goto_6

    .line 1114
    :cond_c
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    array-length v1, v1

    goto :goto_5

    .line 1457
    :cond_d
    iput-object v4, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    .line 1459
    :cond_e
    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 1463
    :sswitch_14
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    if-nez v0, :cond_f

    .line 1464
    new-instance v0, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    invoke-direct {v0}, Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    .line 1466
    :cond_f
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1470
    :sswitch_15
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    if-nez v0, :cond_10

    .line 1471
    new-instance v0, Lcom/google/caribou/tasks/nano/Weekdays;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/Weekdays;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    .line 1473
    :cond_10
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1477
    :sswitch_16
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientCapabilities:Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;

    if-nez v0, :cond_11

    .line 1478
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientCapabilities:Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;

    .line 1480
    :cond_11
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientCapabilities:Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 1484
    :sswitch_17
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->previousItems:Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;

    if-nez v0, :cond_12

    .line 1485
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->previousItems:Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;

    .line 1487
    :cond_12
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->previousItems:Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x90 -> :sswitch_12
        0x92 -> :sswitch_13
        0x9a -> :sswitch_14
        0xa2 -> :sswitch_15
        0xaa -> :sswitch_16
        0xb2 -> :sswitch_17
    .end sparse-switch

    .line 316
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

    .line 354
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

    .line 377
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 418
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 776
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 1121
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;

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

    .line 112
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->query:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->query:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->language:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 116
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->language:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotationHint:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 119
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotationHint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->country:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 122
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->country:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 124
    :cond_3
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientType:I

    if-eq v0, v2, :cond_4

    .line 125
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    if-eqz v0, :cond_5

    .line 128
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->location:Lcom/google/personalization/assist/annotate/api/nano/GeoLocation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->numSuggestions:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 131
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->numSuggestions:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 133
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 134
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 136
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    if-eqz v0, :cond_8

    .line 137
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionClick:Lcom/google/personalization/assist/annotate/api/nano/SuggestionClick;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 139
    :cond_8
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->deviceType:I

    if-eq v0, v2, :cond_9

    .line 140
    const/16 v0, 0xa

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->deviceType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 142
    :cond_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->conversationId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 143
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 145
    :cond_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->useBuildingBlock:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 146
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->useBuildingBlock:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 148
    :cond_b
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionType:I

    if-eq v0, v2, :cond_c

    .line 149
    const/16 v0, 0xd

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->suggestionType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 151
    :cond_c
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    if-eqz v0, :cond_d

    .line 152
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->annotation:Lcom/google/personalization/assist/annotate/api/nano/Annotation;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 154
    :cond_d
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->timezone:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 155
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->timezone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 157
    :cond_e
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientEventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    if-eqz v0, :cond_f

    .line 158
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientEventTime:Lcom/google/personalization/assist/annotate/api/nano/EventTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 160
    :cond_f
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->emailAddress:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 161
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 163
    :cond_10
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    array-length v0, v0

    if-lez v0, :cond_11

    .line 164
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 165
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->restrictedType:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_11
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    if-eqz v0, :cond_12

    .line 169
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->snoozePresets:Lcom/google/caribou/tasks/service/nano/CustomizedSnoozePreset;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 171
    :cond_12
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    if-eqz v0, :cond_13

    .line 172
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->weekdays:Lcom/google/caribou/tasks/nano/Weekdays;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 174
    :cond_13
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientCapabilities:Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;

    if-eqz v0, :cond_14

    .line 175
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->clientCapabilities:Lcom/google/personalization/assist/annotate/api/nano/ClientCapabilities;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 177
    :cond_14
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->previousItems:Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;

    if-eqz v0, :cond_15

    .line 178
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/AnnotatedSuggestRequest;->previousItems:Lcom/google/personalization/assist/annotate/api/nano/PreviousItems;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 180
    :cond_15
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 181
    return-void
.end method
