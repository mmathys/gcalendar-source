.class final Lcom/google/android/calendar/task/ArpTaskConnection;
.super Ljava/lang/Object;
.source "ArpTaskConnection.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/calendar/task/TaskConnection;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private volatile mGoogleApiClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/calendar/task/ArpTaskConnection;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskConnection;->mGoogleApiClientMap:Ljava/util/Map;

    .line 87
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ArpTaskConnection"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/calendar/task/ArpTaskConnection;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/task/ArpTaskConnection;Lcom/google/android/gms/reminders/model/Task;)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/ArpTaskConnection;->isReminderInstanceOfRecurrence(Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/task/ArpTaskConnection;Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)Lcom/google/android/gms/reminders/model/Task;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTaskFinish(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/task/ArpTaskConnection;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/RecurrenceInfo;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/ArpTaskConnection;->getInstanceRecurrenceInfo(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/task/ArpTaskConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadRecurrenceMasterByIdStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized disconnectAllClients()V
    .locals 3

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    const-string v0, "ArpTaskConnection"

    const-string v1, "disconnectAllClients called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskConnection;->mGoogleApiClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskConnection;->mGoogleApiClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    monitor-exit p0

    return-void
.end method

.method private static generateNewRecurrenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/google/android/calendar/task/ArpTaskConnection;->generateStringId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateNewTaskId()Lcom/google/android/gms/reminders/model/TaskId;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/google/android/gms/reminders/model/TaskId$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/TaskId$Builder;-><init>()V

    invoke-static {}, Lcom/google/android/calendar/task/ArpTaskConnection;->generateStringId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/TaskId$Builder;->setClientAssignedId(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/TaskId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/TaskId$Builder;->build()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v0

    return-object v0
.end method

.method public static generateStringId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 112
    const-string v0, "%s_%d_%x"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "CALENDAR"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/android/calendar/task/ArpTaskConnection;->sRandom:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 112
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getClient(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 4

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/calendar/task/ArpTaskConnection;->resetIdleTimeout()V

    .line 152
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskConnection;->mGoogleApiClientMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 153
    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/reminders/Reminders;->API:Lcom/google/android/gms/common/api/Api;

    .line 155
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskConnection;->mGoogleApiClientMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "ArpTaskConnection"

    const-string v2, "Creating new GoogleApiClient"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    monitor-exit p0

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getClientAndBlockUntilConnected(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 4

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskConnection;->getClient(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    const-string v1, "ArpTaskConnection"

    const-string v2, "Blocking connect to GoogleApiClient"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    .line 226
    :cond_0
    return-object v0
.end method

.method private getClientAndStartConnecting(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 4

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskConnection;->getClient(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    const-string v1, "ArpTaskConnection"

    const-string v2, "Connecting to GoogleApiClient"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 208
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 210
    :cond_0
    return-object v0
.end method

.method private getInstanceRecurrenceInfo(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/RecurrenceInfo;
    .locals 2

    .prologue
    .line 704
    if-nez p1, :cond_0

    .line 705
    const/4 v0, 0x0

    .line 708
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)V

    const/4 v1, 0x0

    .line 709
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->setMaster(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo$Builder;->build()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private getLoadTaskOptions(JJ)Lcom/google/android/gms/reminders/LoadRemindersOptions;
    .locals 3

    .prologue
    .line 717
    new-instance v0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;-><init>()V

    .line 718
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->setDueDateAfter(Ljava/lang/Long;)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    move-result-object v0

    .line 719
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->setDueDateBefore(Ljava/lang/Long;)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 720
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->setIncludeArchived(Z)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 721
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->setCollapseMode(I)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 722
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->setLoadReminderType([I)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    move-result-object v0

    .line 724
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->build()Lcom/google/android/gms/reminders/LoadRemindersOptions;

    move-result-object v0

    .line 717
    return-object v0

    .line 721
    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method private getRecurrenceEndDateTime(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/DateTime;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 801
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-nez v0, :cond_1

    .line 802
    const-string v0, "ArpTaskConnection"

    const-string v1, "task.getDueDate null in getRecurrenceEndDateTime"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 827
    :cond_0
    :goto_0
    return-object v4

    .line 805
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    if-nez v0, :cond_2

    .line 806
    const-string v0, "ArpTaskConnection"

    const-string v1, "task.getRecurrenceInfo null in getRecurrenceEndDateTime"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 810
    :cond_2
    invoke-static {p1}, Lcom/android/calendar/time/DateTimeService;->getNewInstance(Landroid/content/Context;)Lcom/android/calendar/time/DateTimeService;

    move-result-object v0

    .line 812
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    .line 811
    invoke-static {v1, v0}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->getDueTimeMillis(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)J

    move-result-wide v0

    .line 817
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrenceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 816
    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadInstancesByIdStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;

    .line 818
    invoke-direct {p0, v0, v4}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksGetBuffer(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/RemindersBuffer;

    move-result-object v1

    .line 819
    if-eqz v1, :cond_0

    .line 822
    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->get(I)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Task;

    .line 823
    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->release()V

    .line 824
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v4

    goto :goto_0
.end method

.method private static getRecurrenceTemplate(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    new-instance v0, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setDueDate(Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setTaskId(Lcom/google/android/gms/reminders/model/TaskId;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setRecurrenceInfo(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setLocation(Lcom/google/android/gms/reminders/model/Location;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method private getReferenceTimeMillis(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Ljava/lang/Long;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 747
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-nez v0, :cond_0

    .line 748
    const-string v0, "ArpTaskConnection"

    const-string v1, "task.getDueDate null in getReferenceTimeMillis"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 795
    :goto_0
    return-object v5

    .line 751
    :cond_0
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 752
    const-string v0, "ArpTaskConnection"

    const-string v1, "task.getRecurrenceInfo null in getReferenceTimeMillis"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 761
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/time/DateTimeService;->getNewInstance(Ljava/lang/String;)Lcom/android/calendar/time/DateTimeService;

    move-result-object v6

    .line 764
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    .line 763
    invoke-static {v0, v6}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->getDueTimeMillis(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)J

    move-result-wide v8

    .line 769
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrenceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 768
    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadInstancesByIdStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;

    .line 770
    invoke-direct {p0, v0, v5}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksGetBuffer(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/RemindersBuffer;

    move-result-object v1

    .line 771
    if-eqz v1, :cond_2

    .line 775
    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->get(I)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Task;

    .line 776
    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->release()V

    .line 780
    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    .line 781
    if-eqz v0, :cond_2

    .line 782
    invoke-static {v0, v6}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->getDueTimeMillis(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)J

    move-result-wide v0

    .line 787
    invoke-virtual {v6, v0, v1}, Lcom/android/calendar/time/DateTimeService;->dateTimeForMillis(J)Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    .line 788
    invoke-static {v0}, Lcom/android/calendar/time/DateTimeUtils;->roundUpToMidnight(Lcom/google/calendar/v2/client/service/api/time/DateTime;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    const-wide/16 v2, 0x1

    .line 789
    invoke-static {v2, v3}, Lcom/google/calendar/v2/client/service/api/time/Duration;->millis(J)Lcom/google/calendar/v2/client/service/api/time/Duration;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->minusDuration(Lcom/google/calendar/v2/client/service/api/time/Duration;)Lcom/google/calendar/v2/client/service/api/time/DateTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/time/DateTime;->getMillis()J

    move-result-wide v0

    .line 791
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    .line 795
    :cond_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0
.end method

.method private static getUpdateRecurrenceOptionsForAllFutureInstance(J)Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;-><init>()V

    const/4 v1, 0x1

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;->setUpdateMode(I)Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;->setReferenceTimeMillis(J)Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;->build()Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    move-result-object v0

    .line 138
    return-object v0
.end method

.method private isReminderExceptionalInstanceOfRecurrence(Lcom/google/android/gms/reminders/model/Task;)Z
    .locals 1

    .prologue
    .line 695
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 696
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getMaster()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getExceptional()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 695
    :goto_0
    return v0

    .line 697
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReminderInstanceOfRecurrence(Lcom/google/android/gms/reminders/model/Task;)Z
    .locals 1

    .prologue
    .line 689
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getMaster()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getExceptional()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 689
    :goto_0
    return v0

    .line 691
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadInstancesByIdStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 615
    new-instance v0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;-><init>()V

    .line 616
    invoke-virtual {v0, v3}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->setCollapseMode(I)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    move-result-object v0

    .line 617
    invoke-virtual {v0, p3}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->addRecurrenceId(Ljava/lang/String;)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    move-result-object v0

    .line 618
    invoke-virtual {v0, v2}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->setIncludeArchived(Z)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    move-result-object v0

    new-array v1, v2, [I

    aput v2, v1, v3

    .line 619
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->setLoadReminderType([I)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    move-result-object v0

    .line 620
    invoke-virtual {v0, v2}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->setSortOrder(I)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    move-result-object v0

    .line 622
    if-eqz p4, :cond_0

    .line 623
    invoke-virtual {v0, p4}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->setDueDateBefore(Ljava/lang/Long;)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    .line 626
    :cond_0
    if-eqz p5, :cond_1

    .line 627
    invoke-virtual {v0, p5}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->setDueDateAfter(Ljava/lang/Long;)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    .line 630
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->build()Lcom/google/android/gms/reminders/LoadRemindersOptions;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksStart(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/LoadRemindersOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method private loadRecurrenceMasterByIdStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    new-instance v0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;-><init>()V

    const/4 v1, 0x1

    .line 606
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->setCollapseMode(I)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    move-result-object v0

    .line 607
    invoke-virtual {v0, p3}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->addRecurrenceId(Ljava/lang/String;)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->build()Lcom/google/android/gms/reminders/LoadRemindersOptions;

    move-result-object v0

    .line 609
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksStart(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/LoadRemindersOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method private loadTaskFinish(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)Lcom/google/android/gms/reminders/model/Task;
    .locals 2

    .prologue
    .line 641
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksFinish(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;I)[Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 642
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private varargs loadTasksByIdStart(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 594
    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p3, v0

    .line 595
    new-instance v4, Lcom/google/android/gms/reminders/model/TaskId$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/reminders/model/TaskId$Builder;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/android/gms/reminders/model/TaskId$Builder;->setClientAssignedId(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/TaskId$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/reminders/model/TaskId$Builder;->build()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_0
    new-instance v2, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;-><init>()V

    .line 598
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/reminders/model/TaskId;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/reminders/model/TaskId;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->setTaskIds([Lcom/google/android/gms/reminders/model/TaskId;)Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->build()Lcom/google/android/gms/reminders/LoadRemindersOptions;

    move-result-object v0

    .line 600
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksStart(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/LoadRemindersOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method private loadTasksFinish(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;I)[Lcom/google/android/gms/reminders/model/Task;
    .locals 4

    .prologue
    .line 648
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksGetBuffer(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/RemindersBuffer;

    move-result-object v3

    .line 649
    if-nez v3, :cond_0

    .line 650
    const/4 v0, 0x0

    .line 658
    :goto_0
    return-object v0

    .line 653
    :cond_0
    new-array v1, p2, [Lcom/google/android/gms/reminders/model/Task;

    .line 654
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 655
    invoke-virtual {v3, v2}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->get(I)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Task;

    aput-object v0, v1, v2

    .line 654
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 657
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->release()V

    move-object v0, v1

    .line 658
    goto :goto_0
.end method

.method private loadTasksGetBuffer(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/RemindersBuffer;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 664
    invoke-interface {p1}, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 665
    const-string v1, "ArpTaskConnection"

    const-string v2, "loadTask failed"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 685
    :goto_0
    return-object v0

    .line 668
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;->getRemindersBuffer()Lcom/google/android/gms/reminders/model/RemindersBuffer;

    move-result-object v1

    .line 671
    if-eqz v1, :cond_1

    .line 672
    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    .line 673
    :cond_1
    if-eqz v1, :cond_2

    .line 674
    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->release()V

    .line 676
    :cond_2
    const-string v1, "ArpTaskConnection"

    const-string v2, "loadTask succeeded but no tasks loaded"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 681
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->getCount()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 682
    const-string v1, "ArpTaskConnection"

    const-string v2, "loadTask succeeded but the number of tasks different than expected"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 685
    goto :goto_0
.end method

.method private loadTasksStart(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/LoadRemindersOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/reminders/LoadRemindersOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 635
    sget-object v0, Lcom/google/android/gms/reminders/Reminders;->RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;

    .line 636
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskConnection;->getClientAndStartConnecting(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 635
    invoke-interface {v0, v1, p3}, Lcom/google/android/gms/reminders/RemindersApi;->loadReminders(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/LoadRemindersOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method private resetIdleTimeout()V
    .locals 4

    .prologue
    const/16 v1, 0x64

    .line 182
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskConnection;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    return-void
.end method


# virtual methods
.method public createTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Z
    .locals 5

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskConnection;->getClientAndBlockUntilConnected(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 348
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p3

    .line 353
    :goto_0
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v2

    .line 354
    if-eqz v2, :cond_1

    .line 355
    sget-object v3, Lcom/google/android/gms/reminders/Reminders;->RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;

    invoke-static {}, Lcom/google/android/calendar/task/ArpTaskConnection;->generateNewRecurrenceId()Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-interface {v2}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->getRecurrenceTemplate(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 355
    invoke-interface {v3, v1, v4, v2, v0}, Lcom/google/android/gms/reminders/RemindersApi;->createRecurrence(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Recurrence;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 357
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    .line 359
    :goto_1
    return v0

    .line 351
    :cond_0
    new-instance v0, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v0, p3}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    .line 349
    invoke-static {}, Lcom/google/android/calendar/task/ArpTaskConnection;->generateNewTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/reminders/model/Task$Builder;->setTaskId(Lcom/google/android/gms/reminders/model/TaskId;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    const/4 v2, 0x7

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/reminders/model/Task$Builder;->setTaskList(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_1
    sget-object v2, Lcom/google/android/gms/reminders/Reminders;->RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/reminders/RemindersApi;->createReminder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    goto :goto_1
.end method

.method public deleteRecurrence(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Z
    .locals 6

    .prologue
    .line 574
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskConnection;->getClientAndBlockUntilConnected(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 576
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v2

    .line 577
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/task/ArpTaskConnection;->getReferenceTimeMillis(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Ljava/lang/Long;

    move-result-object v0

    .line 578
    if-nez v0, :cond_0

    .line 579
    const-string v3, "ArpTaskConnection"

    const-string v4, "deleteRecurrence failed because failing to calculate referenceTimeMillis"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 583
    :cond_0
    if-nez p4, :cond_1

    .line 585
    sget-object v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->ALL_INSTANCES_OPTION:Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    .line 587
    :goto_0
    sget-object v3, Lcom/google/android/gms/reminders/Reminders;->RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;

    invoke-interface {v2}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrenceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2, v0}, Lcom/google/android/gms/reminders/RemindersApi;->deleteRecurrence(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 588
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    .line 587
    return v0

    .line 586
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/calendar/task/ArpTaskConnection;->getUpdateRecurrenceOptionsForAllFutureInstance(J)Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public deleteTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Z
    .locals 3

    .prologue
    .line 567
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskConnection;->getClientAndBlockUntilConnected(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    .line 568
    sget-object v1, Lcom/google/android/gms/reminders/Reminders;->RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;

    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/reminders/RemindersApi;->deleteReminder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/TaskId;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 190
    :pswitch_0
    const-string v0, "ArpTaskConnection"

    const-string v1, "Idle timeout - disconnecting"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 191
    invoke-direct {p0}, Lcom/google/android/calendar/task/ArpTaskConnection;->disconnectAllClients()V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public loadTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;)V
    .locals 3

    .prologue
    .line 252
    new-instance v0, Lcom/google/android/calendar/task/ArpTaskConnection$1;

    invoke-direct {v0, p0, p4, p1, p2}, Lcom/google/android/calendar/task/ArpTaskConnection$1;-><init>(Lcom/google/android/calendar/task/ArpTaskConnection;Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksByIdStart(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    new-instance v2, Lcom/google/android/calendar/task/ArpTaskConnection$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/calendar/task/ArpTaskConnection$2;-><init>(Lcom/google/android/calendar/task/ArpTaskConnection;Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 289
    return-void
.end method

.method public loadTaskSynchronous(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/reminders/model/Task;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 293
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksByIdStart(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTaskFinish(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v2

    .line 294
    invoke-direct {p0, v2}, Lcom/google/android/calendar/task/ArpTaskConnection;->isReminderInstanceOfRecurrence(Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    if-eqz v2, :cond_0

    new-instance v0, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setRecurrenceInfo(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 295
    goto :goto_0

    .line 299
    :cond_1
    invoke-interface {v2}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrenceId()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadRecurrenceMasterByIdStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;

    .line 298
    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTaskFinish(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 301
    new-instance v1, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v1, v2}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    .line 302
    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->getInstanceRecurrenceInfo(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setRecurrenceInfo(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public loadTasks(Landroid/content/Context;Ljava/lang/String;JJLcom/google/android/calendar/task/TaskConnection$TasksLoadListener;)V
    .locals 3

    .prologue
    .line 309
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/google/android/calendar/task/ArpTaskConnection;->getLoadTaskOptions(JJ)Lcom/google/android/gms/reminders/LoadRemindersOptions;

    move-result-object v0

    .line 312
    sget-object v1, Lcom/google/android/gms/reminders/Reminders;->RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskConnection;->getClientAndStartConnecting(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/reminders/RemindersApi;->loadReminders(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/LoadRemindersOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 314
    new-instance v1, Lcom/google/android/calendar/task/ArpTaskConnection$3;

    invoke-direct {v1, p0, p7}, Lcom/google/android/calendar/task/ArpTaskConnection$3;-><init>(Lcom/google/android/calendar/task/ArpTaskConnection;Lcom/google/android/calendar/task/TaskConnection$TasksLoadListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 325
    return-void
.end method

.method public loadTasksSynchronous(Landroid/content/Context;Ljava/lang/String;JJ)Lcom/google/android/gms/reminders/model/RemindersBuffer;
    .locals 3

    .prologue
    .line 330
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/google/android/calendar/task/ArpTaskConnection;->getLoadTaskOptions(JJ)Lcom/google/android/gms/reminders/LoadRemindersOptions;

    move-result-object v0

    .line 334
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksStart(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/LoadRemindersOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;

    .line 335
    invoke-interface {v0}, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    const-string v0, "ArpTaskConnection"

    const-string v1, "loadTask failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;->getRemindersBuffer()Lcom/google/android/gms/reminders/model/RemindersBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 231
    const-string v0, "ArpTaskConnection"

    const-string v1, "GoogleApiClient connected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 232
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .prologue
    .line 241
    const-string v0, "ArpTaskConnection"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GoogleApiClient connection failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 242
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    .prologue
    .line 236
    const-string v0, "ArpTaskConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x31

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient connection suspended: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 237
    return-void
.end method

.method public snoozeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 455
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskConnection;->getClientAndBlockUntilConnected(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    .line 456
    new-array v0, v5, [Ljava/lang/String;

    aput-object p3, v0, v1

    .line 457
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksByIdStart(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTaskFinish(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 458
    if-nez v0, :cond_0

    move v0, v1

    .line 474
    :goto_0
    return v0

    .line 462
    :cond_0
    const/4 v3, 0x0

    .line 463
    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/time/TimeZoneImpl;->getTimeZone(Ljava/lang/String;)Lcom/android/calendar/time/TimeZoneImpl;

    move-result-object v3

    .line 464
    new-instance v4, Lcom/android/calendar/time/DateTimeImpl;

    invoke-direct {v4, p4, p5, v3}, Lcom/android/calendar/time/DateTimeImpl;-><init>(JLcom/google/calendar/v2/client/service/api/time/TimeZone;)V

    .line 467
    invoke-static {v0}, Lcom/google/android/calendar/task/TaskUtils;->shouldDueDateBeAbsolute(Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v3

    .line 466
    invoke-static {v4, v1, v3}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->fromCalendarDateTime(Lcom/google/calendar/v2/client/service/api/time/DateTime;ZZ)Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    .line 469
    new-instance v3, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v3, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    .line 470
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->setSnoozed(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 471
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setDueDate(Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 474
    sget-object v1, Lcom/google/android/gms/reminders/Reminders;->RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/reminders/RemindersApi;->updateReminder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    goto :goto_0
.end method

.method public updateRecurrence(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/model/Task;I)Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 480
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskConnection;->getClientAndBlockUntilConnected(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 482
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v5

    .line 483
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/calendar/task/ArpTaskConnection;->getReferenceTimeMillis(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Ljava/lang/Long;

    move-result-object v2

    .line 484
    if-nez v2, :cond_0

    .line 485
    const-string v0, "ArpTaskConnection"

    const-string v4, "UpdateRecurrence failed because failing to calculate referenceTimeMillis"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 489
    :cond_0
    if-nez p5, :cond_1

    .line 491
    sget-object v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->ALL_INSTANCES_OPTION:Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    .line 494
    :goto_0
    invoke-interface {p4}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v4

    if-nez v4, :cond_3

    .line 496
    new-instance v0, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v0, p4}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    .line 497
    invoke-static {}, Lcom/google/android/calendar/task/ArpTaskConnection;->generateNewTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setTaskId(Lcom/google/android/gms/reminders/model/TaskId;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 507
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/google/android/calendar/task/ArpTaskConnection;->deleteRecurrence(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 560
    :goto_1
    return v3

    .line 492
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/calendar/task/ArpTaskConnection;->getUpdateRecurrenceOptionsForAllFutureInstance(J)Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    move-result-object v0

    goto :goto_0

    .line 510
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->createTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v3

    goto :goto_1

    .line 516
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 517
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-gez v2, :cond_5

    const/4 v2, 0x1

    .line 518
    :goto_2
    invoke-interface {v5}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v4

    .line 519
    invoke-interface {p4}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v8

    .line 518
    invoke-static {v4, v8}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz p5, :cond_4

    if-eqz v2, :cond_6

    .line 522
    :cond_4
    sget-object v2, Lcom/google/android/gms/reminders/Reminders;->RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;

    invoke-interface {v5}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrenceId()Ljava/lang/String;

    move-result-object v3

    .line 523
    invoke-static {p4}, Lcom/google/android/calendar/task/ArpTaskConnection;->getRecurrenceTemplate(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v4

    .line 522
    invoke-interface {v2, v1, v3, v4, v0}, Lcom/google/android/gms/reminders/RemindersApi;->updateRecurrence(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 524
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v3

    goto :goto_1

    :cond_5
    move v2, v3

    .line 517
    goto :goto_2

    .line 531
    :cond_6
    if-eqz v2, :cond_9

    .line 532
    invoke-static {v6, v7}, Lcom/google/android/calendar/task/ArpTaskConnection;->getUpdateRecurrenceOptionsForAllFutureInstance(J)Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    move-result-object v6

    .line 535
    :goto_3
    invoke-interface {p4}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v4

    .line 540
    invoke-interface {v5}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 541
    invoke-interface {v4}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 542
    invoke-interface {v4}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd;->getNumOccurrences()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 545
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/calendar/task/ArpTaskConnection;->getRecurrenceEndDateTime(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    .line 546
    if-nez v0, :cond_7

    .line 547
    const-string v2, "ArpTaskConnection"

    const-string v7, "updateRecurrence failed because failing to calculate recurrenceEndDate"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v7, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 551
    :cond_7
    new-instance v2, Lcom/google/android/gms/reminders/model/Recurrence$Builder;

    invoke-direct {v2, v4}, Lcom/google/android/gms/reminders/model/Recurrence$Builder;-><init>(Lcom/google/android/gms/reminders/model/Recurrence;)V

    new-instance v3, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;

    .line 553
    invoke-interface {v4}, Lcom/google/android/gms/reminders/model/Recurrence;->getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceEnd;)V

    const/4 v4, 0x0

    .line 554
    invoke-virtual {v3, v4}, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->setNumOccurrences(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;

    move-result-object v3

    .line 555
    invoke-virtual {v3, v0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->setEndDateTime(Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;

    move-result-object v0

    .line 556
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/RecurrenceEnd$Builder;->build()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v0

    .line 552
    invoke-virtual {v2, v0}, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->setRecurrenceEnd(Lcom/google/android/gms/reminders/model/RecurrenceEnd;)Lcom/google/android/gms/reminders/model/Recurrence$Builder;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Recurrence$Builder;->build()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v4

    .line 560
    :cond_8
    sget-object v0, Lcom/google/android/gms/reminders/Reminders;->RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;

    invoke-interface {v5}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrenceId()Ljava/lang/String;

    move-result-object v2

    .line 561
    invoke-static {}, Lcom/google/android/calendar/task/ArpTaskConnection;->generateNewRecurrenceId()Ljava/lang/String;

    move-result-object v3

    .line 562
    invoke-static {p4}, Lcom/google/android/calendar/task/ArpTaskConnection;->getRecurrenceTemplate(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v5

    .line 560
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/reminders/RemindersApi;->changeRecurrence(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Recurrence;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v3

    goto/16 :goto_1

    :cond_9
    move-object v6, v0

    goto :goto_3
.end method

.method public updateTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/model/Task;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-direct {p0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskConnection;->getClientAndBlockUntilConnected(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 368
    invoke-interface {p4}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v4

    .line 369
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz v4, :cond_2

    .line 378
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 379
    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/reminders/model/TaskId;->getClientAssignedId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 378
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksByIdStart(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;

    .line 378
    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTaskFinish(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    .line 381
    invoke-direct {p0, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->isReminderExceptionalInstanceOfRecurrence(Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/calendar/task/ArpTaskConnection;->deleteTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 393
    :goto_0
    return v0

    .line 385
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/calendar/task/ArpTaskConnection;->createTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v0

    goto :goto_0

    .line 387
    :cond_1
    sget-object v0, Lcom/google/android/gms/reminders/Reminders;->RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;

    invoke-interface {p3}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v2

    .line 388
    invoke-static {}, Lcom/google/android/calendar/task/ArpTaskConnection;->generateNewRecurrenceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v4

    .line 389
    invoke-static {p4}, Lcom/google/android/calendar/task/ArpTaskConnection;->getRecurrenceTemplate(Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v5

    .line 387
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/reminders/RemindersApi;->makeTaskRecurring(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/TaskId;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Recurrence;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    goto :goto_0

    .line 393
    :cond_2
    sget-object v0, Lcom/google/android/gms/reminders/Reminders;->RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;

    invoke-interface {v0, v1, p4}, Lcom/google/android/gms/reminders/RemindersApi;->updateReminder(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    goto :goto_0
.end method

.method public varargs updateTasksDoneStatus(Landroid/content/Context;Ljava/lang/String;Z[Ljava/lang/String;)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;
    .locals 18

    .prologue
    .line 399
    invoke-direct/range {p0 .. p2}, Lcom/google/android/calendar/task/ArpTaskConnection;->getClientAndBlockUntilConnected(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v8

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksByIdStart(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;

    move-object/from16 v0, p4

    array-length v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/calendar/task/ArpTaskConnection;->loadTasksFinish(Lcom/google/android/gms/reminders/RemindersApi$LoadRemindersResult;I)[Lcom/google/android/gms/reminders/model/Task;

    move-result-object v9

    .line 403
    if-nez v9, :cond_0

    .line 404
    new-instance v4, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;-><init>(Z)V

    .line 448
    :goto_0
    return-object v4

    .line 408
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 409
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 411
    array-length v12, v9

    const/4 v4, 0x0

    move v7, v4

    :goto_1
    if-ge v7, v12, :cond_4

    aget-object v6, v9, v7

    .line 412
    new-instance v13, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v13, v6}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    .line 413
    const/4 v4, 0x0

    .line 414
    if-eqz p3, :cond_1

    .line 415
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/google/android/gms/reminders/model/Task$Builder;->setPinned(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 416
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/google/android/gms/reminders/model/Task$Builder;->setSnoozed(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 417
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/google/android/gms/reminders/model/Task$Builder;->setArchived(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/google/android/gms/reminders/model/Task$Builder;->setArchivedTimeMs(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 444
    :goto_2
    invoke-virtual {v13}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1

    .line 423
    :cond_1
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/google/android/gms/reminders/model/Task$Builder;->setPinned(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 424
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/google/android/gms/reminders/model/Task$Builder;->setArchived(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 426
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/time/DateTimeService;->getNewInstance(Landroid/content/Context;)Lcom/android/calendar/time/DateTimeService;

    move-result-object v14

    .line 427
    const/4 v5, 0x0

    .line 428
    invoke-interface {v6}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 430
    invoke-interface {v6}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v4

    .line 429
    invoke-static {v4, v14}, Lcom/google/android/calendar/task/ArpTaskDateTimeInCalendar;->getDueTimeMillis(Lcom/google/android/gms/reminders/model/DateTime;Lcom/android/calendar/time/DateTimeService;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 431
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v4, v14, v16

    if-lez v4, :cond_5

    .line 432
    const/4 v4, 0x1

    move v5, v4

    move-object v4, v6

    .line 436
    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    .line 437
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/google/android/gms/reminders/model/Task$Builder;->setSnoozed(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    goto :goto_2

    .line 439
    :cond_3
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/google/android/gms/reminders/model/Task$Builder;->setSnoozed(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 440
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Lcom/google/android/gms/reminders/model/Task$Builder;->setDueDate(Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/Task$Builder;

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_2

    .line 448
    :cond_4
    new-instance v5, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;

    sget-object v4, Lcom/google/android/gms/reminders/Reminders;->RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;

    invoke-interface {v4, v8, v10}, Lcom/google/android/gms/reminders/RemindersApi;->batchUpdateReminder(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v4

    .line 449
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v4

    invoke-direct {v5, v4, v11}, Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;-><init>(ZLjava/util/List;)V

    move-object v4, v5

    .line 448
    goto/16 :goto_0

    :cond_5
    move-object v4, v6

    goto :goto_3
.end method
