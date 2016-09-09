.class public Lcom/google/android/calendar/task/TaskDataFactory;
.super Lcom/android/calendar/task/BaseTaskDataFactory;
.source "TaskDataFactory.java"


# instance fields
.field private mCurrent:Lcom/google/android/calendar/task/ArpTaskDataManager;

.field private mCurrentTaskConnection:Lcom/google/android/calendar/task/TaskConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/calendar/task/BaseTaskDataFactory;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/google/android/calendar/task/TaskDataFactory;->mCurrent:Lcom/google/android/calendar/task/ArpTaskDataManager;

    .line 38
    iput-object v0, p0, Lcom/google/android/calendar/task/TaskDataFactory;->mCurrentTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    return-void
.end method

.method public static areTasksEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 173
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isAccountEnabled(Landroid/accounts/Account;)Z
    .locals 2

    .prologue
    .line 158
    const-string v0, "com.google"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAccountEnabled(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 166
    const-string v0, "com.google"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public areCreationOfTasksSupported(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 140
    invoke-static {p1}, Lcom/google/android/calendar/task/TaskDataFactory;->areTasksEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getDefaultTaskAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areTasksSupported(Landroid/accounts/Account;)Z
    .locals 1

    .prologue
    .line 150
    invoke-static {p1}, Lcom/google/android/calendar/task/TaskDataFactory;->isAccountEnabled(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method public getInstanceWidgetTaskLoader(Landroid/content/Context;)Lcom/android/calendar/widget/WidgetTaskLoader;
    .locals 2

    .prologue
    .line 51
    new-instance v1, Lcom/google/android/calendar/task/ArpWidgetTaskLoader;

    invoke-virtual {p0}, Lcom/google/android/calendar/task/TaskDataFactory;->getTaskConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskConnection;

    invoke-direct {v1, p1, v0}, Lcom/google/android/calendar/task/ArpWidgetTaskLoader;-><init>(Landroid/content/Context;Lcom/google/android/calendar/task/TaskConnection;)V

    return-object v1
.end method

.method public getLoaderCallbacks(Landroid/content/Context;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 6
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
    .line 181
    new-instance v0, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;

    .line 182
    invoke-virtual {p0}, Lcom/google/android/calendar/task/TaskDataFactory;->getTaskConnection()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/calendar/task/TaskConnection;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/task/ArpTaskLoaderUtils$LoaderCallbacks;-><init>(Landroid/content/Context;Lcom/google/android/calendar/task/TaskConnection;Lcom/android/calendar/timely/TimelineItem;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/task/BaseTaskDataFactory$OnSetModelResultListener;)V

    .line 181
    return-object v0
.end method

.method public declared-synchronized getTaskConnection()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/task/TaskDataFactory;->mCurrentTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/google/android/calendar/task/ArpTaskConnection;

    invoke-direct {v0}, Lcom/google/android/calendar/task/ArpTaskConnection;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/task/TaskDataFactory;->mCurrentTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/TaskDataFactory;->mCurrentTaskConnection:Lcom/google/android/calendar/task/TaskConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTaskDataManager(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/timely/MonthData;[Lcom/android/calendar/timely/MonthData;)Lcom/android/calendar/task/BaseTaskDataManager;
    .locals 2

    .prologue
    .line 44
    new-instance v1, Lcom/google/android/calendar/task/ArpTaskDataManager;

    invoke-virtual {p0}, Lcom/google/android/calendar/task/TaskDataFactory;->getTaskConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskConnection;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/google/android/calendar/task/ArpTaskDataManager;-><init>(Landroid/app/Activity;Lcom/google/android/calendar/task/TaskConnection;Lcom/android/calendar/timely/MonthData;[Lcom/android/calendar/timely/MonthData;)V

    iput-object v1, p0, Lcom/google/android/calendar/task/TaskDataFactory;->mCurrent:Lcom/google/android/calendar/task/ArpTaskDataManager;

    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/task/TaskDataFactory;->mCurrent:Lcom/google/android/calendar/task/ArpTaskDataManager;

    return-object v0
.end method

.method public getTaskEditManagerFactory()Lcom/android/calendar/event/data/BaseTaskEditManagerFactory;
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;->getInstance()Lcom/google/android/calendar/task/edit/TimelyTaskEditManagerFactory;

    move-result-object v0

    return-object v0
.end method

.method public loadTimelineItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/calendar/timely/TimelineItem;
    .locals 1

    .prologue
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/calendar/task/TaskDataFactory;->getTaskConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskConnection;

    .line 65
    invoke-static {p1, v0, p2, p3}, Lcom/google/android/calendar/task/ArpTaskLoaderUtils;->loadTimelineItem(Landroid/content/Context;Lcom/google/android/calendar/task/TaskConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/android/calendar/timely/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public onTasksChanged(Ljava/util/List;)V
    .locals 1
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
    .line 92
    iget-object v0, p0, Lcom/google/android/calendar/task/TaskDataFactory;->mCurrent:Lcom/google/android/calendar/task/ArpTaskDataManager;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/task/TaskDataFactory;->mCurrent:Lcom/google/android/calendar/task/ArpTaskDataManager;

    invoke-virtual {v0, p1}, Lcom/google/android/calendar/task/ArpTaskDataManager;->onTasksChanged(Ljava/util/List;)V

    goto :goto_0
.end method

.method public searchTasks(Ljava/lang/String;Lcom/android/calendar/search/OnSearchQueryFinishedListener;)V
    .locals 8

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/calendar/task/TaskDataFactory;->mCurrent:Lcom/google/android/calendar/task/ArpTaskDataManager;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/android/calendar/search/OnSearchQueryFinishedListener;->onSearchQueryFinished(Lcom/android/calendar/search/SearchQueryHandler$SearchResults;)V

    .line 123
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v4, p0, Lcom/google/android/calendar/task/TaskDataFactory;->mCurrent:Lcom/google/android/calendar/task/ArpTaskDataManager;

    monitor-enter v4

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/google/android/calendar/task/TaskDataFactory;->mCurrent:Lcom/google/android/calendar/task/ArpTaskDataManager;

    invoke-virtual {v0}, Lcom/google/android/calendar/task/ArpTaskDataManager;->getAllTasks()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 115
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 117
    invoke-interface {v0, v1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    new-instance v0, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;

    invoke-direct {v0, v3}, Lcom/android/calendar/search/SearchQueryHandler$SearchResults;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v0}, Lcom/android/calendar/search/OnSearchQueryFinishedListener;->onSearchQueryFinished(Lcom/android/calendar/search/SearchQueryHandler$SearchResults;)V

    goto :goto_0
.end method

.method public snoozeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 6

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/calendar/task/TaskDataFactory;->getTaskConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskConnection;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 83
    invoke-interface/range {v0 .. v5}, Lcom/google/android/calendar/task/TaskConnection;->snoozeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    .line 82
    return v0
.end method

.method public varargs updateTasksDoneStatus(Landroid/content/Context;Ljava/lang/String;Z[Ljava/lang/String;)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/android/calendar/task/TaskDataFactory;->getTaskConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/TaskConnection;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/calendar/task/TaskConnection;->updateTasksDoneStatus(Landroid/content/Context;Ljava/lang/String;Z[Ljava/lang/String;)Lcom/android/calendar/task/TimelineTaskType$UpdateTasksDoneResult;

    move-result-object v0

    return-object v0
.end method
