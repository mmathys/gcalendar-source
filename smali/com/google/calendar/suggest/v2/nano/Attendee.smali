.class public final Lcom/google/calendar/suggest/v2/nano/Attendee;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Attendee.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/calendar/suggest/v2/nano/Attendee;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/calendar/suggest/v2/nano/Attendee;


# instance fields
.field public email:Ljava/lang/String;

.field public organizer:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Attendee;->organizer:Ljava/lang/Boolean;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/calendar/suggest/v2/nano/Attendee;->cachedSize:I

    .line 35
    return-void
.end method

.method public static emptyArray()[Lcom/google/calendar/suggest/v2/nano/Attendee;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/calendar/suggest/v2/nano/Attendee;

    sput-object v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/calendar/suggest/v2/nano/Attendee;->_emptyArray:[Lcom/google/calendar/suggest/v2/nano/Attendee;

    return-object v0

    .line 18
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
    .line 51
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    .line 54
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Attendee;->organizer:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 57
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/calendar/suggest/v2/nano/Attendee;->organizer:Ljava/lang/Boolean;

    .line 58
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/Attendee;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 69
    sparse-switch v0, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :sswitch_0
    return-object p0

    .line 79
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    goto :goto_0

    .line 83
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Attendee;->organizer:Ljava/lang/Boolean;

    goto :goto_0

    .line 69
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/calendar/suggest/v2/nano/Attendee;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/calendar/suggest/v2/nano/Attendee;

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
    .line 40
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Attendee;->email:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/suggest/v2/nano/Attendee;->organizer:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 44
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/calendar/suggest/v2/nano/Attendee;->organizer:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 46
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 47
    return-void
.end method
