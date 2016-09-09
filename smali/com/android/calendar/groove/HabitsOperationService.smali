.class public Lcom/android/calendar/groove/HabitsOperationService;
.super Landroid/app/IntentService;
.source "HabitsOperationService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "HabitsOperationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private populateUntilMillisUtc()V
    .locals 8

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/calendar/api/HabitClient;->list(Lcom/google/android/calendar/api/HabitFilterOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitClient$ListResult;

    .line 35
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitClient$ListResult;->getHabits()[Lcom/google/android/calendar/api/Habit;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 38
    aget-object v2, v1, v0

    .line 40
    invoke-interface {v2}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 41
    invoke-interface {v2}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/calendar/api/HabitContract;->getUntilMillisUtc()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 42
    sget-object v3, Lcom/google/android/calendar/api/CalendarApi;->HabitFactory:Lcom/google/android/calendar/api/HabitFactory;

    .line 43
    invoke-interface {v3, v2}, Lcom/google/android/calendar/api/HabitFactory;->modifyHabit(Lcom/google/android/calendar/api/Habit;)Lcom/google/android/calendar/api/HabitModifications;

    move-result-object v2

    .line 44
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitModifications;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 48
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitModifications;->getContractModifications()Lcom/google/android/calendar/api/HabitContractModifications;

    move-result-object v3

    .line 49
    invoke-interface {v2}, Lcom/google/android/calendar/api/HabitModifications;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/calendar/api/HabitContract;->getUntilMillisUtc()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/google/android/calendar/api/HabitContractModifications;->setUntilMillisUtc(J)Lcom/google/android/calendar/api/HabitContractModifications;

    .line 51
    :cond_0
    sget-object v3, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    invoke-interface {v3, v2}, Lcom/google/android/calendar/api/HabitClient;->update(Lcom/google/android/calendar/api/HabitModifications;)Lcom/google/android/gms/common/api/PendingResult;

    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 24
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 29
    :goto_1
    invoke-static {p1}, Lcom/android/calendar/groove/HabitsOperationReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 30
    return-void

    .line 24
    :pswitch_0
    const-string v2, "com.google.android.calendar.intent.action.POPULATE_UNTIL_MILLIS_UTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 26
    :pswitch_1
    invoke-direct {p0}, Lcom/android/calendar/groove/HabitsOperationService;->populateUntilMillisUtc()V

    goto :goto_1

    .line 24
    nop

    :pswitch_data_0
    .packed-switch -0xbab4dae
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
