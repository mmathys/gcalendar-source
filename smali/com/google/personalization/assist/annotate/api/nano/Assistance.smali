.class public final Lcom/google/personalization/assist/annotate/api/nano/Assistance;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Assistance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/personalization/assist/annotate/api/nano/Assistance;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;


# instance fields
.field public billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

.field public calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

.field public callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

.field public contactDeadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/ContactDeadlineAssistance;

.field public contactSetDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/ContactSetDeadlineAction;

.field public deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

.field public emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

.field public eventAssistance:Lcom/google/personalization/assist/annotate/api/nano/EventAssistance;

.field public financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

.field public flightStatusAssistance:Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;

.field public hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

.field public localAssistance:Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;

.field public organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

.field public productAssistance:Lcom/google/personalization/assist/annotate/api/nano/ProductAssistance;

.field public recurringDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/RecurringDeadlineAction;

.field public returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

.field public setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

.field public setDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/SetDeadlineAction;

.field public smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

.field public trackPackageAction:Lcom/google/personalization/assist/annotate/api/nano/TrackPackageAction;

.field public userLocationType:I

.field public viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

.field public watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

.field public weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 98
    invoke-virtual {p0}, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->clear()Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    .line 99
    return-void
.end method

.method public static emptyArray()[Lcom/google/personalization/assist/annotate/api/nano/Assistance;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    sput-object v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->_emptyArray:[Lcom/google/personalization/assist/annotate/api/nano/Assistance;

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
.method public clear()Lcom/google/personalization/assist/annotate/api/nano/Assistance;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->productAssistance:Lcom/google/personalization/assist/annotate/api/nano/ProductAssistance;

    .line 103
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->localAssistance:Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;

    .line 104
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->flightStatusAssistance:Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;

    .line 105
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    .line 106
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    .line 107
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    .line 108
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->eventAssistance:Lcom/google/personalization/assist/annotate/api/nano/EventAssistance;

    .line 109
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    .line 110
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    .line 111
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    .line 112
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    .line 113
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactDeadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/ContactDeadlineAssistance;

    .line 114
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    .line 115
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    .line 116
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    .line 117
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    .line 118
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    .line 119
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/SetDeadlineAction;

    .line 120
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->recurringDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/RecurringDeadlineAction;

    .line 121
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactSetDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/ContactSetDeadlineAction;

    .line 122
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    .line 123
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    .line 124
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->trackPackageAction:Lcom/google/personalization/assist/annotate/api/nano/TrackPackageAction;

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->userLocationType:I

    .line 126
    iput-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->cachedSize:I

    .line 128
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 211
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 212
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->productAssistance:Lcom/google/personalization/assist/annotate/api/nano/ProductAssistance;

    if-eqz v1, :cond_0

    .line 213
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->productAssistance:Lcom/google/personalization/assist/annotate/api/nano/ProductAssistance;

    .line 214
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->localAssistance:Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;

    if-eqz v1, :cond_1

    .line 217
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->localAssistance:Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;

    .line 218
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->flightStatusAssistance:Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;

    if-eqz v1, :cond_2

    .line 221
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->flightStatusAssistance:Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;

    .line 222
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    if-eqz v1, :cond_3

    .line 225
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    .line 226
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_3
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    if-eqz v1, :cond_4

    .line 229
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    .line 230
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_4
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    if-eqz v1, :cond_5

    .line 233
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    .line 234
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_5
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->eventAssistance:Lcom/google/personalization/assist/annotate/api/nano/EventAssistance;

    if-eqz v1, :cond_6

    .line 237
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->eventAssistance:Lcom/google/personalization/assist/annotate/api/nano/EventAssistance;

    .line 238
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_6
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    if-eqz v1, :cond_7

    .line 241
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    .line 242
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_7
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    if-eqz v1, :cond_8

    .line 245
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    .line 246
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_8
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    if-eqz v1, :cond_9

    .line 249
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    .line 250
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    :cond_9
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    if-eqz v1, :cond_a

    .line 253
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    .line 254
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    :cond_a
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    if-eqz v1, :cond_b

    .line 257
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    .line 258
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 260
    :cond_b
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    if-eqz v1, :cond_c

    .line 261
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    .line 262
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 264
    :cond_c
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    if-eqz v1, :cond_d

    .line 265
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    .line 266
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 268
    :cond_d
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->trackPackageAction:Lcom/google/personalization/assist/annotate/api/nano/TrackPackageAction;

    if-eqz v1, :cond_e

    .line 269
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->trackPackageAction:Lcom/google/personalization/assist/annotate/api/nano/TrackPackageAction;

    .line 270
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_e
    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->userLocationType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    .line 273
    const/16 v1, 0x13

    iget v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->userLocationType:I

    .line 274
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_f
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    if-eqz v1, :cond_10

    .line 277
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    .line 278
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    :cond_10
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    if-eqz v1, :cond_11

    .line 281
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    .line 282
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    :cond_11
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    if-eqz v1, :cond_12

    .line 285
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    .line 286
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 288
    :cond_12
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    if-eqz v1, :cond_13

    .line 289
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    .line 290
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    :cond_13
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->recurringDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/RecurringDeadlineAction;

    if-eqz v1, :cond_14

    .line 293
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->recurringDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/RecurringDeadlineAction;

    .line 294
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    :cond_14
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/SetDeadlineAction;

    if-eqz v1, :cond_15

    .line 297
    const/16 v1, 0x19

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/SetDeadlineAction;

    .line 298
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 300
    :cond_15
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactDeadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/ContactDeadlineAssistance;

    if-eqz v1, :cond_16

    .line 301
    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactDeadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/ContactDeadlineAssistance;

    .line 302
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 304
    :cond_16
    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactSetDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/ContactSetDeadlineAction;

    if-eqz v1, :cond_17

    .line 305
    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactSetDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/ContactSetDeadlineAction;

    .line 306
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 308
    :cond_17
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Assistance;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 317
    sparse-switch v0, :sswitch_data_0

    .line 321
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    :sswitch_0
    return-object p0

    .line 327
    :sswitch_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->productAssistance:Lcom/google/personalization/assist/annotate/api/nano/ProductAssistance;

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/ProductAssistance;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/ProductAssistance;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->productAssistance:Lcom/google/personalization/assist/annotate/api/nano/ProductAssistance;

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->productAssistance:Lcom/google/personalization/assist/annotate/api/nano/ProductAssistance;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 334
    :sswitch_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->localAssistance:Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;

    if-nez v0, :cond_2

    .line 335
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->localAssistance:Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->localAssistance:Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 341
    :sswitch_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->flightStatusAssistance:Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;

    if-nez v0, :cond_3

    .line 342
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->flightStatusAssistance:Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->flightStatusAssistance:Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 348
    :sswitch_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    if-nez v0, :cond_4

    .line 349
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 355
    :sswitch_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    if-nez v0, :cond_5

    .line 356
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    .line 358
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 362
    :sswitch_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    if-nez v0, :cond_6

    .line 363
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    .line 365
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 369
    :sswitch_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->eventAssistance:Lcom/google/personalization/assist/annotate/api/nano/EventAssistance;

    if-nez v0, :cond_7

    .line 370
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/EventAssistance;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/EventAssistance;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->eventAssistance:Lcom/google/personalization/assist/annotate/api/nano/EventAssistance;

    .line 372
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->eventAssistance:Lcom/google/personalization/assist/annotate/api/nano/EventAssistance;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 376
    :sswitch_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    if-nez v0, :cond_8

    .line 377
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/CallAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    .line 379
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 383
    :sswitch_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    if-nez v0, :cond_9

    .line 384
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/EmailAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    .line 386
    :cond_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 390
    :sswitch_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    if-nez v0, :cond_a

    .line 391
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/SmsAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    .line 393
    :cond_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 397
    :sswitch_b
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    if-nez v0, :cond_b

    .line 398
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    .line 400
    :cond_b
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 404
    :sswitch_c
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    if-nez v0, :cond_c

    .line 405
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    .line 407
    :cond_c
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 411
    :sswitch_d
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    if-nez v0, :cond_d

    .line 412
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    .line 414
    :cond_d
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 418
    :sswitch_e
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    if-nez v0, :cond_e

    .line 419
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    .line 421
    :cond_e
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 425
    :sswitch_f
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->trackPackageAction:Lcom/google/personalization/assist/annotate/api/nano/TrackPackageAction;

    if-nez v0, :cond_f

    .line 426
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/TrackPackageAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/TrackPackageAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->trackPackageAction:Lcom/google/personalization/assist/annotate/api/nano/TrackPackageAction;

    .line 428
    :cond_f
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->trackPackageAction:Lcom/google/personalization/assist/annotate/api/nano/TrackPackageAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 432
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 433
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 440
    :pswitch_0
    iput v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->userLocationType:I

    goto/16 :goto_0

    .line 446
    :sswitch_11
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    if-nez v0, :cond_10

    .line 447
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    .line 449
    :cond_10
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 453
    :sswitch_12
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    if-nez v0, :cond_11

    .line 454
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    .line 456
    :cond_11
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 460
    :sswitch_13
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    if-nez v0, :cond_12

    .line 461
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    .line 463
    :cond_12
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 467
    :sswitch_14
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    if-nez v0, :cond_13

    .line 468
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    .line 470
    :cond_13
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 474
    :sswitch_15
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->recurringDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/RecurringDeadlineAction;

    if-nez v0, :cond_14

    .line 475
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/RecurringDeadlineAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/RecurringDeadlineAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->recurringDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/RecurringDeadlineAction;

    .line 477
    :cond_14
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->recurringDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/RecurringDeadlineAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 481
    :sswitch_16
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/SetDeadlineAction;

    if-nez v0, :cond_15

    .line 482
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/SetDeadlineAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/SetDeadlineAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/SetDeadlineAction;

    .line 484
    :cond_15
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/SetDeadlineAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 488
    :sswitch_17
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactDeadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/ContactDeadlineAssistance;

    if-nez v0, :cond_16

    .line 489
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/ContactDeadlineAssistance;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/ContactDeadlineAssistance;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactDeadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/ContactDeadlineAssistance;

    .line 491
    :cond_16
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactDeadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/ContactDeadlineAssistance;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 495
    :sswitch_18
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactSetDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/ContactSetDeadlineAction;

    if-nez v0, :cond_17

    .line 496
    new-instance v0, Lcom/google/personalization/assist/annotate/api/nano/ContactSetDeadlineAction;

    invoke-direct {v0}, Lcom/google/personalization/assist/annotate/api/nano/ContactSetDeadlineAction;-><init>()V

    iput-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactSetDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/ContactSetDeadlineAction;

    .line 498
    :cond_17
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactSetDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/ContactSetDeadlineAction;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 317
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1a -> :sswitch_1
        0x22 -> :sswitch_2
        0x2a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
        0x52 -> :sswitch_8
        0x5a -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x82 -> :sswitch_d
        0x8a -> :sswitch_e
        0x92 -> :sswitch_f
        0x98 -> :sswitch_10
        0xa2 -> :sswitch_11
        0xaa -> :sswitch_12
        0xb2 -> :sswitch_13
        0xba -> :sswitch_14
        0xc2 -> :sswitch_15
        0xca -> :sswitch_16
        0xd2 -> :sswitch_17
        0xda -> :sswitch_18
    .end sparse-switch

    .line 433
    :pswitch_data_0
    .packed-switch 0x1
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
    invoke-virtual {p0, p1}, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/personalization/assist/annotate/api/nano/Assistance;

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
    .line 134
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->productAssistance:Lcom/google/personalization/assist/annotate/api/nano/ProductAssistance;

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->productAssistance:Lcom/google/personalization/assist/annotate/api/nano/ProductAssistance;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->localAssistance:Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;

    if-eqz v0, :cond_1

    .line 138
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->localAssistance:Lcom/google/personalization/assist/annotate/api/nano/LocalAssistance;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->flightStatusAssistance:Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;

    if-eqz v0, :cond_2

    .line 141
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->flightStatusAssistance:Lcom/google/personalization/assist/annotate/api/nano/FlightStatusAssistance;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    if-eqz v0, :cond_3

    .line 144
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->weatherAssistance:Lcom/google/personalization/assist/annotate/api/nano/WeatherAssistance;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    if-eqz v0, :cond_4

    .line 147
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->financeAssistance:Lcom/google/personalization/assist/annotate/api/nano/FinanceAssistance;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    if-eqz v0, :cond_5

    .line 150
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->returnProductAssistance:Lcom/google/personalization/assist/annotate/api/nano/ReturnProductAssistance;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->eventAssistance:Lcom/google/personalization/assist/annotate/api/nano/EventAssistance;

    if-eqz v0, :cond_6

    .line 153
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->eventAssistance:Lcom/google/personalization/assist/annotate/api/nano/EventAssistance;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 155
    :cond_6
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    if-eqz v0, :cond_7

    .line 156
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->callAction:Lcom/google/personalization/assist/annotate/api/nano/CallAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 158
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    if-eqz v0, :cond_8

    .line 159
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->emailAction:Lcom/google/personalization/assist/annotate/api/nano/EmailAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 161
    :cond_8
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    if-eqz v0, :cond_9

    .line 162
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->smsAction:Lcom/google/personalization/assist/annotate/api/nano/SmsAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 164
    :cond_9
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    if-eqz v0, :cond_a

    .line 165
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->viewUrlAction:Lcom/google/personalization/assist/annotate/api/nano/ViewUrlAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 167
    :cond_a
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    if-eqz v0, :cond_b

    .line 168
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setAliasAction:Lcom/google/personalization/assist/annotate/api/nano/SetAliasAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 170
    :cond_b
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    if-eqz v0, :cond_c

    .line 171
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->hangoutAction:Lcom/google/personalization/assist/annotate/api/nano/HangoutAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 173
    :cond_c
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    if-eqz v0, :cond_d

    .line 174
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->watchYoutubeAction:Lcom/google/personalization/assist/annotate/api/nano/WatchYoutubeAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 176
    :cond_d
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->trackPackageAction:Lcom/google/personalization/assist/annotate/api/nano/TrackPackageAction;

    if-eqz v0, :cond_e

    .line 177
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->trackPackageAction:Lcom/google/personalization/assist/annotate/api/nano/TrackPackageAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 179
    :cond_e
    iget v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->userLocationType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 180
    const/16 v0, 0x13

    iget v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->userLocationType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 182
    :cond_f
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    if-eqz v0, :cond_10

    .line 183
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->calendarAssistance:Lcom/google/personalization/assist/annotate/api/nano/CalendarAssistance;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 185
    :cond_10
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    if-eqz v0, :cond_11

    .line 186
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->deadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/DeadlineAssistance;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 188
    :cond_11
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    if-eqz v0, :cond_12

    .line 189
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->organizationAssistance:Lcom/google/personalization/assist/annotate/api/nano/OrganizationAssistance;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 191
    :cond_12
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    if-eqz v0, :cond_13

    .line 192
    const/16 v0, 0x17

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->billAssistance:Lcom/google/personalization/assist/annotate/api/nano/BillAssistance;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 194
    :cond_13
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->recurringDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/RecurringDeadlineAction;

    if-eqz v0, :cond_14

    .line 195
    const/16 v0, 0x18

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->recurringDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/RecurringDeadlineAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 197
    :cond_14
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/SetDeadlineAction;

    if-eqz v0, :cond_15

    .line 198
    const/16 v0, 0x19

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->setDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/SetDeadlineAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 200
    :cond_15
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactDeadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/ContactDeadlineAssistance;

    if-eqz v0, :cond_16

    .line 201
    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactDeadlineAssistance:Lcom/google/personalization/assist/annotate/api/nano/ContactDeadlineAssistance;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 203
    :cond_16
    iget-object v0, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactSetDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/ContactSetDeadlineAction;

    if-eqz v0, :cond_17

    .line 204
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/personalization/assist/annotate/api/nano/Assistance;->contactSetDeadlineAction:Lcom/google/personalization/assist/annotate/api/nano/ContactSetDeadlineAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 206
    :cond_17
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 207
    return-void
.end method
