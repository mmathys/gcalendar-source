.class public final Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AndroidExperimentsExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;",
        ">;"
    }
.end annotation


# instance fields
.field public duration:Lcom/google/caribou/tasks/nano/Duration;

.field public flexSchedulingExperimentEnabled:Z

.field public schedulingCriteria:Lcom/google/caribou/tasks/nano/SchedulingCriteria;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->clear()Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

    .line 36
    return-void
.end method


# virtual methods
.method public clear()Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->duration:Lcom/google/caribou/tasks/nano/Duration;

    .line 40
    iput-object v1, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->schedulingCriteria:Lcom/google/caribou/tasks/nano/SchedulingCriteria;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->flexSchedulingExperimentEnabled:Z

    .line 42
    iput-object v1, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->cachedSize:I

    .line 44
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->duration:Lcom/google/caribou/tasks/nano/Duration;

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->duration:Lcom/google/caribou/tasks/nano/Duration;

    .line 67
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_0
    iget-boolean v1, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->flexSchedulingExperimentEnabled:Z

    if-eqz v1, :cond_1

    .line 70
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->flexSchedulingExperimentEnabled:Z

    .line 71
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->schedulingCriteria:Lcom/google/caribou/tasks/nano/SchedulingCriteria;

    if-eqz v1, :cond_2

    .line 74
    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->schedulingCriteria:Lcom/google/caribou/tasks/nano/SchedulingCriteria;

    .line 75
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 86
    sparse-switch v0, :sswitch_data_0

    .line 90
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :sswitch_0
    return-object p0

    .line 96
    :sswitch_1
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->duration:Lcom/google/caribou/tasks/nano/Duration;

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/google/caribou/tasks/nano/Duration;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/Duration;-><init>()V

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->duration:Lcom/google/caribou/tasks/nano/Duration;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->duration:Lcom/google/caribou/tasks/nano/Duration;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 103
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->flexSchedulingExperimentEnabled:Z

    goto :goto_0

    .line 107
    :sswitch_3
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->schedulingCriteria:Lcom/google/caribou/tasks/nano/SchedulingCriteria;

    if-nez v0, :cond_2

    .line 108
    new-instance v0, Lcom/google/caribou/tasks/nano/SchedulingCriteria;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/SchedulingCriteria;-><init>()V

    iput-object v0, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->schedulingCriteria:Lcom/google/caribou/tasks/nano/SchedulingCriteria;

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->schedulingCriteria:Lcom/google/caribou/tasks/nano/SchedulingCriteria;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x18 -> :sswitch_2
        0xda -> :sswitch_3
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
    invoke-virtual {p0, p1}, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;

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
    .line 50
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->duration:Lcom/google/caribou/tasks/nano/Duration;

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->duration:Lcom/google/caribou/tasks/nano/Duration;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->flexSchedulingExperimentEnabled:Z

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->flexSchedulingExperimentEnabled:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->schedulingCriteria:Lcom/google/caribou/tasks/nano/SchedulingCriteria;

    if-eqz v0, :cond_2

    .line 57
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/caribou/tasks/nano/AndroidExperimentsExtension;->schedulingCriteria:Lcom/google/caribou/tasks/nano/SchedulingCriteria;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 59
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 60
    return-void
.end method
