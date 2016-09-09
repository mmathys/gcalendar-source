.class public final Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "OmittedAttendee.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;


# instance fields
.field public attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

.field public reason:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 39
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->reason:I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->cachedSize:I

    .line 41
    return-void
.end method

.method public static emptyArray()[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    sput-object v0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

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
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-eqz v1, :cond_0

    .line 59
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    .line 60
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_0
    iget v1, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->reason:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 63
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->reason:I

    .line 64
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 75
    sparse-switch v0, :sswitch_data_0

    .line 79
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :sswitch_0
    return-object p0

    .line 85
    :sswitch_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-direct {v0}, Lcom/google/calendar/suggest/v2/nano/Attendee;-><init>()V

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 92
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 93
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->reason:I

    goto :goto_0

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 93
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
    invoke-virtual {p0, p1}, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;

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
    .line 46
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->attendee:Lcom/google/calendar/suggest/v2/nano/Attendee;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 49
    :cond_0
    iget v0, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->reason:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 50
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/calendar/suggest/v2/nano/OmittedAttendee;->reason:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 52
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 53
    return-void
.end method
