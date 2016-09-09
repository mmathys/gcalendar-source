.class public final Lcom/google/personalization/assist/annotate/api/nano/Action;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/Action;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/Action;


# instance fields
.field public actionType:I

.field public callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

.field public emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

.field public hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

.field public setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

.field public smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

.field public title:Ljava/lang/String;

.field public viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

.field public watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/Action;->clear()Lcom/google/personalization/assist/annotate/api/nano/Action;

    .line 54
    return-void
.end method

.method public static emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/Action;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/Action;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/Action;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/personalization/assist/annotate/api/nano/Action;

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/Action;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/Action;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/Action;

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
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/Action;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->actionType:I

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->title:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    .line 60
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    .line 61
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    .line 62
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    .line 63
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    .line 64
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    .line 65
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    .line 66
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->cachedSize:I

    .line 68
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 106
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 107
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->actionType:I

    if-eqz v1, :cond_0

    .line 108
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->actionType:I

    .line 109
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->title:Ljava/lang/String;

    .line 113
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    if-eqz v1, :cond_2

    .line 116
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    .line 117
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    if-eqz v1, :cond_3

    .line 120
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    .line 121
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    if-eqz v1, :cond_4

    .line 124
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    .line 125
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    if-eqz v1, :cond_5

    .line 128
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    .line 129
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    if-eqz v1, :cond_6

    .line 132
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    .line 133
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    if-eqz v1, :cond_7

    .line 136
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    .line 137
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_7
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    if-eqz v1, :cond_8

    .line 140
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    .line 141
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 152
    sparse-switch v0, :sswitch_data_0

    .line 156
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    :sswitch_0
    return-object p0

    .line 162
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 163
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->actionType:I

    goto :goto_0

    .line 180
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->title:Ljava/lang/String;

    goto :goto_0

    .line 184
    :sswitch_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/CallAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 191
    :sswitch_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    if-nez v0, :cond_2

    .line 192
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 198
    :sswitch_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    if-nez v0, :cond_3

    .line 199
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/SmsAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 205
    :sswitch_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    if-nez v0, :cond_4

    .line 206
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 212
    :sswitch_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    if-nez v0, :cond_5

    .line 213
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 219
    :sswitch_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    if-nez v0, :cond_6

    .line 220
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 226
    :sswitch_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    if-nez v0, :cond_7

    .line 227
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    .line 229
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 152
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/Action;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Action;

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
    .line 74
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->actionType:I

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->actionType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    if-eqz v0, :cond_2

    .line 81
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    if-eqz v0, :cond_3

    .line 84
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    if-eqz v0, :cond_4

    .line 87
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    if-eqz v0, :cond_5

    .line 90
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    if-eqz v0, :cond_6

    .line 93
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    if-eqz v0, :cond_7

    .line 96
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 98
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    if-eqz v0, :cond_8

    .line 99
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Action;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 101
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 102
    return-void
.end method
