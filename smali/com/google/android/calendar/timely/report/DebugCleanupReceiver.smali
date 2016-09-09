.class public Lcom/google/android/calendar/timely/report/DebugCleanupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DebugCleanupReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/timely/report/DebugCleanupReceiver;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/calendar/timely/report/DebugCleanupReceiver;->deleteAllConsistencyReportFiles(Landroid/content/Context;)V

    return-void
.end method

.method private deleteAllConsistencyReportFiles(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 38
    const-string v4, "consistency_report"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    invoke-virtual {p1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/calendar/timely/report/DebugCleanupReceiver$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/timely/report/DebugCleanupReceiver$1;-><init>(Lcom/google/android/calendar/timely/report/DebugCleanupReceiver;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/report/DebugCleanupReceiver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    return-void
.end method
