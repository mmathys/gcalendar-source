.class public final Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ClientHabitProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimePattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;",
        ">;"
    }
.end annotation


# instance fields
.field public dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 738
    invoke-virtual {p0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    .line 739
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 742
    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    .line 743
    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 744
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->cachedSize:I

    .line 745
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 759
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 760
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    if-eqz v1, :cond_0

    .line 761
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    .line 762
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 764
    :cond_0
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 772
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 773
    sparse-switch v0, :sswitch_data_0

    .line 777
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    :sswitch_0
    return-object p0

    .line 783
    :sswitch_1
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    if-nez v0, :cond_1

    .line 784
    new-instance v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    invoke-direct {v0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 773
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 715
    invoke-virtual {p0, p1}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

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
    .line 751
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    if-eqz v0, :cond_0

    .line 752
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 754
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 755
    return-void
.end method
