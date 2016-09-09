.class public Lcom/android/calendar/task/BaseTaskDataFactory;
.super Ljava/lang/Object;
.source "BaseTaskDataFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areCreationOfTasksSupported(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public areTasksSupported(Landroid/accounts/Account;)Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getInstanceWidgetTaskLoader(Landroid/content/Context;)Lcom/android/calendar/widget/WidgetTaskLoader;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoaderCallbacks(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/calendar/timely/TimelineItem;",
            "Lcom/android/calendar/event/CalendarEventModel;",
            "Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;",
            ")",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskConnection()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskDataManager(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/timely/MonthData;[Lcom/android/calendar/timely/MonthData;)Lcom/android/calendar/task/BaseTaskDataManager;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskEditManagerFactory()Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchTasks(Ljava/lang/String;Lcom/android/calendar/search/OnSearchQueryFinishedListener;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/android/calendar/search/OnSearchQueryFinishedListener;->onSearchQueryFinished(Lcom/android/calendar/search/SearchQueryHandler$SearchResults;)V

    .line 58
    return-void
.end method

.method public varargs updateTasksDoneStatus(Landroid/content/Context;Ljava/lang/String;Z[Ljava/lang/String;)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method
