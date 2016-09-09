.class public final Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ScheduleRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public currentDatetime:Lcom/google/caribou/tasks/nano/DateTime;

.field public intention:Lcom/google/personalization/timesuggest/nano/Intention;

.field public timeConstraint:Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;

.field public userSettings:Lcom/google/personalization/assist/annotate/scheduler/nano/UserSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->cachedSize:I

    .line 39
    return-void
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->intention:Lcom/google/personalization/timesuggest/nano/Intention;

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->intention:Lcom/google/personalization/timesuggest/nano/Intention;

    .line 64
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->currentDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    if-eqz v1, :cond_1

    .line 67
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->currentDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 68
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->timeConstraint:Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;

    if-eqz v1, :cond_2

    .line 71
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->timeConstraint:Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;

    .line 72
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->userSettings:Lcom/google/personalization/assist/annotate/scheduler/nano/UserSettings;

    if-eqz v1, :cond_3

    .line 75
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->userSettings:Lcom/google/personalization/assist/annotate/scheduler/nano/UserSettings;

    .line 76
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 87
    sparse-switch v0, :sswitch_data_0

    .line 91
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :sswitch_0
    return-object p0

    .line 97
    :sswitch_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->intention:Lcom/google/personalization/timesuggest/nano/Intention;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/google/personalization/timesuggest/nano/Intention;

    invoke-direct {v0}, Lcom/google/personalization/timesuggest/nano/Intention;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->intention:Lcom/google/personalization/timesuggest/nano/Intention;

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->intention:Lcom/google/personalization/timesuggest/nano/Intention;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 104
    :sswitch_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->currentDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    if-nez v0, :cond_2

    .line 105
    new-instance v0, Lcom/google/caribou/tasks/nano/DateTime;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/DateTime;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->currentDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->currentDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 111
    :sswitch_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->timeConstraint:Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;

    if-nez v0, :cond_3

    .line 112
    new-instance v0, Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->timeConstraint:Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->timeConstraint:Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 118
    :sswitch_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->userSettings:Lcom/google/personalization/assist/annotate/scheduler/nano/UserSettings;

    if-nez v0, :cond_4

    .line 119
    new-instance v0, Lcom/google/personalization/assist/annotate/scheduler/nano/UserSettings;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/scheduler/nano/UserSettings;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->userSettings:Lcom/google/personalization/assist/annotate/scheduler/nano/UserSettings;

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->userSettings:Lcom/google/personalization/assist/annotate/scheduler/nano/UserSettings;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;

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
    .line 44
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->intention:Lcom/google/personalization/timesuggest/nano/Intention;

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->intention:Lcom/google/personalization/timesuggest/nano/Intention;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->currentDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    if-eqz v0, :cond_1

    .line 48
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->currentDatetime:Lcom/google/caribou/tasks/nano/DateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->timeConstraint:Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;

    if-eqz v0, :cond_2

    .line 51
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->timeConstraint:Lcom/google/personalization/assist/annotate/scheduler/nano/SchedulingConstraint;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->userSettings:Lcom/google/personalization/assist/annotate/scheduler/nano/UserSettings;

    if-eqz v0, :cond_3

    .line 54
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/ScheduleRequest;->userSettings:Lcom/google/personalization/assist/annotate/scheduler/nano/UserSettings;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 56
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 57
    return-void
.end method
