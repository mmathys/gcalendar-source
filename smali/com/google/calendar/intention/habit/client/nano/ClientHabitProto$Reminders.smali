.class public final Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ClientHabitProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reminders"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;",
        ">;"
    }
.end annotation


# instance fields
.field public enableFollowup:Z

.field public enableRecommit:Z

.field public reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

.field public useDefaultReminders:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 968
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 969
    invoke-virtual {p0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    .line 970
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->useDefaultReminders:Z

    .line 974
    invoke-static {}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->emptyArray()[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    .line 975
    iput-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableRecommit:Z

    .line 976
    iput-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableFollowup:Z

    .line 977
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 978
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->cachedSize:I

    .line 979
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1007
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 1008
    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->useDefaultReminders:Z

    if-eq v1, v2, :cond_0

    .line 1009
    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->useDefaultReminders:Z

    .line 1010
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1012
    :cond_0
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 1013
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1014
    iget-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    aget-object v2, v2, v0

    .line 1015
    if-eqz v2, :cond_1

    .line 1016
    const/4 v3, 0x2

    .line 1017
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1013
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1021
    :cond_3
    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableRecommit:Z

    if-eqz v1, :cond_4

    .line 1022
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableRecommit:Z

    .line 1023
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1025
    :cond_4
    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableFollowup:Z

    if-eqz v1, :cond_5

    .line 1026
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableFollowup:Z

    .line 1027
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1029
    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1037
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1038
    sparse-switch v0, :sswitch_data_0

    .line 1042
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    :sswitch_0
    return-object p0

    .line 1048
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->useDefaultReminders:Z

    goto :goto_0

    .line 1052
    :sswitch_2
    const/16 v0, 0x12

    .line 1053
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1054
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    if-nez v0, :cond_2

    move v0, v1

    .line 1055
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    .line 1057
    if-eqz v0, :cond_1

    .line 1058
    iget-object v3, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1060
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1061
    new-instance v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    invoke-direct {v3}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;-><init>()V

    aput-object v3, v2, v0

    .line 1062
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1063
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1060
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1054
    :cond_2
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    array-length v0, v0

    goto :goto_1

    .line 1066
    :cond_3
    new-instance v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    invoke-direct {v3}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;-><init>()V

    aput-object v3, v2, v0

    .line 1067
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 1068
    iput-object v2, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    goto :goto_0

    .line 1072
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableRecommit:Z

    goto :goto_0

    .line 1076
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableFollowup:Z

    goto :goto_0

    .line 1038
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 937
    invoke-virtual {p0, p1}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

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
    const/4 v1, 0x1

    .line 985
    iget-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->useDefaultReminders:Z

    if-eq v0, v1, :cond_0

    .line 986
    iget-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->useDefaultReminders:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 989
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 990
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    aget-object v1, v1, v0

    .line 991
    if-eqz v1, :cond_1

    .line 992
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 989
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_2
    iget-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableRecommit:Z

    if-eqz v0, :cond_3

    .line 997
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableRecommit:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 999
    :cond_3
    iget-boolean v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableFollowup:Z

    if-eqz v0, :cond_4

    .line 1000
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableFollowup:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1002
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1003
    return-void
.end method
