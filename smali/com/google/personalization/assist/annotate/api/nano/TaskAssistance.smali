.class public final Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TaskAssistance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;


# instance fields
.field public action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

.field public assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

.field public dueLocation:Lcom/google/personalization/assist/annotate/api/nano/Alias;

.field public dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

.field public expirationTimeMillis:J

.field public grammarRuleType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->clear()Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    .line 45
    return-void
.end method

.method public static emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

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
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    .line 49
    invoke-static {}, Lcom/google/personalization/assist/annotate/api/nano/Action;->emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/Action;

    move-result-object v0

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->expirationTimeMillis:J

    .line 51
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 52
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueLocation:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    .line 53
    const/16 v0, 0x55

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->grammarRuleType:I

    .line 54
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->cachedSize:I

    .line 56
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 96
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 97
    :goto_0
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    aget-object v3, v3, v0

    .line 99
    if-eqz v3, :cond_0

    .line 100
    const/4 v4, 0x1

    .line 101
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 106
    :goto_1
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 107
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    aget-object v2, v2, v1

    .line 108
    if-eqz v2, :cond_3

    .line 109
    const/4 v3, 0x2

    .line 110
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    .line 106
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_4
    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->expirationTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 115
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->expirationTimeMillis:J

    .line 116
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v1, :cond_6

    .line 119
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 120
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueLocation:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    if-eqz v1, :cond_7

    .line 123
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueLocation:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    .line 124
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_7
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->grammarRuleType:I

    const/16 v2, 0x55

    if-eq v1, v2, :cond_8

    .line 127
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->grammarRuleType:I

    .line 128
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    :cond_8
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 139
    sparse-switch v0, :sswitch_data_0

    .line 143
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :sswitch_0
    return-object p0

    .line 149
    :sswitch_1
    const/16 v0, 0xa

    .line 150
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 151
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    if-nez v0, :cond_2

    move v0, v1

    .line 152
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    .line 154
    if-eqz v0, :cond_1

    .line 155
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 158
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/Assistance;-><init>()V

    aput-object v3, v2, v0

    .line 159
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 160
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    array-length v0, v0

    goto :goto_1

    .line 163
    :cond_3
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/Assistance;-><init>()V

    aput-object v3, v2, v0

    .line 164
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 165
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    goto :goto_0

    .line 169
    :sswitch_2
    const/16 v0, 0x12

    .line 170
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 171
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    if-nez v0, :cond_5

    move v0, v1

    .line 172
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/personalization/assist/annotate/api/nano/Action;

    .line 174
    if-eqz v0, :cond_4

    .line 175
    iget-object v3, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 178
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/Action;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/Action;-><init>()V

    aput-object v3, v2, v0

    .line 179
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 180
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    array-length v0, v0

    goto :goto_3

    .line 183
    :cond_6
    new-instance v3, Lcom/google/personalization/assist/annotate/api/nano/Action;

    invoke-direct {v3}, Lcom/google/personalization/assist/annotate/api/nano/Action;-><init>()V

    aput-object v3, v2, v0

    .line 184
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 185
    iput-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    goto/16 :goto_0

    .line 189
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->expirationTimeMillis:J

    goto/16 :goto_0

    .line 193
    :sswitch_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-nez v0, :cond_7

    .line 194
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Time;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    .line 196
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 200
    :sswitch_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueLocation:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    if-nez v0, :cond_8

    .line 201
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/Alias;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/Alias;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueLocation:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    .line 203
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueLocation:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 207
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 208
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 339
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->grammarRuleType:I

    goto/16 :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->assistance:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    aget-object v2, v2, v0

    .line 65
    if-eqz v2, :cond_0

    .line 66
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 71
    :goto_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->action:[Lcom/google/personalization/assist/annotate/api/nano/Action;

    aget-object v0, v0, v1

    .line 73
    if-eqz v0, :cond_2

    .line 74
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 71
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    :cond_3
    iget-wide v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->expirationTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 79
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->expirationTimeMillis:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    if-eqz v0, :cond_5

    .line 82
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueTime:Lcom/google/personalization/assist/annotate/api/nano/Time;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 84
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueLocation:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    if-eqz v0, :cond_6

    .line 85
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->dueLocation:Lcom/google/personalization/assist/annotate/api/nano/Alias;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 87
    :cond_6
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->grammarRuleType:I

    const/16 v1, 0x55

    if-eq v0, v1, :cond_7

    .line 88
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;->grammarRuleType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 90
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 91
    return-void
.end method
