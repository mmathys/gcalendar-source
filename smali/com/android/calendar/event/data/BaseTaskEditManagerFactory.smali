.class public Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;
.super Ljava/lang/Object;
.source "BaseTaskEditManagerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/CalendarEventModel;)Lcom/android/calendar/event/data/AbstractTaskEditManager;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/task/TimelineTask;)Lcom/android/calendar/event/data/AbstractTaskEditManager;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public newTask(Landroid/app/Activity;Landroid/app/LoaderManager;)Lcom/android/calendar/event/data/AbstractTaskEditManager;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public newTaskForAccount(Landroid/app/Activity;Landroid/app/LoaderManager;Ljava/lang/String;)Lcom/android/calendar/event/data/AbstractTaskEditManager;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public restoreTask(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/event/data/AbstractTaskEditManager;)Lcom/android/calendar/event/data/AbstractTaskEditManager;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method
