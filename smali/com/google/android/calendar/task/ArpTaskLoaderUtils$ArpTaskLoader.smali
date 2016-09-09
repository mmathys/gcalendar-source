.class final Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;
.super Landroid/content/Loader;
.source "ArpTaskLoaderUtils.java"

# interfaces
.implements Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/task/ArpTaskLoaderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArpTaskLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Lcom/google/android/calendar/task/ArpExtendedTaskSetup;",
        ">;",
        "Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

.field private final mTaskId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/calendar/task/TaskConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 123
    iput-object p2, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    .line 124
    iput-object p3, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->mAccountName:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->mTaskId:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 130
    invoke-super {p0}, Landroid/content/Loader;->onStartLoading()V

    .line 131
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->mTaskId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/google/android/calendar/task/TaskConnection;->loadTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/calendar/task/TaskConnection$TaskLoadListener;)V

    .line 132
    return-void
.end method

.method public onTaskLoaded(Lcom/google/android/gms/reminders/model/Task;)V
    .locals 9

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-static {}, Lcom/android/calendar/time/DateTimeService;->getInstance()Lcom/android/calendar/time/DateTimeService;

    move-result-object v5

    .line 138
    new-instance v1, Lcom/google/android/calendar/task/ArpExtendedTaskSetup;

    iget-object v3, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->mAccountName:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->mAccountName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/calendar/task/TaskUtils;->getTaskCalendarColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 140
    invoke-virtual {v5}, Lcom/android/calendar/time/DateTimeService;->today()Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v6

    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    .line 141
    invoke-virtual {p0}, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v8

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/calendar/task/ArpExtendedTaskSetup;-><init>(Lcom/google/android/gms/reminders/model/Task;Ljava/lang/String;ILcom/android/calendar/time/DateTimeService;JZ)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->TAG:Ljava/lang/String;

    const-string v1, "Loader RemindersResult empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
