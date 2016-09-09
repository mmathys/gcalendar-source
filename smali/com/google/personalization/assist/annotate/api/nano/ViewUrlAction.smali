.class public final Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ViewUrlAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;",
        ">;"
    }
.end annotation


# instance fields
.field public actionDescription:Ljava/lang/String;

.field public actionText:Ljava/lang/String;

.field public ampUrl:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public driveId:Ljava/lang/String;

.field public driveMimeType:Ljava/lang/String;

.field public gplusProfilePhotoUrl:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

.field public name:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public webpageType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->clear()Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    .line 73
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;
    .locals 1

    .prologue
    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->title:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->url:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->name:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->description:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->imageUrl:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->source:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->driveId:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->driveMimeType:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/MobileLink;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionText:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionDescription:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->webpageType:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->gplusProfilePhotoUrl:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->ampUrl:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->cachedSize:I

    .line 92
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 150
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->title:Ljava/lang/String;

    .line 153
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->url:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->url:Ljava/lang/String;

    .line 157
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->name:Ljava/lang/String;

    .line 161
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->description:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 164
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->description:Ljava/lang/String;

    .line 165
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->imageUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 168
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->imageUrl:Ljava/lang/String;

    .line 169
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->source:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 172
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->source:Ljava/lang/String;

    .line 173
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->driveId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 176
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->driveId:Ljava/lang/String;

    .line 177
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->driveMimeType:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 180
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->driveMimeType:Ljava/lang/String;

    .line 181
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_7
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    array-length v1, v1

    if-lez v1, :cond_a

    .line 184
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 185
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    aget-object v2, v2, v0

    .line 186
    if-eqz v2, :cond_8

    .line 187
    const/16 v3, 0x9

    .line 188
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 184
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    move v0, v1

    .line 192
    :cond_a
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 193
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionText:Ljava/lang/String;

    .line 194
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    :cond_b
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionDescription:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 197
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionDescription:Ljava/lang/String;

    .line 198
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 200
    :cond_c
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->webpageType:I

    if-eqz v1, :cond_d

    .line 201
    const/16 v1, 0xc

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->webpageType:I

    .line 202
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_d
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->gplusProfilePhotoUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 205
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->gplusProfilePhotoUrl:Ljava/lang/String;

    .line 206
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 208
    :cond_e
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->ampUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 209
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->ampUrl:Ljava/lang/String;

    .line 210
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    :cond_f
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 220
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 221
    sparse-switch v0, :sswitch_data_0

    .line 225
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    :sswitch_0
    return-object p0

    .line 231
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->title:Ljava/lang/String;

    goto :goto_0

    .line 235
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->url:Ljava/lang/String;

    goto :goto_0

    .line 239
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->name:Ljava/lang/String;

    goto :goto_0

    .line 243
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->description:Ljava/lang/String;

    goto :goto_0

    .line 247
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->imageUrl:Ljava/lang/String;

    goto :goto_0

    .line 251
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->source:Ljava/lang/String;

    goto :goto_0

    .line 255
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->driveId:Ljava/lang/String;

    goto :goto_0

    .line 259
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->driveMimeType:Ljava/lang/String;

    goto :goto_0

    .line 263
    :sswitch_9
    const/16 v0, 0x4a

    .line 264
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 265
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    if-nez v0, :cond_2

    move v0, v1

    .line 266
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    .line 268
    if-eqz v0, :cond_1

    .line 269
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 272
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/MobileLink;-><init>()V

    aput-object v3, v2, v0

    .line 273
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 274
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    array-length v0, v0

    goto :goto_1

    .line 277
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/MobileLink;-><init>()V

    aput-object v3, v2, v0

    .line 278
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 279
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    goto/16 :goto_0

    .line 283
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionText:Ljava/lang/String;

    goto/16 :goto_0

    .line 287
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionDescription:Ljava/lang/String;

    goto/16 :goto_0

    .line 291
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 292
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 295
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->webpageType:I

    goto/16 :goto_0

    .line 301
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->gplusProfilePhotoUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 305
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->ampUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 221
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
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
    .end sparse-switch

    .line 292
    :pswitch_data_0
    .packed-switch 0x0
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

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
    .line 98
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->url:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->description:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 108
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->imageUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 111
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->source:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 114
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->driveId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 117
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->driveId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->driveMimeType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 120
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->driveMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 122
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 123
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    .line 124
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->mobileLink:[Lcom/google/personalization/assist/annotate/api/nano/MobileLink;

    aget-object v1, v1, v0

    .line 125
    if-eqz v1, :cond_8

    .line 126
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 123
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionText:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 131
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 133
    :cond_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionDescription:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 134
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->actionDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 136
    :cond_b
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->webpageType:I

    if-eqz v0, :cond_c

    .line 137
    const/16 v0, 0xc

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->webpageType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 139
    :cond_c
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->gplusProfilePhotoUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 140
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->gplusProfilePhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 142
    :cond_d
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->ampUrl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 143
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;->ampUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 145
    :cond_e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 146
    return-void
.end method
