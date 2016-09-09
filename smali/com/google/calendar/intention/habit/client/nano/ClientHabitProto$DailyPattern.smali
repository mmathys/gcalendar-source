.class public final Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ClientHabitProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DailyPattern"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;",
        ">;"
    }
.end annotation


# instance fields
.field public afternoon:Z

.field public any:Z

.field public evening:Z

.field public morning:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 837
    invoke-virtual {p0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    .line 838
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 841
    iput-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->any:Z

    .line 842
    iput-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->morning:Z

    .line 843
    iput-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->afternoon:Z

    .line 844
    iput-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->evening:Z

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 846
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->cachedSize:I

    .line 847
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 870
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 871
    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->any:Z

    if-eqz v1, :cond_0

    .line 872
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->any:Z

    .line 873
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 875
    :cond_0
    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->morning:Z

    if-eqz v1, :cond_1

    .line 876
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->morning:Z

    .line 877
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 879
    :cond_1
    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->afternoon:Z

    if-eqz v1, :cond_2

    .line 880
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->afternoon:Z

    .line 881
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 883
    :cond_2
    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->evening:Z

    if-eqz v1, :cond_3

    .line 884
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->evening:Z

    .line 885
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 887
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 895
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 896
    sparse-switch v0, :sswitch_data_0

    .line 900
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    :sswitch_0
    return-object p0

    .line 906
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->any:Z

    goto :goto_0

    .line 910
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->morning:Z

    goto :goto_0

    .line 914
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->afternoon:Z

    goto :goto_0

    .line 918
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->evening:Z

    goto :goto_0

    .line 896
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 805
    invoke-virtual {p0, p1}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

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
    .line 853
    iget-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->any:Z

    if-eqz v0, :cond_0

    .line 854
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->any:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 856
    :cond_0
    iget-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->morning:Z

    if-eqz v0, :cond_1

    .line 857
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->morning:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 859
    :cond_1
    iget-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->afternoon:Z

    if-eqz v0, :cond_2

    .line 860
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->afternoon:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 862
    :cond_2
    iget-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->evening:Z

    if-eqz v0, :cond_3

    .line 863
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->evening:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 865
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 866
    return-void
.end method
