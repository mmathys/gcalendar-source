.class final Lcom/google/android/calendar/task/ArpTaskLoaderUtils;
.super Ljava/lang/Object;
.source "ArpTaskLoaderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/task/ArpTaskLoaderUtils$ArpTaskLoader;,
        Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadTimelineItem(Landroid/content/Context;Lcom/google/android/calendar/task/TaskConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/android/calendar/timely/TimelineItem;
    .locals 9

    .prologue
    .line 34
    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/calendar/task/TaskConnection;->loadTaskSynchronous(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/reminders/model/Task;

    move-result-object v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    sget-object v0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils;->TAG:Ljava/lang/String;

    const-string v1, "Unable to find task %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 37
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/time/DateTimeService;->getNewInstance(Landroid/content/Context;)Lcom/android/calendar/time/DateTimeService;

    move-result-object v5

    .line 43
    new-instance v1, Lcom/google/android/calendar/task/ArpTaskSetup;

    .line 44
    invoke-static {p0, p2}, Lcom/google/android/calendar/task/TaskUtils;->getTaskCalendarColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 45
    invoke-virtual {v5}, Lcom/android/calendar/time/DateTimeService;->today()Lcom/android/calendar/time/DateTimeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/time/DateTimeImpl;->getMillis()J

    move-result-wide v6

    sget-object v0, Lcom/google/android/calendar/experiments/ExperimentConfiguration;->PROJECT_DUBAI:Lcom/google/android/calendar/experiments/Experiment;

    .line 46
    invoke-virtual {v0, p0}, Lcom/google/android/calendar/experiments/Experiment;->isActive(Landroid/content/Context;)Z

    move-result v8

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/calendar/task/ArpTaskSetup;-><init>(Lcom/google/android/gms/reminders/model/Task;Ljava/lang/String;ILcom/android/calendar/time/DateTimeService;JZ)V

    .line 48
    new-instance v0, Lcom/google/android/calendar/task/ArpTimelineTask;

    invoke-direct {v0, v1}, Lcom/google/android/calendar/task/ArpTimelineTask;-><init>(Lcom/google/android/calendar/task/ArpTaskSetup;)V

    goto :goto_0
.end method
