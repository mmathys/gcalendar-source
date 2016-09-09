.class public final Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ClientHabitProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contract"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;",
        ">;"
    }
.end annotation


# instance fields
.field public durationMinutes:I

.field public interval:I

.field public numInstancesPerInterval:I

.field public timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

.field public untilMillisUtc:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 593
    invoke-virtual {p0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    .line 594
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 597
    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->durationMinutes:I

    .line 598
    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->interval:I

    .line 599
    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->numInstancesPerInterval:I

    .line 600
    iput-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    .line 601
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->untilMillisUtc:J

    .line 602
    iput-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 603
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->cachedSize:I

    .line 604
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 630
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 631
    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->durationMinutes:I

    if-eqz v1, :cond_0

    .line 632
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->durationMinutes:I

    .line 633
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 635
    :cond_0
    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->interval:I

    if-eqz v1, :cond_1

    .line 636
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->interval:I

    .line 637
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 639
    :cond_1
    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->numInstancesPerInterval:I

    if-eqz v1, :cond_2

    .line 640
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->numInstancesPerInterval:I

    .line 641
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 643
    :cond_2
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    if-eqz v1, :cond_3

    .line 644
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    .line 645
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 647
    :cond_3
    iget-wide v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->untilMillisUtc:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 648
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->untilMillisUtc:J

    .line 649
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 651
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 660
    sparse-switch v0, :sswitch_data_0

    .line 664
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    :sswitch_0
    return-object p0

    .line 670
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->durationMinutes:I

    goto :goto_0

    .line 674
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 675
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 679
    :pswitch_0
    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->interval:I

    goto :goto_0

    .line 685
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->numInstancesPerInterval:I

    goto :goto_0

    .line 689
    :sswitch_4
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    if-nez v0, :cond_1

    .line 690
    new-instance v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    invoke-direct {v0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 696
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->untilMillisUtc:J

    goto :goto_0

    .line 660
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .line 551
    invoke-virtual {p0, p1}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

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
    .line 610
    iget v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->durationMinutes:I

    if-eqz v0, :cond_0

    .line 611
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->durationMinutes:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 613
    :cond_0
    iget v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->interval:I

    if-eqz v0, :cond_1

    .line 614
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->interval:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 616
    :cond_1
    iget v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->numInstancesPerInterval:I

    if-eqz v0, :cond_2

    .line 617
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->numInstancesPerInterval:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    if-eqz v0, :cond_3

    .line 620
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 622
    :cond_3
    iget-wide v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->untilMillisUtc:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 623
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->untilMillisUtc:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 625
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 626
    return-void
.end method
