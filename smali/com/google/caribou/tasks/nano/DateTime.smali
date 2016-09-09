.class public final Lcom/google/caribou/tasks/nano/DateTime;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/caribou/tasks/nano/DateTime$Time;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/caribou/tasks/nano/DateTime;",
        ">;"
    }
.end annotation


# instance fields
.field public absoluteTimeMs:J

.field public allDay:Z

.field public dateRange:I

.field public day:I

.field public month:I

.field public period:I

.field public time:Lcom/google/caribou/tasks/nano/DateTime$Time;

.field public unspecifiedFutureTime:Z

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 167
    invoke-virtual {p0}, Lcom/google/caribou/tasks/nano/DateTime;->clear()Lcom/google/caribou/tasks/nano/DateTime;

    .line 168
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/nano/DateTime;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 171
    iput v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->year:I

    .line 172
    iput v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->month:I

    .line 173
    iput v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->day:I

    .line 174
    iput-object v3, p0, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    .line 175
    iput v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->period:I

    .line 176
    iput v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->dateRange:I

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->absoluteTimeMs:J

    .line 178
    iput-boolean v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->unspecifiedFutureTime:Z

    .line 179
    iput-boolean v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->allDay:Z

    .line 180
    iput-object v3, p0, Lcom/google/caribou/tasks/nano/DateTime;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->cachedSize:I

    .line 182
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 220
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 221
    iget v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->year:I

    if-eqz v1, :cond_0

    .line 222
    iget v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->year:I

    .line 223
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_0
    iget v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->month:I

    if-eqz v1, :cond_1

    .line 226
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->month:I

    .line 227
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_1
    iget v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->day:I

    if-eqz v1, :cond_2

    .line 230
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->day:I

    .line 231
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    if-eqz v1, :cond_3

    .line 234
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    .line 235
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_3
    iget v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->period:I

    if-eq v1, v3, :cond_4

    .line 238
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->period:I

    .line 239
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_4
    iget v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->dateRange:I

    if-eq v1, v3, :cond_5

    .line 242
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->dateRange:I

    .line 243
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_5
    iget-wide v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->absoluteTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 246
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->absoluteTimeMs:J

    .line 247
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_6
    iget-boolean v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->unspecifiedFutureTime:Z

    if-eqz v1, :cond_7

    .line 250
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->unspecifiedFutureTime:Z

    .line 251
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    :cond_7
    iget-boolean v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->allDay:Z

    if-eqz v1, :cond_8

    .line 254
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->allDay:Z

    .line 255
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 257
    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/nano/DateTime;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 266
    sparse-switch v0, :sswitch_data_0

    .line 270
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    :sswitch_0
    return-object p0

    .line 276
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->year:I

    goto :goto_0

    .line 280
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->month:I

    goto :goto_0

    .line 284
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->day:I

    goto :goto_0

    .line 288
    :sswitch_4
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Lcom/google/caribou/tasks/nano/DateTime$Time;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/DateTime$Time;-><init>()V

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 295
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 296
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 301
    :pswitch_0
    iput v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->period:I

    goto :goto_0

    .line 307
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 308
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 310
    :pswitch_1
    iput v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->dateRange:I

    goto :goto_0

    .line 316
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->absoluteTimeMs:J

    goto :goto_0

    .line 320
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->unspecifiedFutureTime:Z

    goto :goto_0

    .line 324
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->allDay:Z

    goto :goto_0

    .line 266
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x39 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 308
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
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
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/nano/DateTime;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/nano/DateTime;

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
    const/4 v2, 0x1

    .line 188
    iget v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->year:I

    if-eqz v0, :cond_0

    .line 189
    iget v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->year:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 191
    :cond_0
    iget v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->month:I

    if-eqz v0, :cond_1

    .line 192
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->month:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 194
    :cond_1
    iget v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->day:I

    if-eqz v0, :cond_2

    .line 195
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->day:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    if-eqz v0, :cond_3

    .line 198
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->time:Lcom/google/caribou/tasks/nano/DateTime$Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 200
    :cond_3
    iget v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->period:I

    if-eq v0, v2, :cond_4

    .line 201
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->period:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 203
    :cond_4
    iget v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->dateRange:I

    if-eq v0, v2, :cond_5

    .line 204
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->dateRange:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 206
    :cond_5
    iget-wide v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->absoluteTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 207
    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/google/caribou/tasks/nano/DateTime;->absoluteTimeMs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 209
    :cond_6
    iget-boolean v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->unspecifiedFutureTime:Z

    if-eqz v0, :cond_7

    .line 210
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->unspecifiedFutureTime:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 212
    :cond_7
    iget-boolean v0, p0, Lcom/google/caribou/tasks/nano/DateTime;->allDay:Z

    if-eqz v0, :cond_8

    .line 213
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/google/caribou/tasks/nano/DateTime;->allDay:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 215
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 216
    return-void
.end method
