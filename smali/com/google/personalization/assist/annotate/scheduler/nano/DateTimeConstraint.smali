.class public final Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "DateTimeConstraint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;


# instance fields
.field public constraintType:I

.field public datetime:Lcom/google/caribou/tasks/nano/DateTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->clear()Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    .line 41
    return-void
.end method

.method public static emptyArray()[Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->_emptyArray:[Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    if-nez v0, :cond_1

    .line 21
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->_emptyArray:[Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    sput-object v0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->_emptyArray:[Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->_emptyArray:[Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    .line 45
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->datetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 46
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->cachedSize:I

    .line 48
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 66
    iget v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    .line 68
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->datetime:Lcom/google/caribou/tasks/nano/DateTime;

    if-eqz v1, :cond_1

    .line 71
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->datetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 72
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 83
    sparse-switch v0, :sswitch_data_0

    .line 87
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :sswitch_0
    return-object p0

    .line 93
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 94
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 101
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    goto :goto_0

    .line 107
    :sswitch_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->datetime:Lcom/google/caribou/tasks/nano/DateTime;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lcom/google/caribou/tasks/nano/DateTime;

    invoke-direct {v0}, Lcom/google/caribou/tasks/nano/DateTime;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->datetime:Lcom/google/caribou/tasks/nano/DateTime;

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->datetime:Lcom/google/caribou/tasks/nano/DateTime;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 83
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;

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
    .line 54
    iget v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->constraintType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->datetime:Lcom/google/caribou/tasks/nano/DateTime;

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/scheduler/nano/DateTimeConstraint;->datetime:Lcom/google/caribou/tasks/nano/DateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 60
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 61
    return-void
.end method
