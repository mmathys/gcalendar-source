.class public Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;
.super Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;
.source "TimelyTaskEditManagerFactory.java"


# static fields
.field private static instance:Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;->instance:Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;-><init>()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;->instance:Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;

    invoke-direct {v0}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;-><init>()V

    sput-object v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;->instance:Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;

    .line 24
    :cond_0
    sget-object v0, Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;->instance:Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;

    return-object v0
.end method


# virtual methods
.method public loadTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/event/data/AbstractTaskEditManager;
    .locals 1

    .prologue
    .line 36
    invoke-static {p1, p2, p3}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->loadTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/CalendarEventModel;)Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    move-result-object v0

    return-object v0
.end method

.method public loadTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/task/TimelineTask;)Lcom/android/calendar/event/data/AbstractTaskEditManager;
    .locals 1

    .prologue
    .line 30
    invoke-static {p1, p2, p3}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->loadTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/task/TimelineTask;)Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    move-result-object v0

    return-object v0
.end method

.method public newTask(Landroid/app/Activity;Landroid/app/LoaderManager;)Lcom/android/calendar/event/data/AbstractTaskEditManager;
    .locals 1

    .prologue
    .line 41
    invoke-static {p1, p2}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->newTask(Landroid/app/Activity;Landroid/app/LoaderManager;)Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    move-result-object v0

    return-object v0
.end method

.method public newTaskForAccount(Landroid/app/Activity;Landroid/app/LoaderManager;Ljava/lang/String;)Lcom/android/calendar/event/data/AbstractTaskEditManager;
    .locals 1

    .prologue
    .line 47
    invoke-static {p1, p2, p3}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->newTaskForAccount(Landroid/app/Activity;Landroid/app/LoaderManager;Ljava/lang/String;)Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    move-result-object v0

    return-object v0
.end method

.method public restoreTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/data/AbstractTaskEditManager;)Lcom/android/calendar/event/data/AbstractTaskEditManager;
    .locals 1

    .prologue
    .line 53
    check-cast p3, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    invoke-static {p1, p2, p3}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;->restoreTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;)Lcom/google/android/calendar/task/edit/TimelyTaskEditManager;

    move-result-object v0

    return-object v0
.end method
