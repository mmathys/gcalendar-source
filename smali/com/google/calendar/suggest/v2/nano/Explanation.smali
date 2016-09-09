.class public final Lcom/google/calendar/suggest/v2/nano/Explanation;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Explanation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/suggest/v2/nano/Explanation;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/calendar/suggest/v2/nano/Explanation;


# instance fields
.field public attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

.field public conflictType:I

.field public conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 42
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictType:I

    .line 43
    invoke-static {}, Lcom/google/calendar/suggest/v2/nano/Event;->emptyArray()[Lcom/google/calendar/suggest/v2/nano/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->cachedSize:I

    .line 45
    return-void
.end method

.method public static emptyArray()[Lcom/google/calendar/suggest/v2/nano/Explanation;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/Explanation;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/Explanation;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/suggest/v2/nano/Explanation;

    sput-object v0, Lcom/google/calendar/suggest/v2/nano/Explanation;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/Explanation;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/Explanation;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 69
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-eqz v1, :cond_0

    .line 71
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    .line 72
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_0
    iget v1, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictType:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 75
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictType:I

    .line 76
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 79
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 80
    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    aget-object v2, v2, v0

    .line 81
    if-eqz v2, :cond_2

    .line 82
    const/4 v3, 0x3

    .line 83
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 79
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 87
    :cond_4
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/Explanation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 96
    sparse-switch v0, :sswitch_data_0

    .line 100
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    :sswitch_0
    return-object p0

    .line 106
    :sswitch_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-direct {v0}, Lcom/google/calendar/suggest/v2/nano/Attendee;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 113
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 114
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 118
    :pswitch_0
    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictType:I

    goto :goto_0

    .line 124
    :sswitch_3
    const/16 v0, 0x1a

    .line 125
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 126
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    if-nez v0, :cond_3

    move v0, v1

    .line 127
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/calendar/suggest/v2/nano/Event;

    .line 129
    if-eqz v0, :cond_2

    .line 130
    iget-object v3, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 133
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/Event;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/Event;-><init>()V

    aput-object v3, v2, v0

    .line 134
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 135
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    array-length v0, v0

    goto :goto_1

    .line 138
    :cond_4
    new-instance v3, Lcom/google/calendar/suggest/v2/nano/Event;

    invoke-direct {v3}, Lcom/google/calendar/suggest/v2/nano/Event;-><init>()V

    aput-object v3, v2, v0

    .line 139
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 140
    iput-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    .line 114
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/calendar/suggest/v2/nano/Explanation;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/Explanation;

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
    .line 50
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 53
    :cond_0
    iget v0, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictType:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 54
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 57
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 58
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Explanation;->conflictingEvents:[Lcom/google/calendar/suggest/v2/nano/Event;

    aget-object v1, v1, v0

    .line 59
    if-eqz v1, :cond_2

    .line 60
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 57
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 65
    return-void
.end method
