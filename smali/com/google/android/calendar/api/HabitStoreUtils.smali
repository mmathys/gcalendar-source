.class Lcom/google/android/calendar/api/HabitStoreUtils;
.super Ljava/lang/Object;
.source "HabitStoreUtils.java"


# direct methods
.method private static apiIntervalToProtoInterval(I)I
    .locals 2

    .prologue
    .line 448
    packed-switch p0, :pswitch_data_0

    .line 456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :pswitch_0
    const/4 v0, 0x0

    .line 454
    :goto_0
    return v0

    .line 452
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 454
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 448
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static apiTypeToProtoType(I)I
    .locals 2

    .prologue
    .line 29
    sparse-switch p0, :sswitch_data_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :sswitch_0
    const/16 v0, 0x64

    .line 172
    :goto_0
    return v0

    .line 33
    :sswitch_1
    const/16 v0, 0x66

    goto :goto_0

    .line 35
    :sswitch_2
    const/16 v0, 0x67

    goto :goto_0

    .line 37
    :sswitch_3
    const/16 v0, 0x65

    goto :goto_0

    .line 39
    :sswitch_4
    const/16 v0, 0x68

    goto :goto_0

    .line 41
    :sswitch_5
    const/16 v0, 0x6b

    goto :goto_0

    .line 43
    :sswitch_6
    const/16 v0, 0x69

    goto :goto_0

    .line 45
    :sswitch_7
    const/16 v0, 0x6a

    goto :goto_0

    .line 47
    :sswitch_8
    const/16 v0, 0x6c

    goto :goto_0

    .line 49
    :sswitch_9
    const/16 v0, 0x6d

    goto :goto_0

    .line 51
    :sswitch_a
    const/16 v0, 0x6e

    goto :goto_0

    .line 53
    :sswitch_b
    const/16 v0, 0x6f

    goto :goto_0

    .line 55
    :sswitch_c
    const/16 v0, 0x70

    goto :goto_0

    .line 57
    :sswitch_d
    const/16 v0, 0x71

    goto :goto_0

    .line 59
    :sswitch_e
    const/16 v0, 0x72

    goto :goto_0

    .line 62
    :sswitch_f
    const/16 v0, 0xc8

    goto :goto_0

    .line 64
    :sswitch_10
    const/16 v0, 0xca

    goto :goto_0

    .line 66
    :sswitch_11
    const/16 v0, 0xc9

    goto :goto_0

    .line 68
    :sswitch_12
    const/16 v0, 0xcb

    goto :goto_0

    .line 70
    :sswitch_13
    const/16 v0, 0xcc

    goto :goto_0

    .line 72
    :sswitch_14
    const/16 v0, 0xcd

    goto :goto_0

    .line 74
    :sswitch_15
    const/16 v0, 0xce

    goto :goto_0

    .line 76
    :sswitch_16
    const/16 v0, 0xcf

    goto :goto_0

    .line 78
    :sswitch_17
    const/16 v0, 0xd0

    goto :goto_0

    .line 80
    :sswitch_18
    const/16 v0, 0xd1

    goto :goto_0

    .line 82
    :sswitch_19
    const/16 v0, 0xd2

    goto :goto_0

    .line 84
    :sswitch_1a
    const/16 v0, 0xd3

    goto :goto_0

    .line 86
    :sswitch_1b
    const/16 v0, 0xd4

    goto :goto_0

    .line 89
    :sswitch_1c
    const/16 v0, 0x12c

    goto :goto_0

    .line 91
    :sswitch_1d
    const/16 v0, 0x130

    goto :goto_0

    .line 93
    :sswitch_1e
    const/16 v0, 0x12f

    goto :goto_0

    .line 95
    :sswitch_1f
    const/16 v0, 0x12d

    goto :goto_0

    .line 97
    :sswitch_20
    const/16 v0, 0x12e

    goto :goto_0

    .line 99
    :sswitch_21
    const/16 v0, 0x131

    goto :goto_0

    .line 101
    :sswitch_22
    const/16 v0, 0x132

    goto :goto_0

    .line 103
    :sswitch_23
    const/16 v0, 0x133

    goto :goto_0

    .line 105
    :sswitch_24
    const/16 v0, 0x134

    goto :goto_0

    .line 107
    :sswitch_25
    const/16 v0, 0x135

    goto :goto_0

    .line 109
    :sswitch_26
    const/16 v0, 0x136

    goto :goto_0

    .line 111
    :sswitch_27
    const/16 v0, 0x137

    goto :goto_0

    .line 113
    :sswitch_28
    const/16 v0, 0x138

    goto :goto_0

    .line 116
    :sswitch_29
    const/16 v0, 0x190

    goto :goto_0

    .line 118
    :sswitch_2a
    const/16 v0, 0x193

    goto :goto_0

    .line 120
    :sswitch_2b
    const/16 v0, 0x192

    goto/16 :goto_0

    .line 122
    :sswitch_2c
    const/16 v0, 0x191

    goto/16 :goto_0

    .line 124
    :sswitch_2d
    const/16 v0, 0x194

    goto/16 :goto_0

    .line 126
    :sswitch_2e
    const/16 v0, 0x195

    goto/16 :goto_0

    .line 128
    :sswitch_2f
    const/16 v0, 0x196

    goto/16 :goto_0

    .line 130
    :sswitch_30
    const/16 v0, 0x197

    goto/16 :goto_0

    .line 132
    :sswitch_31
    const/16 v0, 0x198

    goto/16 :goto_0

    .line 134
    :sswitch_32
    const/16 v0, 0x199

    goto/16 :goto_0

    .line 136
    :sswitch_33
    const/16 v0, 0x19a

    goto/16 :goto_0

    .line 138
    :sswitch_34
    const/16 v0, 0x19b

    goto/16 :goto_0

    .line 140
    :sswitch_35
    const/16 v0, 0x19c

    goto/16 :goto_0

    .line 142
    :sswitch_36
    const/16 v0, 0x19d

    goto/16 :goto_0

    .line 145
    :sswitch_37
    const/16 v0, 0x1f4

    goto/16 :goto_0

    .line 147
    :sswitch_38
    const/16 v0, 0x1f7

    goto/16 :goto_0

    .line 149
    :sswitch_39
    const/16 v0, 0x1f6

    goto/16 :goto_0

    .line 151
    :sswitch_3a
    const/16 v0, 0x1f5

    goto/16 :goto_0

    .line 153
    :sswitch_3b
    const/16 v0, 0x1f8

    goto/16 :goto_0

    .line 155
    :sswitch_3c
    const/16 v0, 0x1f9

    goto/16 :goto_0

    .line 157
    :sswitch_3d
    const/16 v0, 0x1fa

    goto/16 :goto_0

    .line 159
    :sswitch_3e
    const/16 v0, 0x1fb

    goto/16 :goto_0

    .line 161
    :sswitch_3f
    const/16 v0, 0x1fc

    goto/16 :goto_0

    .line 163
    :sswitch_40
    const/16 v0, 0x1fd

    goto/16 :goto_0

    .line 165
    :sswitch_41
    const/16 v0, 0x1fe

    goto/16 :goto_0

    .line 167
    :sswitch_42
    const/16 v0, 0x1ff

    goto/16 :goto_0

    .line 169
    :sswitch_43
    const/16 v0, 0x200

    goto/16 :goto_0

    .line 172
    :sswitch_44
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 29
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_44
        0x100 -> :sswitch_0
        0x101 -> :sswitch_3
        0x102 -> :sswitch_1
        0x103 -> :sswitch_2
        0x104 -> :sswitch_4
        0x105 -> :sswitch_6
        0x106 -> :sswitch_5
        0x107 -> :sswitch_7
        0x108 -> :sswitch_8
        0x109 -> :sswitch_9
        0x10a -> :sswitch_a
        0x10b -> :sswitch_b
        0x10c -> :sswitch_c
        0x10d -> :sswitch_d
        0x10e -> :sswitch_e
        0x200 -> :sswitch_f
        0x201 -> :sswitch_11
        0x202 -> :sswitch_10
        0x203 -> :sswitch_13
        0x204 -> :sswitch_12
        0x205 -> :sswitch_14
        0x206 -> :sswitch_15
        0x207 -> :sswitch_16
        0x208 -> :sswitch_17
        0x209 -> :sswitch_18
        0x20a -> :sswitch_19
        0x20b -> :sswitch_1a
        0x20c -> :sswitch_1b
        0x300 -> :sswitch_1c
        0x301 -> :sswitch_1f
        0x302 -> :sswitch_20
        0x303 -> :sswitch_1e
        0x304 -> :sswitch_1d
        0x305 -> :sswitch_21
        0x306 -> :sswitch_22
        0x307 -> :sswitch_23
        0x308 -> :sswitch_24
        0x309 -> :sswitch_25
        0x30a -> :sswitch_26
        0x30b -> :sswitch_27
        0x30c -> :sswitch_28
        0x400 -> :sswitch_29
        0x401 -> :sswitch_2c
        0x402 -> :sswitch_2b
        0x403 -> :sswitch_2a
        0x404 -> :sswitch_2d
        0x405 -> :sswitch_2e
        0x406 -> :sswitch_2f
        0x407 -> :sswitch_30
        0x408 -> :sswitch_31
        0x409 -> :sswitch_32
        0x40a -> :sswitch_33
        0x40b -> :sswitch_34
        0x40c -> :sswitch_35
        0x40d -> :sswitch_36
        0x500 -> :sswitch_37
        0x501 -> :sswitch_3a
        0x502 -> :sswitch_39
        0x503 -> :sswitch_38
        0x504 -> :sswitch_3b
        0x505 -> :sswitch_3c
        0x506 -> :sswitch_3d
        0x507 -> :sswitch_3e
        0x508 -> :sswitch_3f
        0x509 -> :sswitch_40
        0x50a -> :sswitch_41
        0x50b -> :sswitch_42
        0x50c -> :sswitch_43
    .end sparse-switch
.end method

.method private static apiVisibilityToProtoVisibility(I)I
    .locals 2

    .prologue
    .line 475
    packed-switch p0, :pswitch_data_0

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown visibility"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :pswitch_0
    const/4 v0, 0x0

    .line 481
    :goto_0
    return v0

    .line 479
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 481
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static applyModificationsToProto(Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;Lcom/google/android/calendar/api/HabitModifications;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 389
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->isSummaryModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getSummary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getSummary()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->summary:Ljava/lang/String;

    .line 392
    :cond_0
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->isTypeModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitStoreUtils;->apiTypeToProtoType(I)I

    move-result v0

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->type:I

    .line 395
    :cond_1
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->isColorOverrideModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    .line 397
    if-nez v0, :cond_d

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->color:Ljava/lang/String;

    .line 399
    :cond_2
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->isVisibilityModified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 400
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitStoreUtils;->apiVisibilityToProtoVisibility(I)I

    move-result v0

    iput v0, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->visibility:I

    .line 402
    :cond_3
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->isRemindersModified()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 403
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    .line 404
    new-instance v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    invoke-direct {v1}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;-><init>()V

    .line 405
    iget-boolean v2, v0, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    iput-boolean v2, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->useDefaultReminders:Z

    .line 406
    iget-boolean v2, v0, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    if-nez v2, :cond_4

    .line 407
    iget-object v2, v0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    if-nez v2, :cond_e

    .line 408
    new-array v2, v4, [Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    iput-object v2, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    .line 416
    :cond_4
    :goto_2
    iget-boolean v2, v0, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    iput-boolean v2, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableFollowup:Z

    .line 417
    iget-boolean v0, v0, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    iput-boolean v0, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableRecommit:Z

    .line 418
    iput-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    .line 420
    :cond_5
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    if-nez v1, :cond_6

    .line 422
    new-instance v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    invoke-direct {v1}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;-><init>()V

    iput-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    .line 424
    :cond_6
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isDurationMinutesModified()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 425
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->getDurationMinutes()I

    move-result v2

    iput v2, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->durationMinutes:I

    .line 427
    :cond_7
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isIntervalModified()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 428
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->getInterval()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/calendar/api/HabitStoreUtils;->apiIntervalToProtoInterval(I)I

    move-result v2

    iput v2, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->interval:I

    .line 430
    :cond_8
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isNumInstancesPerIntervalModified()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 431
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->getNumInstancesPerInterval()I

    move-result v2

    iput v2, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->numInstancesPerInterval:I

    .line 433
    :cond_9
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isDailyPatternModified()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 434
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    new-instance v2, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    invoke-direct {v2}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;-><init>()V

    iput-object v2, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    .line 435
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    iget-object v1, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    new-instance v2, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    invoke-direct {v2}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;-><init>()V

    iput-object v2, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    .line 436
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    iget-object v1, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    iget-object v1, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isAnyDayTimeAcceptable()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->any:Z

    .line 437
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    iget-object v1, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    iget-object v1, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isMorningPreferable()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->morning:Z

    .line 438
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    iget-object v1, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    iget-object v1, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    .line 439
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isAfternoonPreferable()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->afternoon:Z

    .line 440
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    iget-object v1, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    iget-object v1, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isEveningPreferable()Z

    move-result v2

    iput-boolean v2, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->evening:Z

    .line 442
    :cond_a
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isUntilMillisUtcModified()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 443
    iget-object v1, p0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->getUntilMillisUtc()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->untilMillisUtc:J

    .line 445
    :cond_b
    return-void

    .line 390
    :cond_c
    const-string v0, ""

    goto/16 :goto_0

    .line 397
    :cond_d
    invoke-virtual {v0}, Lcom/google/android/calendar/api/ColorDescriptor;->getColorId()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 410
    :cond_e
    new-instance v2, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    invoke-direct {v2}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;-><init>()V

    .line 411
    const/4 v3, 0x2

    iput v3, v2, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->method:I

    .line 412
    iget-object v3, v0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->minutes:I

    .line 413
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    aput-object v2, v3, v4

    iput-object v3, v1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    goto/16 :goto_2
.end method

.method static createEmptyEntity(Lcom/google/android/calendar/api/HabitDescriptor;)Landroid/content/Entity;
    .locals 3

    .prologue
    .line 374
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 375
    const-string v1, "account"

    iget-object v2, p0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v1, "calendar"

    iget-object v2, p0, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v1, "_sync_id"

    iget-object v2, p0, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v1, Landroid/content/Entity;

    invoke-direct {v1, v0}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    return-object v1
.end method

.method static createLocalDeletion(Lcom/google/android/calendar/api/HabitDescriptor;)Landroid/content/Entity;
    .locals 4

    .prologue
    .line 382
    invoke-static {p0}, Lcom/google/android/calendar/api/HabitStoreUtils;->createEmptyEntity(Lcom/google/android/calendar/api/HabitDescriptor;)Landroid/content/Entity;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "deletionStatus"

    const/4 v3, 0x2

    .line 384
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    return-object v0
.end method

.method public static entityToHabit(Landroid/content/Entity;)Lcom/google/android/calendar/api/Habit;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 502
    invoke-virtual {p0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 503
    const-string v2, "_sync_id"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 504
    const-string v2, "account"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 505
    new-instance v6, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v6, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v2, "calendar"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-static {v6, v2}, Lcom/google/android/calendar/api/calendarlist/CalendarListStoreUtils;->readLocalCalendarId(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 510
    new-instance v11, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-direct {v11, v6, v2, v3}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    .line 512
    const-string v2, "deletionStatus"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 513
    const-string v2, "fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 514
    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 516
    new-instance v5, Lcom/google/android/calendar/api/HabitContractImpl$Modification;

    invoke-direct {v5}, Lcom/google/android/calendar/api/HabitContractImpl$Modification;-><init>()V

    .line 521
    if-eqz v0, :cond_5

    array-length v3, v0

    if-lez v3, :cond_5

    .line 522
    invoke-static {v0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->parseFrom([B)Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;

    move-result-object v4

    .line 523
    iget-object v0, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    iget v0, v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->interval:I

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitStoreUtils;->protoIntervalToApiInterval(I)I

    move-result v0

    invoke-interface {v5, v0}, Lcom/google/android/calendar/api/HabitContractModifications;->setInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    iget-object v3, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    iget v3, v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->durationMinutes:I

    .line 525
    invoke-interface {v0, v3}, Lcom/google/android/calendar/api/HabitContractModifications;->setDurationMinutes(I)Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    iget-object v3, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    iget v3, v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->numInstancesPerInterval:I

    .line 526
    invoke-interface {v0, v3}, Lcom/google/android/calendar/api/HabitContractModifications;->setNumInstancesPerInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    iget-object v3, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    iget-object v3, v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    iget-object v3, v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    iget-boolean v3, v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->morning:Z

    .line 527
    invoke-interface {v0, v3}, Lcom/google/android/calendar/api/HabitContractModifications;->setMorningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    iget-object v3, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    iget-object v3, v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    iget-object v3, v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    iget-boolean v3, v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->afternoon:Z

    .line 528
    invoke-interface {v0, v3}, Lcom/google/android/calendar/api/HabitContractModifications;->setAfternoonPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    iget-object v3, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    iget-object v3, v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    iget-object v3, v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    iget-boolean v3, v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->evening:Z

    .line 529
    invoke-interface {v0, v3}, Lcom/google/android/calendar/api/HabitContractModifications;->setEveningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    iget-object v3, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    iget-wide v12, v3, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->untilMillisUtc:J

    .line 530
    invoke-interface {v0, v12, v13}, Lcom/google/android/calendar/api/HabitContractModifications;->setUntilMillisUtc(J)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 531
    iget-object v0, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->contract:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;

    iget-object v0, v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Contract;->timePattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;

    iget-object v0, v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$TimePattern;->dailyPattern:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;

    iget-boolean v0, v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$DailyPattern;->any:Z

    if-eqz v0, :cond_0

    .line 532
    invoke-interface {v5}, Lcom/google/android/calendar/api/HabitContractModifications;->setAnyDayTimeAcceptable()Lcom/google/android/calendar/api/HabitContractModifications;

    .line 535
    :cond_0
    iget-object v0, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    if-eqz v0, :cond_4

    .line 536
    iget-object v0, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    iget-object v0, v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    array-length v0, v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 538
    :goto_0
    new-instance v3, Lcom/google/android/calendar/api/HabitReminders;

    iget-object v7, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    iget-boolean v7, v7, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->useDefaultReminders:Z

    iget-object v9, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    iget-boolean v9, v9, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableRecommit:Z

    iget-object v12, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    iget-boolean v12, v12, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->enableFollowup:Z

    invoke-direct {v3, v7, v0, v9, v12}, Lcom/google/android/calendar/api/HabitReminders;-><init>(ZLjava/lang/Integer;ZZ)V

    .line 541
    :goto_1
    iget-object v0, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->summary:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->customName:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 542
    iget v7, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->type:I

    invoke-static {v7}, Lcom/google/android/calendar/api/HabitStoreUtils;->protoTypeToApiType(I)I

    move-result v7

    .line 543
    iget v9, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->visibility:I

    invoke-static {v9}, Lcom/google/android/calendar/api/HabitStoreUtils;->protoVisibilityToApiVisibility(I)I

    move-result v9

    .line 544
    iget-object v12, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->color:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v4, v1

    .line 545
    :goto_2
    if-eqz v4, :cond_3

    .line 548
    invoke-static {v6, v4}, Lcom/google/android/calendar/api/ColorDescriptor;->createEventColorDescriptor(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v1

    move-object v4, v1

    move-object v6, v3

    move-object v3, v0

    .line 551
    :goto_3
    new-instance v0, Lcom/google/android/calendar/api/HabitImpl;

    new-instance v1, Lcom/google/android/calendar/api/HabitDescriptor;

    invoke-direct {v1, v11, v10}, Lcom/google/android/calendar/api/HabitDescriptor;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    invoke-direct/range {v0 .. v9}, Lcom/google/android/calendar/api/HabitImpl;-><init>(Lcom/google/android/calendar/api/HabitDescriptor;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/api/ColorDescriptor;Lcom/google/android/calendar/api/HabitContract;Lcom/google/android/calendar/api/HabitReminders;III)V

    return-object v0

    .line 537
    :cond_1
    iget-object v0, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->reminders:Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;

    iget-object v0, v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$Reminders;->reminderOverride:[Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;

    aget-object v0, v0, v9

    iget v0, v0, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$ReminderInstance;->minutes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 544
    :cond_2
    iget-object v4, v4, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->color:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v4, v1

    move-object v6, v3

    move-object v3, v0

    goto :goto_3

    :cond_4
    move-object v3, v1

    goto :goto_1

    :cond_5
    move v7, v9

    move-object v4, v1

    move-object v6, v1

    move-object v3, v1

    goto :goto_3
.end method

.method static modificationToEntity(Lcom/google/android/calendar/api/HabitModifications;Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;)Landroid/content/Entity;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 340
    if-nez p1, :cond_0

    .line 341
    new-instance p1, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;

    invoke-direct {p1}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;-><init>()V

    .line 344
    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/calendar/api/HabitStoreUtils;->applyModificationsToProto(Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;Lcom/google/android/calendar/api/HabitModifications;)V

    .line 346
    invoke-virtual {p1}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->getSerializedSize()I

    move-result v0

    new-array v3, v0, [B

    .line 347
    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    .line 348
    invoke-virtual {p1, v0}, Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 350
    new-instance v4, Landroid/content/ContentValues;

    .line 351
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->isDeletionStatusModified()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x4

    .line 352
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->isFingerprintModified()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_1
    add-int/2addr v0, v1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 353
    const-string v0, "_sync_id"

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v0, "account"

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "calendar"

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v1}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->isDeletionStatusModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    const-string v0, "deletionStatus"

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getDeletionStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    :cond_1
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->isFingerprintModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    const-string v0, "fingerprint"

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getFingerprint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_2
    const-string v0, "data"

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 364
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 365
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContractModifications;->isUntilMillisUtcModified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    const-string v0, "untilMillisUtc"

    .line 367
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/calendar/api/HabitContractModifications;->getUntilMillisUtc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 366
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 370
    :cond_3
    new-instance v0, Landroid/content/Entity;

    invoke-direct {v0, v4}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    return-object v0

    :cond_4
    move v0, v2

    .line 351
    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 352
    goto/16 :goto_1
.end method

.method static newHabitToEntity(Lcom/google/android/calendar/api/HabitModifications;)Landroid/content/Entity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/calendar/api/HabitStoreUtils;->modificationToEntity(Lcom/google/android/calendar/api/HabitModifications;Lcom/google/calendar/intention/habit/client/nano/ClientHabitProto$HabitData;)Landroid/content/Entity;

    move-result-object v0

    return-object v0
.end method

.method private static protoIntervalToApiInterval(I)I
    .locals 2

    .prologue
    .line 462
    packed-switch p0, :pswitch_data_0

    .line 470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown interval"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :pswitch_0
    const/4 v0, 0x0

    .line 468
    :goto_0
    return v0

    .line 466
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 468
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static protoTypeToApiType(I)I
    .locals 2

    .prologue
    .line 181
    sparse-switch p0, :sswitch_data_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :sswitch_0
    const/16 v0, 0x100

    .line 324
    :goto_0
    return v0

    .line 185
    :sswitch_1
    const/16 v0, 0x102

    goto :goto_0

    .line 187
    :sswitch_2
    const/16 v0, 0x103

    goto :goto_0

    .line 189
    :sswitch_3
    const/16 v0, 0x101

    goto :goto_0

    .line 191
    :sswitch_4
    const/16 v0, 0x104

    goto :goto_0

    .line 193
    :sswitch_5
    const/16 v0, 0x106

    goto :goto_0

    .line 195
    :sswitch_6
    const/16 v0, 0x105

    goto :goto_0

    .line 197
    :sswitch_7
    const/16 v0, 0x107

    goto :goto_0

    .line 199
    :sswitch_8
    const/16 v0, 0x108

    goto :goto_0

    .line 201
    :sswitch_9
    const/16 v0, 0x109

    goto :goto_0

    .line 203
    :sswitch_a
    const/16 v0, 0x10a

    goto :goto_0

    .line 205
    :sswitch_b
    const/16 v0, 0x10b

    goto :goto_0

    .line 207
    :sswitch_c
    const/16 v0, 0x10c

    goto :goto_0

    .line 209
    :sswitch_d
    const/16 v0, 0x10d

    goto :goto_0

    .line 211
    :sswitch_e
    const/16 v0, 0x10e

    goto :goto_0

    .line 214
    :sswitch_f
    const/16 v0, 0x200

    goto :goto_0

    .line 216
    :sswitch_10
    const/16 v0, 0x202

    goto :goto_0

    .line 218
    :sswitch_11
    const/16 v0, 0x201

    goto :goto_0

    .line 220
    :sswitch_12
    const/16 v0, 0x204

    goto :goto_0

    .line 222
    :sswitch_13
    const/16 v0, 0x203

    goto :goto_0

    .line 224
    :sswitch_14
    const/16 v0, 0x205

    goto :goto_0

    .line 226
    :sswitch_15
    const/16 v0, 0x206

    goto :goto_0

    .line 228
    :sswitch_16
    const/16 v0, 0x207

    goto :goto_0

    .line 230
    :sswitch_17
    const/16 v0, 0x208

    goto :goto_0

    .line 232
    :sswitch_18
    const/16 v0, 0x209

    goto :goto_0

    .line 234
    :sswitch_19
    const/16 v0, 0x20a

    goto :goto_0

    .line 236
    :sswitch_1a
    const/16 v0, 0x20b

    goto :goto_0

    .line 238
    :sswitch_1b
    const/16 v0, 0x20c

    goto :goto_0

    .line 241
    :sswitch_1c
    const/16 v0, 0x300

    goto :goto_0

    .line 243
    :sswitch_1d
    const/16 v0, 0x304

    goto :goto_0

    .line 245
    :sswitch_1e
    const/16 v0, 0x303

    goto :goto_0

    .line 247
    :sswitch_1f
    const/16 v0, 0x301

    goto :goto_0

    .line 249
    :sswitch_20
    const/16 v0, 0x302

    goto :goto_0

    .line 251
    :sswitch_21
    const/16 v0, 0x305

    goto :goto_0

    .line 253
    :sswitch_22
    const/16 v0, 0x306

    goto :goto_0

    .line 255
    :sswitch_23
    const/16 v0, 0x307

    goto :goto_0

    .line 257
    :sswitch_24
    const/16 v0, 0x308

    goto :goto_0

    .line 259
    :sswitch_25
    const/16 v0, 0x309

    goto :goto_0

    .line 261
    :sswitch_26
    const/16 v0, 0x30a

    goto :goto_0

    .line 263
    :sswitch_27
    const/16 v0, 0x30b

    goto :goto_0

    .line 265
    :sswitch_28
    const/16 v0, 0x30c

    goto :goto_0

    .line 268
    :sswitch_29
    const/16 v0, 0x400

    goto :goto_0

    .line 270
    :sswitch_2a
    const/16 v0, 0x401

    goto :goto_0

    .line 272
    :sswitch_2b
    const/16 v0, 0x403

    goto/16 :goto_0

    .line 274
    :sswitch_2c
    const/16 v0, 0x402

    goto/16 :goto_0

    .line 276
    :sswitch_2d
    const/16 v0, 0x404

    goto/16 :goto_0

    .line 278
    :sswitch_2e
    const/16 v0, 0x405

    goto/16 :goto_0

    .line 280
    :sswitch_2f
    const/16 v0, 0x406

    goto/16 :goto_0

    .line 282
    :sswitch_30
    const/16 v0, 0x407

    goto/16 :goto_0

    .line 284
    :sswitch_31
    const/16 v0, 0x408

    goto/16 :goto_0

    .line 286
    :sswitch_32
    const/16 v0, 0x409

    goto/16 :goto_0

    .line 288
    :sswitch_33
    const/16 v0, 0x40a

    goto/16 :goto_0

    .line 290
    :sswitch_34
    const/16 v0, 0x40b

    goto/16 :goto_0

    .line 292
    :sswitch_35
    const/16 v0, 0x40c

    goto/16 :goto_0

    .line 294
    :sswitch_36
    const/16 v0, 0x40d

    goto/16 :goto_0

    .line 297
    :sswitch_37
    const/16 v0, 0x500

    goto/16 :goto_0

    .line 299
    :sswitch_38
    const/16 v0, 0x503

    goto/16 :goto_0

    .line 301
    :sswitch_39
    const/16 v0, 0x502

    goto/16 :goto_0

    .line 303
    :sswitch_3a
    const/16 v0, 0x501

    goto/16 :goto_0

    .line 305
    :sswitch_3b
    const/16 v0, 0x504

    goto/16 :goto_0

    .line 307
    :sswitch_3c
    const/16 v0, 0x505

    goto/16 :goto_0

    .line 309
    :sswitch_3d
    const/16 v0, 0x506

    goto/16 :goto_0

    .line 311
    :sswitch_3e
    const/16 v0, 0x507

    goto/16 :goto_0

    .line 313
    :sswitch_3f
    const/16 v0, 0x508

    goto/16 :goto_0

    .line 315
    :sswitch_40
    const/16 v0, 0x509

    goto/16 :goto_0

    .line 317
    :sswitch_41
    const/16 v0, 0x50a

    goto/16 :goto_0

    .line 319
    :sswitch_42
    const/16 v0, 0x50b

    goto/16 :goto_0

    .line 321
    :sswitch_43
    const/16 v0, 0x50c

    goto/16 :goto_0

    .line 324
    :sswitch_44
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_44
        0x64 -> :sswitch_0
        0x65 -> :sswitch_3
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0x68 -> :sswitch_4
        0x69 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_5
        0x6c -> :sswitch_8
        0x6d -> :sswitch_9
        0x6e -> :sswitch_a
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0xc8 -> :sswitch_f
        0xc9 -> :sswitch_11
        0xca -> :sswitch_10
        0xcb -> :sswitch_12
        0xcc -> :sswitch_13
        0xcd -> :sswitch_14
        0xce -> :sswitch_15
        0xcf -> :sswitch_16
        0xd0 -> :sswitch_17
        0xd1 -> :sswitch_18
        0xd2 -> :sswitch_19
        0xd3 -> :sswitch_1a
        0xd4 -> :sswitch_1b
        0x12c -> :sswitch_1c
        0x12d -> :sswitch_1f
        0x12e -> :sswitch_20
        0x12f -> :sswitch_1e
        0x130 -> :sswitch_1d
        0x131 -> :sswitch_21
        0x132 -> :sswitch_22
        0x133 -> :sswitch_23
        0x134 -> :sswitch_24
        0x135 -> :sswitch_25
        0x136 -> :sswitch_26
        0x137 -> :sswitch_27
        0x138 -> :sswitch_28
        0x190 -> :sswitch_29
        0x191 -> :sswitch_2a
        0x192 -> :sswitch_2c
        0x193 -> :sswitch_2b
        0x194 -> :sswitch_2d
        0x195 -> :sswitch_2e
        0x196 -> :sswitch_2f
        0x197 -> :sswitch_30
        0x198 -> :sswitch_31
        0x199 -> :sswitch_32
        0x19a -> :sswitch_33
        0x19b -> :sswitch_34
        0x19c -> :sswitch_35
        0x19d -> :sswitch_36
        0x1f4 -> :sswitch_37
        0x1f5 -> :sswitch_3a
        0x1f6 -> :sswitch_39
        0x1f7 -> :sswitch_38
        0x1f8 -> :sswitch_3b
        0x1f9 -> :sswitch_3c
        0x1fa -> :sswitch_3d
        0x1fb -> :sswitch_3e
        0x1fc -> :sswitch_3f
        0x1fd -> :sswitch_40
        0x1fe -> :sswitch_41
        0x1ff -> :sswitch_42
        0x200 -> :sswitch_43
    .end sparse-switch
.end method

.method private static protoVisibilityToApiVisibility(I)I
    .locals 2

    .prologue
    .line 489
    packed-switch p0, :pswitch_data_0

    .line 497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown visibility"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :pswitch_0
    const/4 v0, 0x0

    .line 495
    :goto_0
    return v0

    .line 493
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 495
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
