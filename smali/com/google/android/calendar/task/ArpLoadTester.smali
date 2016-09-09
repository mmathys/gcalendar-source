.class final Lcom/google/android/calendar/task/ArpLoadTester;
.super Ljava/lang/Object;
.source "ArpLoadTester.java"

# interfaces
.implements Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;


# static fields
.field private static final mAccountNames:[Ljava/lang/String;


# instance fields
.field private final mArpTaskDataManager:Lcom/google/android/calendar/task/ArpTaskDataManager;

.field private final mContext:Landroid/content/Context;

.field private final mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

.field private mShouldProfile:Z

.field private mTask:Lcom/google/android/gms/reminders/model/Task;

.field private final mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

.field private final mTodayMonthData:Lcom/android/calendar/timely/MonthData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/calendar/task/ArpLoadTester;->mAccountNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/calendar/task/TaskConnection;Lcom/android/calendar/timely/MonthData;Lcom/google/android/calendar/task/ArpTaskDataManager;)V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    .line 117
    iput-object p3, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    .line 118
    iput-object p4, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mArpTaskDataManager:Lcom/google/android/calendar/task/ArpTaskDataManager;

    .line 119
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    .line 120
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpLoadTester;->isProfiling()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mShouldProfile:Z

    .line 121
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/calendar/task/ArpLoadTester;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mShouldProfile:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/calendar/task/ArpLoadTester;Lcom/google/android/gms/reminders/model/Task;)Lcom/google/android/gms/reminders/model/Task;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTask:Lcom/google/android/gms/reminders/model/Task;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/calendar/task/ArpLoadTester;Lcom/google/android/calendar/task/TaskAccount;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/calendar/task/ArpLoadTester;->loadAccount(Lcom/google/android/calendar/task/TaskAccount;)V

    return-void
.end method

.method private isProfilingChange()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method private loadAccount(Lcom/google/android/calendar/task/TaskAccount;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 202
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v0

    add-int/lit16 v6, v0, -0x16e

    .line 203
    const/16 v0, 0x16e

    .line 205
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthData;->getEndDay()I

    move-result v1

    add-int v8, v1, v0

    move-object v0, p1

    .line 209
    check-cast v0, Lcom/google/android/calendar/task/ArpTaskAccount;

    invoke-direct {p0}, Lcom/google/android/calendar/task/ArpLoadTester;->isProfilingChange()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v7

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->setShouldProfile(Z)V

    .line 211
    invoke-static {v6}, Lcom/android/calendar/Utils;->getMillisFromJulianDay(I)J

    move-result-wide v2

    .line 212
    invoke-static {v8}, Lcom/android/calendar/Utils;->getMillisFromJulianDay(I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTodayMonthData:Lcom/android/calendar/timely/MonthData;

    .line 213
    invoke-static {v0, v6, v8}, Lcom/google/android/calendar/task/ArpTaskDataManager;->generateTaskMonthDataList(Lcom/android/calendar/timely/MonthData;II)Ljava/util/List;

    move-result-object v6

    move-object v1, p1

    move v8, v7

    .line 211
    invoke-interface/range {v1 .. v9}, Lcom/google/android/calendar/task/TaskAccount;->loadTasks(JJLjava/util/List;ZZI)V

    .line 217
    return-void

    :cond_0
    move v1, v9

    .line 209
    goto :goto_0
.end method

.method public static logLoadEnd(Ljava/lang/String;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 124
    const-string v0, "ArpLoadTester"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "nShownTasks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    const-string v0, "ArpLoadTester"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "nFilteredTasks: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 126
    const-string v1, "ArpLoadTester"

    const-string v2, "Done account: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 127
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private testAccount(Lcom/google/android/calendar/task/TaskAccount;I)V
    .locals 4

    .prologue
    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 178
    new-instance v1, Lcom/google/android/calendar/task/ArpLoadTester$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/calendar/task/ArpLoadTester$1;-><init>(Lcom/google/android/calendar/task/ArpLoadTester;Lcom/google/android/calendar/task/TaskAccount;)V

    add-int/lit8 v2, p2, 0x1

    mul-int/lit16 v2, v2, 0x7530

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    return-void
.end method


# virtual methods
.method public isProfiling()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public logUpdatedAnalytics()V
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mShouldProfile:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/16 v1, 0xce

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 170
    :cond_0
    return-void
.end method

.method public logUpdatedMothData()V
    .locals 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mShouldProfile:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/16 v1, 0xcc

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public logUpdatedSearch()V
    .locals 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mShouldProfile:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/16 v1, 0xcd

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public onTaskAccountChanged(Lcom/google/android/calendar/task/TaskAccount;)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public onTaskAccountLoaded(Lcom/google/android/calendar/task/TaskAccount;Ljava/lang/Integer;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mShouldProfile:Z

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/google/android/calendar/task/ArpLoadTester;->isProfilingChange()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTask:Lcom/google/android/gms/reminders/model/Task;

    if-nez v0, :cond_2

    .line 229
    new-instance v0, Lcom/google/android/gms/reminders/model/Task$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;-><init>()V

    const-string v1, "Calendar Profile"

    .line 230
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/reminders/model/TaskId$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/reminders/model/TaskId$Builder;-><init>()V

    const-string v2, "CALENDAR_PROFILE_REMINDER"

    .line 232
    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/TaskId$Builder;->setClientAssignedId(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/TaskId$Builder;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/TaskId$Builder;->build()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setTaskId(Lcom/google/android/gms/reminders/model/TaskId;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setTaskList(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/reminders/model/DateTime$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;-><init>()V

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setAbsoluteTimeMs(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->build()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Task$Builder;->setDueDate(Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/Task$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Task$Builder;->build()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTask:Lcom/google/android/gms/reminders/model/Task;

    move-object v0, p1

    .line 241
    check-cast v0, Lcom/google/android/calendar/task/ArpTaskAccount;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/ArpTaskAccount;->setShouldProfile(Z)V

    .line 242
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 244
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/calendar/task/TaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/calendar/task/TaskConnection;->createTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/calendar/task/TaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/calendar/task/TaskConnection;->deleteTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Z

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mArpTaskDataManager:Lcom/google/android/calendar/task/ArpTaskDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/calendar/task/ArpTaskDataManager;->onTaskAccountLoaded(Lcom/google/android/calendar/task/TaskAccount;Ljava/lang/Integer;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/16 v1, 0xcf

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 255
    iput-boolean v2, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mShouldProfile:Z

    move-object v0, p1

    .line 256
    check-cast v0, Lcom/google/android/calendar/task/ArpTaskAccount;

    invoke-virtual {v0, v2}, Lcom/google/android/calendar/task/ArpTaskAccount;->setShouldProfile(Z)V

    .line 259
    invoke-direct {p0}, Lcom/google/android/calendar/task/ArpLoadTester;->isProfilingChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/google/android/calendar/task/TaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTask:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/calendar/task/TaskConnection;->deleteTask(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Task;)Z

    goto/16 :goto_0
.end method

.method public run(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpLoadTester;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    return-void

    .line 134
    :cond_1
    const-string v0, "ArpLoadTester"

    const-string v1, "Starting profiling"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 135
    invoke-static {p1}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v5

    .line 136
    sget-object v0, Lcom/google/android/calendar/task/ArpLoadTester;->mAccountNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 139
    array-length v7, v5

    move v4, v2

    move v0, v2

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v1, v5, v4

    .line 140
    invoke-static {v1}, Lcom/google/android/calendar/task/TaskDataFactory;->isAccountEnabled(Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    new-instance v8, Lcom/google/android/calendar/task/ArpTaskAccount;

    iget-object v3, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/calendar/task/ArpLoadTester;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    invoke-direct {v8, v3, v1, v9, p0}, Lcom/google/android/calendar/task/ArpTaskAccount;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/calendar/task/TaskConnection;Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;)V

    move v1, v2

    .line 143
    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 144
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v8, v0}, Lcom/google/android/calendar/task/ArpLoadTester;->testAccount(Lcom/google/android/calendar/task/TaskAccount;I)V

    .line 143
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1

    .line 139
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0
.end method
