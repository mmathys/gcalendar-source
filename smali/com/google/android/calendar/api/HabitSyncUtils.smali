.class public Lcom/google/android/calendar/api/HabitSyncUtils;
.super Ljava/lang/Object;
.source "HabitSyncUtils.java"


# static fields
.field private static final HABIT_INSTANCE_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcom/google/android/calendar/api/HabitSyncUtils;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/api/HabitSyncUtils;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IFNULL(COUNT(sync_data8),0) AS _count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/calendar/api/HabitSyncUtils;->HABIT_INSTANCE_COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static apiIntervalToServerInterval(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 469
    packed-switch p0, :pswitch_data_0

    .line 477
    sget-object v0, Lcom/google/android/calendar/api/HabitSyncUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x45

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unrecognized habit api interval, falling back to unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 478
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 471
    :pswitch_0
    const-string v0, "unknown"

    goto :goto_0

    .line 473
    :pswitch_1
    const-string v0, "daily"

    goto :goto_0

    .line 475
    :pswitch_2
    const-string v0, "weekly"

    goto :goto_0

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static apiToServerHabit(Lcom/google/android/calendar/api/Habit;)Lcom/google/api/services/calendar/model/Habit;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 618
    new-instance v0, Lcom/google/api/services/calendar/model/Habit;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/Habit;-><init>()V

    .line 619
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/api/services/calendar/model/Habit;->setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Habit;

    move-result-object v2

    .line 620
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/google/api/services/calendar/model/Habit;->setEtag(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Habit;

    move-result-object v2

    .line 621
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getDeletionStatus()I

    move-result v0

    if-eq v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/api/services/calendar/model/Habit;->setDeleted(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Habit;

    move-result-object v1

    .line 623
    new-instance v0, Lcom/google/api/services/calendar/model/DailyPattern;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/DailyPattern;-><init>()V

    .line 624
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContract;->isAnyDayTimeAcceptable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/api/services/calendar/model/DailyPattern;->setAny(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/DailyPattern;

    move-result-object v0

    .line 625
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContract;->isMorningPreferable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/api/services/calendar/model/DailyPattern;->setMorning(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/DailyPattern;

    move-result-object v0

    .line 626
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContract;->isAfternoonPreferable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/api/services/calendar/model/DailyPattern;->setAfternoon(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/DailyPattern;

    move-result-object v0

    .line 627
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContract;->isEveningPreferable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/api/services/calendar/model/DailyPattern;->setEvening(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/DailyPattern;

    move-result-object v0

    .line 628
    new-instance v2, Lcom/google/api/services/calendar/model/Contract;

    invoke-direct {v2}, Lcom/google/api/services/calendar/model/Contract;-><init>()V

    .line 630
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/calendar/api/HabitContract;->getInterval()I

    move-result v3

    if-eqz v3, :cond_0

    .line 631
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/calendar/api/HabitContract;->getInterval()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/calendar/api/HabitSyncUtils;->apiIntervalToServerInterval(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/services/calendar/model/Contract;->setInterval(Ljava/lang/String;)Lcom/google/api/services/calendar/model/Contract;

    .line 634
    :cond_0
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/calendar/api/HabitContract;->getDurationMinutes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/services/calendar/model/Contract;->setDurationMinutes(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/Contract;

    move-result-object v3

    .line 635
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/calendar/api/HabitContract;->getNumInstancesPerInterval()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/services/calendar/model/Contract;->setNumInstancesPerInterval(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/Contract;

    move-result-object v3

    new-instance v4, Lcom/google/api/services/calendar/model/TimePattern;

    invoke-direct {v4}, Lcom/google/api/services/calendar/model/TimePattern;-><init>()V

    .line 636
    invoke-virtual {v4, v0}, Lcom/google/api/services/calendar/model/TimePattern;->setDailyPattern(Lcom/google/api/services/calendar/model/DailyPattern;)Lcom/google/api/services/calendar/model/TimePattern;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/api/services/calendar/model/Contract;->setTimePattern(Lcom/google/api/services/calendar/model/TimePattern;)Lcom/google/api/services/calendar/model/Contract;

    .line 637
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->getUntilMillisUtc()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    .line 638
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitContract;->getUntilMillisUtc()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/api/services/calendar/model/Contract;->setUntilMillisUtc(Ljava/lang/Long;)Lcom/google/api/services/calendar/model/Contract;

    .line 642
    :goto_2
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getColorOverride()Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    .line 643
    new-instance v3, Lcom/google/api/services/calendar/model/HabitData;

    invoke-direct {v3}, Lcom/google/api/services/calendar/model/HabitData;-><init>()V

    .line 645
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/services/calendar/model/HabitData;->setCustomName(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v3

    .line 646
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/services/calendar/model/HabitData;->setSummary(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v3

    .line 647
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/calendar/api/HabitSyncUtils;->apiTypeToServerType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/api/services/calendar/model/HabitData;->setType(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v3

    if-eqz v0, :cond_5

    .line 648
    invoke-virtual {v0}, Lcom/google/android/calendar/api/ColorDescriptor;->getColorId()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v3, v0}, Lcom/google/api/services/calendar/model/HabitData;->setColor(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v0

    .line 649
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getVisibility()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/calendar/api/HabitSyncUtils;->apiVisibilityToServerVisibility(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/api/services/calendar/model/HabitData;->setVisibility(Ljava/lang/String;)Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v0

    .line 650
    invoke-virtual {v0, v2}, Lcom/google/api/services/calendar/model/HabitData;->setContract(Lcom/google/api/services/calendar/model/Contract;)Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v2

    .line 651
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 652
    new-instance v0, Lcom/google/api/services/calendar/model/Reminders;

    invoke-direct {v0}, Lcom/google/api/services/calendar/model/Reminders;-><init>()V

    .line 653
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/api/services/calendar/model/Reminders;->setUseDefaultReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Reminders;

    move-result-object v0

    .line 654
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/calendar/api/HabitReminders;->enableFollowup:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/api/services/calendar/model/Reminders;->setEnableFollowup(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Reminders;

    move-result-object v0

    .line 655
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v3

    iget-boolean v3, v3, Lcom/google/android/calendar/api/HabitReminders;->enableRecommit:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/api/services/calendar/model/Reminders;->setEnableRecommit(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/Reminders;

    move-result-object v0

    .line 652
    invoke-virtual {v2, v0}, Lcom/google/api/services/calendar/model/HabitData;->setReminders(Lcom/google/api/services/calendar/model/Reminders;)Lcom/google/api/services/calendar/model/HabitData;

    .line 656
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/calendar/api/HabitReminders;->useDefaultReminders:Z

    if-nez v0, :cond_1

    .line 657
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    if-nez v0, :cond_6

    .line 658
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/HabitData;->getReminders()Lcom/google/api/services/calendar/model/Reminders;

    move-result-object v0

    .line 659
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 658
    invoke-virtual {v0, v3}, Lcom/google/api/services/calendar/model/Reminders;->setReminderOverrides(Ljava/util/List;)Lcom/google/api/services/calendar/model/Reminders;

    .line 670
    :cond_1
    :goto_4
    invoke-virtual {v1, v2}, Lcom/google/api/services/calendar/model/Habit;->setHabitData(Lcom/google/api/services/calendar/model/HabitData;)Lcom/google/api/services/calendar/model/Habit;

    .line 671
    return-object v1

    .line 620
    :cond_2
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_STRING:Ljava/lang/String;

    goto/16 :goto_0

    .line 621
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 640
    :cond_4
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_LONG:Ljava/lang/Long;

    invoke-virtual {v2, v0}, Lcom/google/api/services/calendar/model/Contract;->setUntilMillisUtc(Ljava/lang/Long;)Lcom/google/api/services/calendar/model/Contract;

    goto/16 :goto_2

    .line 648
    :cond_5
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_STRING:Ljava/lang/String;

    goto :goto_3

    .line 661
    :cond_6
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/HabitData;->getReminders()Lcom/google/api/services/calendar/model/Reminders;

    move-result-object v0

    new-instance v3, Lcom/google/api/services/calendar/model/ReminderInstance;

    invoke-direct {v3}, Lcom/google/api/services/calendar/model/ReminderInstance;-><init>()V

    const-string v4, "popup"

    .line 663
    invoke-virtual {v3, v4}, Lcom/google/api/services/calendar/model/ReminderInstance;->setMethod(Ljava/lang/String;)Lcom/google/api/services/calendar/model/ReminderInstance;

    move-result-object v3

    .line 664
    invoke-interface {p0}, Lcom/google/android/calendar/api/Habit;->getReminders()Lcom/google/android/calendar/api/HabitReminders;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/calendar/api/HabitReminders;->overrideMinutes:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Lcom/google/api/services/calendar/model/ReminderInstance;->setMinutes(Ljava/lang/Integer;)Lcom/google/api/services/calendar/model/ReminderInstance;

    move-result-object v3

    .line 661
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/api/services/calendar/model/Reminders;->setReminderOverrides(Ljava/util/List;)Lcom/google/api/services/calendar/model/Reminders;

    goto :goto_4

    .line 668
    :cond_7
    const-class v0, Lcom/google/api/services/calendar/model/Reminders;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/Reminders;

    invoke-virtual {v2, v0}, Lcom/google/api/services/calendar/model/HabitData;->setReminders(Lcom/google/api/services/calendar/model/Reminders;)Lcom/google/api/services/calendar/model/HabitData;

    goto :goto_4
.end method

.method private static apiTypeToServerType(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    sparse-switch p0, :sswitch_data_0

    .line 449
    sget-object v0, Lcom/google/android/calendar/api/HabitSyncUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x41

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unrecognized habit api type, falling back to unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 450
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 305
    :sswitch_0
    const-string v0, "unknown"

    goto :goto_0

    .line 308
    :sswitch_1
    const-string v0, "exercise"

    goto :goto_0

    .line 310
    :sswitch_2
    const-string v0, "exerciseWorkout"

    goto :goto_0

    .line 312
    :sswitch_3
    const-string v0, "exerciseRun"

    goto :goto_0

    .line 314
    :sswitch_4
    const-string v0, "exerciseWalk"

    goto :goto_0

    .line 316
    :sswitch_5
    const-string v0, "exerciseYoga"

    goto :goto_0

    .line 318
    :sswitch_6
    const-string v0, "exerciseHike"

    goto :goto_0

    .line 320
    :sswitch_7
    const-string v0, "exerciseSwim"

    goto :goto_0

    .line 322
    :sswitch_8
    const-string v0, "exerciseBike"

    goto :goto_0

    .line 324
    :sswitch_9
    const-string v0, "exerciseRockClimb"

    goto :goto_0

    .line 326
    :sswitch_a
    const-string v0, "exercisePlayTennis"

    goto :goto_0

    .line 328
    :sswitch_b
    const-string v0, "exercisePlayBadminton"

    goto :goto_0

    .line 330
    :sswitch_c
    const-string v0, "exercisePlayBaseball"

    goto :goto_0

    .line 332
    :sswitch_d
    const-string v0, "exercisePlayBasketball"

    goto :goto_0

    .line 334
    :sswitch_e
    const-string v0, "exercisePlaySoccer"

    goto :goto_0

    .line 336
    :sswitch_f
    const-string v0, "exerciseWiggleEars"

    goto :goto_0

    .line 339
    :sswitch_10
    const-string v0, "buildSkill"

    goto :goto_0

    .line 341
    :sswitch_11
    const-string v0, "buildSkillPracticeLanguageCustom"

    goto :goto_0

    .line 343
    :sswitch_12
    const-string v0, "buildSkillLearnToCode"

    goto :goto_0

    .line 345
    :sswitch_13
    const-string v0, "buildSkillMakeArtCustom"

    goto :goto_0

    .line 347
    :sswitch_14
    const-string v0, "buildSkillLearnInstrumentCustom"

    goto :goto_0

    .line 349
    :sswitch_15
    const-string v0, "buildSkillPracticePhotography"

    goto :goto_0

    .line 351
    :sswitch_16
    const-string v0, "buildSkillHoneCarpentrySkills"

    goto :goto_0

    .line 353
    :sswitch_17
    const-string v0, "buildSkillSing"

    goto :goto_0

    .line 355
    :sswitch_18
    const-string v0, "buildSkillLearnKnot"

    goto :goto_0

    .line 357
    :sswitch_19
    const-string v0, "buildSkillLearnNewSoftware"

    goto :goto_0

    .line 359
    :sswitch_1a
    const-string v0, "buildSkillCookSomethingNew"

    goto :goto_0

    .line 361
    :sswitch_1b
    const-string v0, "buildSkillLearnToDrive"

    goto :goto_0

    .line 363
    :sswitch_1c
    const-string v0, "buildSkillLearnToFly"

    goto :goto_0

    .line 366
    :sswitch_1d
    const-string v0, "friendsAndFamily"

    goto :goto_0

    .line 368
    :sswitch_1e
    const-string v0, "friendsAndFamilyReachOut"

    goto :goto_0

    .line 370
    :sswitch_1f
    const-string v0, "friendsAndFamilyEatWithFamily"

    goto :goto_0

    .line 372
    :sswitch_20
    const-string v0, "friendsAndFamilyCallMom"

    goto :goto_0

    .line 374
    :sswitch_21
    const-string v0, "friendsAndFamilyCallDad"

    goto :goto_0

    .line 376
    :sswitch_22
    const-string v0, "friendsAndFamilyPlanDate"

    goto :goto_0

    .line 378
    :sswitch_23
    const-string v0, "friendsAndFamilyGetDinnerWithFriends"

    goto :goto_0

    .line 380
    :sswitch_24
    const-string v0, "friendsAndFamilyVisitFamily"

    goto :goto_0

    .line 382
    :sswitch_25
    const-string v0, "friendsAndFamilyHaveBbq"

    goto :goto_0

    .line 384
    :sswitch_26
    const-string v0, "friendsAndFamilyPlayBoardGame"

    goto :goto_0

    .line 386
    :sswitch_27
    const-string v0, "friendsAndFamilyPlanReunion"

    goto :goto_0

    .line 388
    :sswitch_28
    const-string v0, "friendsAndFamilyPlanFamilyVacation"

    goto :goto_0

    .line 390
    :sswitch_29
    const-string v0, "friendsAndFamilyWalkTheDog"

    goto :goto_0

    .line 393
    :sswitch_2a
    const-string v0, "meTime"

    goto/16 :goto_0

    .line 395
    :sswitch_2b
    const-string v0, "meTimeRead"

    goto/16 :goto_0

    .line 397
    :sswitch_2c
    const-string v0, "meTimeMeditate"

    goto/16 :goto_0

    .line 399
    :sswitch_2d
    const-string v0, "meTimeHobbyCustom"

    goto/16 :goto_0

    .line 401
    :sswitch_2e
    const-string v0, "meTimeCook"

    goto/16 :goto_0

    .line 403
    :sswitch_2f
    const-string v0, "meTimeJournal"

    goto/16 :goto_0

    .line 405
    :sswitch_30
    const-string v0, "meTimePray"

    goto/16 :goto_0

    .line 407
    :sswitch_31
    const-string v0, "meTimeWatchMovie"

    goto/16 :goto_0

    .line 409
    :sswitch_32
    const-string v0, "meTimeTakeNap"

    goto/16 :goto_0

    .line 411
    :sswitch_33
    const-string v0, "meTimeGetMassage"

    goto/16 :goto_0

    .line 413
    :sswitch_34
    const-string v0, "meTimeSitInTheGrass"

    goto/16 :goto_0

    .line 415
    :sswitch_35
    const-string v0, "meTimeTakeTheBoatOut"

    goto/16 :goto_0

    .line 417
    :sswitch_36
    const-string v0, "meTimeLieInHammock"

    goto/16 :goto_0

    .line 419
    :sswitch_37
    const-string v0, "meTimeTakeSelfie"

    goto/16 :goto_0

    .line 422
    :sswitch_38
    const-string v0, "organizeMyLife"

    goto/16 :goto_0

    .line 424
    :sswitch_39
    const-string v0, "organizeMyLifePlanMyDay"

    goto/16 :goto_0

    .line 426
    :sswitch_3a
    const-string v0, "organizeMyLifeClean"

    goto/16 :goto_0

    .line 428
    :sswitch_3b
    const-string v0, "organizeMyLifeChores"

    goto/16 :goto_0

    .line 430
    :sswitch_3c
    const-string v0, "organizeMyLifeMakeTodoList"

    goto/16 :goto_0

    .line 432
    :sswitch_3d
    const-string v0, "organizeMyLifeBuyGroceries"

    goto/16 :goto_0

    .line 434
    :sswitch_3e
    const-string v0, "organizeMyLifeStudy"

    goto/16 :goto_0

    .line 436
    :sswitch_3f
    const-string v0, "organizeMyLifeDoLaundry"

    goto/16 :goto_0

    .line 438
    :sswitch_40
    const-string v0, "organizeMyLifeDoFinances"

    goto/16 :goto_0

    .line 440
    :sswitch_41
    const-string v0, "organizeMyLifePlanTheWeek"

    goto/16 :goto_0

    .line 442
    :sswitch_42
    const-string v0, "organizeMyLifePlanTheMonth"

    goto/16 :goto_0

    .line 444
    :sswitch_43
    const-string v0, "organizeMyLifeClearEmailInbox"

    goto/16 :goto_0

    .line 446
    :sswitch_44
    const-string v0, "organizeMyLifeCleanTheHouse"

    goto/16 :goto_0

    .line 303
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_1
        0x101 -> :sswitch_2
        0x102 -> :sswitch_3
        0x103 -> :sswitch_4
        0x104 -> :sswitch_5
        0x105 -> :sswitch_6
        0x106 -> :sswitch_8
        0x107 -> :sswitch_7
        0x108 -> :sswitch_9
        0x109 -> :sswitch_a
        0x10a -> :sswitch_b
        0x10b -> :sswitch_c
        0x10c -> :sswitch_d
        0x10d -> :sswitch_e
        0x10e -> :sswitch_f
        0x200 -> :sswitch_10
        0x201 -> :sswitch_11
        0x202 -> :sswitch_12
        0x203 -> :sswitch_14
        0x204 -> :sswitch_13
        0x205 -> :sswitch_15
        0x206 -> :sswitch_16
        0x207 -> :sswitch_17
        0x208 -> :sswitch_18
        0x209 -> :sswitch_19
        0x20a -> :sswitch_1a
        0x20b -> :sswitch_1b
        0x20c -> :sswitch_1c
        0x300 -> :sswitch_1d
        0x301 -> :sswitch_1e
        0x302 -> :sswitch_1f
        0x303 -> :sswitch_20
        0x304 -> :sswitch_21
        0x305 -> :sswitch_22
        0x306 -> :sswitch_23
        0x307 -> :sswitch_24
        0x308 -> :sswitch_25
        0x309 -> :sswitch_26
        0x30a -> :sswitch_27
        0x30b -> :sswitch_28
        0x30c -> :sswitch_29
        0x400 -> :sswitch_2a
        0x401 -> :sswitch_2b
        0x402 -> :sswitch_2c
        0x403 -> :sswitch_2d
        0x404 -> :sswitch_2e
        0x405 -> :sswitch_2f
        0x406 -> :sswitch_30
        0x407 -> :sswitch_31
        0x408 -> :sswitch_32
        0x409 -> :sswitch_33
        0x40a -> :sswitch_34
        0x40b -> :sswitch_35
        0x40c -> :sswitch_36
        0x40d -> :sswitch_37
        0x500 -> :sswitch_38
        0x501 -> :sswitch_39
        0x502 -> :sswitch_3a
        0x503 -> :sswitch_3b
        0x504 -> :sswitch_3c
        0x505 -> :sswitch_3d
        0x506 -> :sswitch_3e
        0x507 -> :sswitch_3f
        0x508 -> :sswitch_40
        0x509 -> :sswitch_41
        0x50a -> :sswitch_42
        0x50b -> :sswitch_43
        0x50c -> :sswitch_44
    .end sparse-switch
.end method

.method private static apiVisibilityToServerVisibility(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 499
    packed-switch p0, :pswitch_data_0

    .line 507
    sget-object v0, Lcom/google/android/calendar/api/HabitSyncUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x47

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unrecognized habit api visibility, falling back to default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 508
    const-string v0, "default"

    :goto_0
    return-object v0

    .line 501
    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    .line 503
    :pswitch_1
    const-string v0, "public"

    goto :goto_0

    .line 505
    :pswitch_2
    const-string v0, "private"

    goto :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static countHabitInstances(Landroid/content/ContentProviderClient;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 679
    .line 681
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/calendar/api/HabitSyncUtils;->HABIT_INSTANCE_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 683
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 684
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "Could not count habit instances"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_1

    .line 689
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 686
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 688
    if-eqz v1, :cond_3

    .line 689
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_3
    return v0

    .line 688
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_0
.end method

.method private static serverHabitDataToModification(Lcom/google/api/services/calendar/model/HabitData;Lcom/google/android/calendar/api/HabitModifications;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 513
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v2

    .line 514
    if-eqz p0, :cond_b

    .line 515
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitData;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 516
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitData;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/calendar/api/HabitModifications;->setSummary(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitModifications;

    .line 521
    :goto_0
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitData;->getVisibility()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitSyncUtils;->serverVisibilityToApiVisibility(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/calendar/api/HabitModifications;->setVisibility(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 522
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitData;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/HabitSyncUtils;->serverTypeToApiType(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/calendar/api/HabitModifications;->setType(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 525
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitData;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v1

    .line 527
    :goto_1
    if-eqz v0, :cond_f

    .line 531
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitModifications;->getDescriptor()Lcom/google/android/calendar/api/HabitDescriptor;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    invoke-virtual {v3}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 530
    invoke-static {v3, v0}, Lcom/google/android/calendar/api/ColorDescriptor;->createEventColorDescriptor(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v0

    .line 533
    :goto_2
    invoke-interface {p1, v0}, Lcom/google/android/calendar/api/HabitModifications;->setColorOverride(Lcom/google/android/calendar/api/ColorDescriptor;)Lcom/google/android/calendar/api/HabitModifications;

    .line 535
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitData;->getContract()Lcom/google/api/services/calendar/model/Contract;

    move-result-object v0

    .line 536
    if-eqz v0, :cond_9

    .line 537
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Contract;->getDurationMinutes()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Contract;->getDurationMinutes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/calendar/api/HabitContractModifications;->setDurationMinutes(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 540
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Contract;->getInterval()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 542
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Contract;->getInterval()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/calendar/api/HabitSyncUtils;->serverIntervalToApiInterval(Ljava/lang/String;)I

    move-result v3

    .line 541
    invoke-interface {v2, v3}, Lcom/google/android/calendar/api/HabitContractModifications;->setInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 544
    :cond_1
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Contract;->getNumInstancesPerInterval()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 546
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Contract;->getNumInstancesPerInterval()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 545
    invoke-interface {v2, v3}, Lcom/google/android/calendar/api/HabitContractModifications;->setNumInstancesPerInterval(I)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 548
    :cond_2
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Contract;->getUntilMillisUtc()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 549
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Contract;->getUntilMillisUtc()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/google/android/calendar/api/HabitContractModifications;->setUntilMillisUtc(J)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 551
    :cond_3
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Contract;->getTimePattern()Lcom/google/api/services/calendar/model/TimePattern;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 552
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Contract;->getTimePattern()Lcom/google/api/services/calendar/model/TimePattern;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/api/services/calendar/model/TimePattern;->getDailyPattern()Lcom/google/api/services/calendar/model/DailyPattern;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 553
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Contract;->getTimePattern()Lcom/google/api/services/calendar/model/TimePattern;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/TimePattern;->getDailyPattern()Lcom/google/api/services/calendar/model/DailyPattern;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/DailyPattern;->getMorning()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 555
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/DailyPattern;->getMorning()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/calendar/api/HabitContractModifications;->setMorningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 557
    :cond_4
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/DailyPattern;->getAfternoon()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 558
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/DailyPattern;->getAfternoon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/calendar/api/HabitContractModifications;->setAfternoonPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 560
    :cond_5
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/DailyPattern;->getEvening()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 561
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/DailyPattern;->getEvening()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/android/calendar/api/HabitContractModifications;->setEveningPreferable(Z)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 563
    :cond_6
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/DailyPattern;->getAny()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/DailyPattern;->getAny()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 564
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContractModifications;->isDailyPatternModified()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 565
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContractModifications;->isMorningPreferable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 566
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContractModifications;->isAfternoonPreferable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 567
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContractModifications;->isEveningPreferable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 568
    :cond_7
    sget-object v0, Lcom/google/android/calendar/api/HabitSyncUtils;->TAG:Ljava/lang/String;

    .line 569
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContractModifications;->isMorningPreferable()Z

    move-result v3

    .line 570
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContractModifications;->isAfternoonPreferable()Z

    move-result v4

    .line 571
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContractModifications;->isEveningPreferable()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x37

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Overriding previously set preference: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    .line 568
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 573
    :cond_8
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitContractModifications;->setAnyDayTimeAcceptable()Lcom/google/android/calendar/api/HabitContractModifications;

    .line 577
    :cond_9
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitData;->getReminders()Lcom/google/api/services/calendar/model/Reminders;

    move-result-object v2

    .line 578
    if-eqz v2, :cond_b

    .line 579
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Reminders;->getUseDefaultReminders()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 580
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Reminders;->getEnableRecommit()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 581
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Reminders;->getEnableFollowup()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 582
    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Reminders;->getReminderOverrides()Ljava/util/List;

    move-result-object v0

    .line 584
    if-nez v3, :cond_a

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 585
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/ReminderInstance;

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/ReminderInstance;->getMinutes()Ljava/lang/Integer;

    move-result-object v1

    .line 587
    :cond_a
    new-instance v0, Lcom/google/android/calendar/api/HabitReminders;

    invoke-direct {v0, v3, v1, v4, v5}, Lcom/google/android/calendar/api/HabitReminders;-><init>(ZLjava/lang/Integer;ZZ)V

    invoke-interface {p1, v0}, Lcom/google/android/calendar/api/HabitModifications;->setReminders(Lcom/google/android/calendar/api/HabitReminders;)Lcom/google/android/calendar/api/HabitModifications;

    .line 591
    :cond_b
    return-void

    .line 518
    :cond_c
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitData;->getCustomName()Ljava/lang/String;

    move-result-object v0

    .line 519
    if-nez v0, :cond_d

    const-string v0, ""

    :cond_d
    invoke-interface {p1, v0}, Lcom/google/android/calendar/api/HabitModifications;->setSummary(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitModifications;

    goto/16 :goto_0

    .line 525
    :cond_e
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/HabitData;->getColor()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_f
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public static serverHabitToApi(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/api/services/calendar/model/Habit;)Lcom/google/android/calendar/api/HabitModifications;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 595
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Habit;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 596
    new-instance v0, Lcom/google/android/calendar/api/HabitImpl$Modification;

    .line 597
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Habit;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/calendar/api/HabitImpl$Modification;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Habit;->getDeleted()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Habit;->getDeleted()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    const/4 v1, 0x3

    .line 599
    :cond_0
    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitModifications;->setDeletionStatus(I)Lcom/google/android/calendar/api/HabitModifications;

    .line 602
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Habit;->getEtag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 603
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Habit;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitModifications;->setFingerprint(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitModifications;

    .line 605
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/services/calendar/model/Habit;->getHabitData()Lcom/google/api/services/calendar/model/HabitData;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/calendar/api/HabitSyncUtils;->serverHabitDataToModification(Lcom/google/api/services/calendar/model/HabitData;Lcom/google/android/calendar/api/HabitModifications;)V

    .line 606
    return-object v0

    .line 595
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static serverIntervalToApiInterval(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 455
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 463
    sget-object v2, Lcom/google/android/calendar/api/HabitSyncUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unrecognized habit server interval, falling back to UNKNOWN: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 465
    :goto_2
    :pswitch_0
    return v0

    .line 455
    :sswitch_0
    const-string v4, "unknown"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "daily"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    goto :goto_0

    :sswitch_2
    const-string v4, "weekly"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 457
    goto :goto_2

    :pswitch_2
    move v0, v2

    .line 461
    goto :goto_2

    .line 463
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 455
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f307f7f -> :sswitch_2
        -0x10fa53b6 -> :sswitch_0
        0x5aede19 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static serverTypeToApiType(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 150
    if-nez p0, :cond_0

    move v0, v1

    .line 299
    :goto_0
    return v0

    .line 153
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 298
    sget-object v2, Lcom/google/android/calendar/api/HabitSyncUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unrecognized habit server type, falling back to UNKNOWN: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 299
    goto :goto_0

    .line 153
    :sswitch_0
    const-string v2, "unknown"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v2, "exercise"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "exerciseWorkout"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "exerciseRun"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "exerciseWalk"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "exerciseYoga"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "exerciseHike"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "exerciseSwim"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v2, "exerciseBike"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v2, "exerciseRockClimb"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "exercisePlayTennis"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "exercisePlayBadminton"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "exercisePlayBaseball"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "exercisePlayBasketball"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "exercisePlaySoccer"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "exerciseWiggleEars"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "buildSkill"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "buildSkillPracticeLanguageCustom"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "buildSkillLearnToCode"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "buildSkillMakeArtCustom"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "buildSkillLearnInstrumentCustom"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "buildSkillPracticePhotography"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "buildSkillHoneCarpentrySkills"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "buildSkillSing"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "buildSkillLearnKnot"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "buildSkillLearnNewSoftware"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string v2, "buildSkillCookSomethingNew"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string v2, "buildSkillLearnToDrive"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string v2, "buildSkillLearnToFly"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string v2, "friendsAndFamily"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_1e
    const-string v2, "friendsAndFamilyReachOut"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "friendsAndFamilyEatWithFamily"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "friendsAndFamilyCallMom"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "friendsAndFamilyCallDad"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "friendsAndFamilyPlanDate"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "friendsAndFamilyGetDinnerWithFriends"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_24
    const-string v2, "friendsAndFamilyVisitFamily"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_25
    const-string v2, "friendsAndFamilyHaveBbq"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "friendsAndFamilyPlayBoardGame"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_27
    const-string v2, "friendsAndFamilyPlanReunion"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_28
    const-string v2, "friendsAndFamilyPlanFamilyVacation"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_29
    const-string v2, "friendsAndFamilyWalkTheDog"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_2a
    const-string v2, "meTime"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_2b
    const-string v2, "meTimeRead"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x2b

    goto/16 :goto_1

    :sswitch_2c
    const-string v2, "meTimeMeditate"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x2c

    goto/16 :goto_1

    :sswitch_2d
    const-string v2, "meTimeHobbyCustom"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_2e
    const-string v2, "meTimeCook"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_2f
    const-string v2, "meTimeJournal"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_30
    const-string v2, "meTimePray"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_31
    const-string v2, "meTimeWatchMovie"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x31

    goto/16 :goto_1

    :sswitch_32
    const-string v2, "meTimeTakeNap"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x32

    goto/16 :goto_1

    :sswitch_33
    const-string v2, "meTimeGetMassage"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x33

    goto/16 :goto_1

    :sswitch_34
    const-string v2, "meTimeSitInTheGrass"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x34

    goto/16 :goto_1

    :sswitch_35
    const-string v2, "meTimeTakeTheBoatOut"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x35

    goto/16 :goto_1

    :sswitch_36
    const-string v2, "meTimeLieInHammock"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x36

    goto/16 :goto_1

    :sswitch_37
    const-string v2, "meTimeTakeSelfie"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x37

    goto/16 :goto_1

    :sswitch_38
    const-string v2, "organizeMyLife"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x38

    goto/16 :goto_1

    :sswitch_39
    const-string v2, "organizeMyLifePlanMyDay"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x39

    goto/16 :goto_1

    :sswitch_3a
    const-string v2, "organizeMyLifeClean"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x3a

    goto/16 :goto_1

    :sswitch_3b
    const-string v2, "organizeMyLifeChores"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x3b

    goto/16 :goto_1

    :sswitch_3c
    const-string v2, "organizeMyLifeMakeTodoList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x3c

    goto/16 :goto_1

    :sswitch_3d
    const-string v2, "organizeMyLifeBuyGroceries"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x3d

    goto/16 :goto_1

    :sswitch_3e
    const-string v2, "organizeMyLifeStudy"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x3e

    goto/16 :goto_1

    :sswitch_3f
    const-string v2, "organizeMyLifeDoLaundry"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x3f

    goto/16 :goto_1

    :sswitch_40
    const-string v2, "organizeMyLifeDoFinances"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x40

    goto/16 :goto_1

    :sswitch_41
    const-string v2, "organizeMyLifePlanTheWeek"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x41

    goto/16 :goto_1

    :sswitch_42
    const-string v2, "organizeMyLifePlanTheMonth"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x42

    goto/16 :goto_1

    :sswitch_43
    const-string v2, "organizeMyLifeClearEmailInbox"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x43

    goto/16 :goto_1

    :sswitch_44
    const-string v2, "organizeMyLifeCleanTheHouse"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v0, 0x44

    goto/16 :goto_1

    :pswitch_0
    move v0, v1

    .line 155
    goto/16 :goto_0

    .line 157
    :pswitch_1
    const/16 v0, 0x100

    goto/16 :goto_0

    .line 159
    :pswitch_2
    const/16 v0, 0x101

    goto/16 :goto_0

    .line 161
    :pswitch_3
    const/16 v0, 0x102

    goto/16 :goto_0

    .line 163
    :pswitch_4
    const/16 v0, 0x103

    goto/16 :goto_0

    .line 165
    :pswitch_5
    const/16 v0, 0x104

    goto/16 :goto_0

    .line 167
    :pswitch_6
    const/16 v0, 0x105

    goto/16 :goto_0

    .line 169
    :pswitch_7
    const/16 v0, 0x107

    goto/16 :goto_0

    .line 171
    :pswitch_8
    const/16 v0, 0x106

    goto/16 :goto_0

    .line 173
    :pswitch_9
    const/16 v0, 0x108

    goto/16 :goto_0

    .line 175
    :pswitch_a
    const/16 v0, 0x109

    goto/16 :goto_0

    .line 177
    :pswitch_b
    const/16 v0, 0x10a

    goto/16 :goto_0

    .line 179
    :pswitch_c
    const/16 v0, 0x10b

    goto/16 :goto_0

    .line 181
    :pswitch_d
    const/16 v0, 0x10c

    goto/16 :goto_0

    .line 183
    :pswitch_e
    const/16 v0, 0x10d

    goto/16 :goto_0

    .line 185
    :pswitch_f
    const/16 v0, 0x10e

    goto/16 :goto_0

    .line 188
    :pswitch_10
    const/16 v0, 0x200

    goto/16 :goto_0

    .line 190
    :pswitch_11
    const/16 v0, 0x201

    goto/16 :goto_0

    .line 192
    :pswitch_12
    const/16 v0, 0x202

    goto/16 :goto_0

    .line 194
    :pswitch_13
    const/16 v0, 0x204

    goto/16 :goto_0

    .line 196
    :pswitch_14
    const/16 v0, 0x203

    goto/16 :goto_0

    .line 198
    :pswitch_15
    const/16 v0, 0x205

    goto/16 :goto_0

    .line 200
    :pswitch_16
    const/16 v0, 0x206

    goto/16 :goto_0

    .line 202
    :pswitch_17
    const/16 v0, 0x207

    goto/16 :goto_0

    .line 204
    :pswitch_18
    const/16 v0, 0x208

    goto/16 :goto_0

    .line 206
    :pswitch_19
    const/16 v0, 0x209

    goto/16 :goto_0

    .line 208
    :pswitch_1a
    const/16 v0, 0x20a

    goto/16 :goto_0

    .line 210
    :pswitch_1b
    const/16 v0, 0x20b

    goto/16 :goto_0

    .line 212
    :pswitch_1c
    const/16 v0, 0x20c

    goto/16 :goto_0

    .line 215
    :pswitch_1d
    const/16 v0, 0x300

    goto/16 :goto_0

    .line 217
    :pswitch_1e
    const/16 v0, 0x301

    goto/16 :goto_0

    .line 219
    :pswitch_1f
    const/16 v0, 0x302

    goto/16 :goto_0

    .line 221
    :pswitch_20
    const/16 v0, 0x303

    goto/16 :goto_0

    .line 223
    :pswitch_21
    const/16 v0, 0x304

    goto/16 :goto_0

    .line 225
    :pswitch_22
    const/16 v0, 0x305

    goto/16 :goto_0

    .line 227
    :pswitch_23
    const/16 v0, 0x306

    goto/16 :goto_0

    .line 229
    :pswitch_24
    const/16 v0, 0x307

    goto/16 :goto_0

    .line 231
    :pswitch_25
    const/16 v0, 0x308

    goto/16 :goto_0

    .line 233
    :pswitch_26
    const/16 v0, 0x309

    goto/16 :goto_0

    .line 235
    :pswitch_27
    const/16 v0, 0x30a

    goto/16 :goto_0

    .line 237
    :pswitch_28
    const/16 v0, 0x30b

    goto/16 :goto_0

    .line 239
    :pswitch_29
    const/16 v0, 0x30c

    goto/16 :goto_0

    .line 242
    :pswitch_2a
    const/16 v0, 0x400

    goto/16 :goto_0

    .line 244
    :pswitch_2b
    const/16 v0, 0x401

    goto/16 :goto_0

    .line 246
    :pswitch_2c
    const/16 v0, 0x402

    goto/16 :goto_0

    .line 248
    :pswitch_2d
    const/16 v0, 0x403

    goto/16 :goto_0

    .line 250
    :pswitch_2e
    const/16 v0, 0x404

    goto/16 :goto_0

    .line 252
    :pswitch_2f
    const/16 v0, 0x405

    goto/16 :goto_0

    .line 254
    :pswitch_30
    const/16 v0, 0x406

    goto/16 :goto_0

    .line 256
    :pswitch_31
    const/16 v0, 0x407

    goto/16 :goto_0

    .line 258
    :pswitch_32
    const/16 v0, 0x408

    goto/16 :goto_0

    .line 260
    :pswitch_33
    const/16 v0, 0x409

    goto/16 :goto_0

    .line 262
    :pswitch_34
    const/16 v0, 0x40a

    goto/16 :goto_0

    .line 264
    :pswitch_35
    const/16 v0, 0x40b

    goto/16 :goto_0

    .line 266
    :pswitch_36
    const/16 v0, 0x40c

    goto/16 :goto_0

    .line 268
    :pswitch_37
    const/16 v0, 0x40d

    goto/16 :goto_0

    .line 271
    :pswitch_38
    const/16 v0, 0x500

    goto/16 :goto_0

    .line 273
    :pswitch_39
    const/16 v0, 0x501

    goto/16 :goto_0

    .line 275
    :pswitch_3a
    const/16 v0, 0x502

    goto/16 :goto_0

    .line 277
    :pswitch_3b
    const/16 v0, 0x503

    goto/16 :goto_0

    .line 279
    :pswitch_3c
    const/16 v0, 0x504

    goto/16 :goto_0

    .line 281
    :pswitch_3d
    const/16 v0, 0x505

    goto/16 :goto_0

    .line 283
    :pswitch_3e
    const/16 v0, 0x506

    goto/16 :goto_0

    .line 285
    :pswitch_3f
    const/16 v0, 0x507

    goto/16 :goto_0

    .line 287
    :pswitch_40
    const/16 v0, 0x508

    goto/16 :goto_0

    .line 289
    :pswitch_41
    const/16 v0, 0x509

    goto/16 :goto_0

    .line 291
    :pswitch_42
    const/16 v0, 0x50a

    goto/16 :goto_0

    .line 293
    :pswitch_43
    const/16 v0, 0x50b

    goto/16 :goto_0

    .line 295
    :pswitch_44
    const/16 v0, 0x50c

    goto/16 :goto_0

    .line 298
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 153
    :sswitch_data_0
    .sparse-switch
        -0x73838709 -> :sswitch_1c
        -0x7132ad42 -> :sswitch_26
        -0x6c224e4b -> :sswitch_e
        -0x6af536d9 -> :sswitch_a
        -0x68541b3d -> :sswitch_42
        -0x67859cf9 -> :sswitch_3f
        -0x5de801d1 -> :sswitch_40
        -0x589364cc -> :sswitch_37
        -0x4e109657 -> :sswitch_18
        -0x4cc46aff -> :sswitch_1e
        -0x44031021 -> :sswitch_15
        -0x41113964 -> :sswitch_39
        -0x4048b77b -> :sswitch_2a
        -0x37d7852f -> :sswitch_32
        -0x340dbe4e -> :sswitch_17
        -0x305eb10e -> :sswitch_2f
        -0x25ebe5e2 -> :sswitch_2d
        -0x249f634a -> :sswitch_36
        -0x225873a9 -> :sswitch_16
        -0x1e604c03 -> :sswitch_3c
        -0x1dd44a5d -> :sswitch_13
        -0x1cb7177d -> :sswitch_10
        -0x1c20e9f3 -> :sswitch_44
        -0x1c13c9fa -> :sswitch_31
        -0x1bd41227 -> :sswitch_8
        -0x1bd157ed -> :sswitch_6
        -0x1bcc2380 -> :sswitch_7
        -0x1bcaa43f -> :sswitch_4
        -0x1bc98798 -> :sswitch_5
        -0x123c1957 -> :sswitch_24
        -0x10fa53b6 -> :sswitch_0
        -0xd9fd61f -> :sswitch_3b
        -0xa656a5b -> :sswitch_2
        -0x97be8ef -> :sswitch_d
        -0x7f820a8 -> :sswitch_9
        0x31151e9 -> :sswitch_12
        0x3a63cd1 -> :sswitch_1a
        0xa45a16d -> :sswitch_2e
        0xa4b93df -> :sswitch_30
        0xa4c4bbb -> :sswitch_2b
        0xc293367 -> :sswitch_11
        0xcf11d26 -> :sswitch_19
        0x104cb809 -> :sswitch_35
        0x10cb6f03 -> :sswitch_34
        0x131e223a -> :sswitch_b
        0x156d0951 -> :sswitch_41
        0x1746c32d -> :sswitch_27
        0x2daf4ae0 -> :sswitch_2c
        0x30a6d193 -> :sswitch_3
        0x395f9abe -> :sswitch_3a
        0x399ed48d -> :sswitch_23
        0x3a44f23e -> :sswitch_3e
        0x436c7290 -> :sswitch_28
        0x441e0cda -> :sswitch_29
        0x45339206 -> :sswitch_1d
        0x49e283d9 -> :sswitch_14
        0x550d8070 -> :sswitch_3d
        0x564fc29d -> :sswitch_22
        0x5a9be24b -> :sswitch_38
        0x5ab278dc -> :sswitch_1f
        0x5ac4dbba -> :sswitch_33
        0x5f28750e -> :sswitch_1b
        0x6415099c -> :sswitch_c
        0x6637f2a0 -> :sswitch_f
        0x6a36df63 -> :sswitch_21
        0x6a3702e7 -> :sswitch_20
        0x733fbcc3 -> :sswitch_25
        0x7a9101d8 -> :sswitch_1
        0x7ba934ac -> :sswitch_43
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
    .end packed-switch
.end method

.method private static serverVisibilityToApiVisibility(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 483
    if-nez p0, :cond_0

    move v0, v1

    .line 495
    :goto_0
    :pswitch_0
    return v0

    .line 486
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 494
    sget-object v2, Lcom/google/android/calendar/api/HabitSyncUtils;->TAG:Ljava/lang/String;

    const-string v3, "Unrecognized habit server visibility, falling back to default: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 495
    goto :goto_0

    .line 486
    :sswitch_0
    const-string v4, "default"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "public"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v0

    goto :goto_1

    :sswitch_2
    const-string v4, "private"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 488
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 492
    goto :goto_0

    .line 494
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 486
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3a424d97 -> :sswitch_1
        -0x12beda7d -> :sswitch_2
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
