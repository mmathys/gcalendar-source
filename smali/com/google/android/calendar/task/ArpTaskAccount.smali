.class final Lcom/google/android/calendar/task/ArpTaskAccount;
.super Ljava/lang/Object;
.source "ArpTaskAccount.java"

# interfaces
.implements Lcom/google/android/calendar/task/TaskAccount;
.implements Lcom/google/android/calendar/task/TaskConnection$TasksLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/task/ArpTaskAccount$AsyncNotifyListener;,
        Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;,
        Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;,
        Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessTasks;
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mAccountColor:I

.field protected mBackgroundTimeLineTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/calendar/task/ArpTimelineTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field protected volatile mEmptyTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

.field private mEndMillis:J

.field private mIsVisible:Z

.field private final mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

.field private final mListener:Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;

.field private final mLoadTagQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldProfile:Z

.field private mStartMillis:J

.field private final mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

.field private mTaskMonthDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/calendar/task/TaskConnection;Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mAccountColor:I

    .line 106
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mAccount:Landroid/accounts/Account;

    .line 108
    iput-object p3, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    .line 109
    iput-object p4, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mListener:Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;

    .line 110
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mLoadTagQueue:Ljava/util/Queue;

    .line 112
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/calendar/task/ArpTaskAccount;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mLoadTagQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/task/ArpTaskAccount;)Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mListener:Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/task/ArpTaskAccount;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/calendar/task/ArpTaskAccount;)Lcom/android/calendar/latency/LatencyLogger;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/calendar/task/ArpTaskAccount;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/calendar/task/ArpTaskAccount;)Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method private loadTasksInternal(JJLjava/util/List;ZZLjava/lang/Integer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;",
            ">;ZZ",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    iget-boolean v2, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mIsVisible:Z

    .line 142
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mIsVisible:Z

    .line 144
    iget-boolean v3, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z

    if-eqz v3, :cond_2

    .line 145
    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/16 v3, 0x64

    invoke-interface {v2, v3}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 158
    :cond_0
    iput-wide p1, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mStartMillis:J

    .line 159
    iput-wide p3, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mEndMillis:J

    .line 160
    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/calendar/task/TaskUtils;->getTaskCalendarColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mAccountColor:I

    .line 161
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mTaskMonthDataList:Ljava/util/List;

    .line 163
    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mLoadTagQueue:Ljava/util/Queue;

    move-object/from16 v0, p8

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v3, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    iget-object v4, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v5

    move-wide v6, p1

    move-wide v8, p3

    move-object v10, p0

    invoke-interface/range {v3 .. v10}, Lcom/google/android/calendar/task/TaskConnection;->loadTasks(Landroid/content/Context;Ljava/lang/String;JJLcom/google/android/calendar/task/TaskConnection$TasksLoadListener;)V

    .line 165
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p6

    move/from16 v9, p7

    .line 147
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/calendar/task/ArpTaskAccount;->shouldLoad(JJZZ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    iget-boolean v3, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mIsVisible:Z

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskAccount;->getTasks()Lcom/google/android/calendar/task/TaskAccount$Tasks;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 152
    new-instance v2, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncNotifyListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncNotifyListener;-><init>(Lcom/google/android/calendar/task/ArpTaskAccount;Lcom/google/android/calendar/task/ArpTaskAccount$1;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncNotifyListener;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTasks()Lcom/google/android/calendar/task/TaskAccount$Tasks;
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mEmptyTasks:Lcom/google/android/calendar/task/TaskAccount$Tasks;

    goto :goto_0
.end method

.method public loadTasks(JJLjava/util/List;ZZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/task/ArpTaskDataManager$TaskMonthData;",
            ">;ZZI)V"
        }
    .end annotation

    .prologue
    .line 72
    .line 73
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 72
    invoke-direct/range {v1 .. v9}, Lcom/google/android/calendar/task/ArpTaskAccount;->loadTasksInternal(JJLjava/util/List;ZZLjava/lang/Integer;)V

    .line 74
    return-void
.end method

.method public onTasksChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/reminders/model/ReminderEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mListener:Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;

    invoke-interface {v0, p0}, Lcom/google/android/calendar/task/TaskAccount$TaskAccountListener;->onTaskAccountChanged(Lcom/google/android/calendar/task/TaskAccount;)V

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 129
    :cond_1
    new-instance v0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mTaskMonthDataList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;-><init>(Lcom/google/android/calendar/task/ArpTaskAccount;Ljava/util/List;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessChangedTasks;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    return-void
.end method

.method public onTasksLoaded(Lcom/google/android/gms/reminders/model/RemindersBuffer;)V
    .locals 3

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 99
    :cond_0
    new-instance v0, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;

    iget-object v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mTaskMonthDataList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;-><init>(Lcom/google/android/calendar/task/ArpTaskAccount;Ljava/util/List;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/reminders/model/RemindersBuffer;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/ArpTaskAccount$AsyncProcessLoadedTasks;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void
.end method

.method public setShouldProfile(Z)V
    .locals 0

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mShouldProfile:Z

    .line 134
    return-void
.end method

.method public shouldLoad(JJZZ)Z
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskAccount;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/calendar/task/TaskUtils;->getTaskCalendarColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 80
    if-eqz p5, :cond_1

    iget-wide v2, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mStartMillis:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mEndMillis:J

    cmp-long v1, p3, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/calendar/task/ArpTaskAccount;->mAccountColor:I

    if-ne v0, v1, :cond_0

    if-eqz p6, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
