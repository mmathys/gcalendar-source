.class public final Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DirectoryProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Directory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;",
        ">;"
    }
.end annotation


# instance fields
.field public countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

.field public locale:Ljava/lang/String;

.field public religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 156
    invoke-virtual {p0}, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->clear()Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    .line 157
    return-void
.end method

.method public static parseFrom([B)Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    invoke-direct {v0}, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->emptyArray()[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    .line 161
    invoke-static {}, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;->emptyArray()[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    .line 162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->locale:Ljava/lang/String;

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 164
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->cachedSize:I

    .line 165
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 196
    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 197
    :goto_0
    iget-object v3, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    aget-object v3, v3, v0

    .line 199
    if-eqz v3, :cond_0

    .line 200
    const/4 v4, 0x1

    .line 201
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 206
    :goto_1
    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 207
    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    aget-object v2, v2, v1

    .line 208
    if-eqz v2, :cond_3

    .line 209
    const/4 v3, 0x2

    .line 210
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 206
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 214
    :cond_4
    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->locale:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 215
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->locale:Ljava/lang/String;

    .line 216
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 226
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 227
    sparse-switch v0, :sswitch_data_0

    .line 231
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    :sswitch_0
    return-object p0

    .line 237
    :sswitch_1
    const/16 v0, 0xa

    .line 238
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 239
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    if-nez v0, :cond_2

    move v0, v1

    .line 240
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    .line 242
    if-eqz v0, :cond_1

    .line 243
    iget-object v3, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 246
    new-instance v3, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    invoke-direct {v3}, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;-><init>()V

    aput-object v3, v2, v0

    .line 247
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 248
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    array-length v0, v0

    goto :goto_1

    .line 251
    :cond_3
    new-instance v3, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    invoke-direct {v3}, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;-><init>()V

    aput-object v3, v2, v0

    .line 252
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 253
    iput-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    goto :goto_0

    .line 257
    :sswitch_2
    const/16 v0, 0x12

    .line 258
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 259
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    if-nez v0, :cond_5

    move v0, v1

    .line 260
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    .line 262
    if-eqz v0, :cond_4

    .line 263
    iget-object v3, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 266
    new-instance v3, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    invoke-direct {v3}, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;-><init>()V

    aput-object v3, v2, v0

    .line 267
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 268
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    array-length v0, v0

    goto :goto_3

    .line 271
    :cond_6
    new-instance v3, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    invoke-direct {v3}, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;-><init>()V

    aput-object v3, v2, v0

    .line 272
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 273
    iput-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    goto/16 :goto_0

    .line 277
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->locale:Ljava/lang/String;

    goto/16 :goto_0

    .line 227
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
    .line 127
    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 172
    :goto_0
    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->countryHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    aget-object v2, v2, v0

    .line 174
    if-eqz v2, :cond_0

    .line 175
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 172
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 180
    :goto_1
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->religionHoliday:[Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$DirectoryEntry;

    aget-object v0, v0, v1

    .line 182
    if-eqz v0, :cond_2

    .line 183
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 180
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->locale:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 188
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/calendar/v2/libs/proto/nano/DirectoryProto$Directory;->locale:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 190
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 191
    return-void
.end method
