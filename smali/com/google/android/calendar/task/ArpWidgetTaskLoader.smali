.class public Lcom/google/android/calendar/task/ArpWidgetTaskLoader;
.super Ljava/lang/Object;
.source "ArpWidgetTaskLoader.java"

# interfaces
.implements Lcom/android/calendar/widget/WidgetTaskLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/task/ArpWidgetTaskLoader$TaskResults;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/calendar/task/TaskConnection;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/calendar/task/ArpWidgetTaskLoader;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/google/android/calendar/task/ArpWidgetTaskLoader;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/task/ArpWidgetTaskLoader;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpWidgetTaskLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public loadTasks(Lcom/android/calendar/widget/WidgetTaskLoader$TaskProcessor;)V
    .locals 14

    .prologue
    .line 40
    invoke-interface {p1}, Lcom/android/calendar/widget/WidgetTaskLoader$TaskProcessor;->getStartDay()I

    move-result v0

    add-int/lit16 v8, v0, -0x16e

    .line 41
    invoke-interface {p1}, Lcom/android/calendar/widget/WidgetTaskLoader$TaskProcessor;->getEndDay()I

    move-result v9

    .line 42
    invoke-static {v8}, Lcom/android/calendar/Utils;->getMillisFromJulianDay(I)J

    move-result-wide v4

    .line 43
    invoke-static {v9}, Lcom/android/calendar/Utils;->getMillisFromJulianDay(I)J

    move-result-wide v6

    .line 44
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpWidgetTaskLoader;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v10

    .line 46
    iget-object v0, p0, Lcom/google/android/calendar/task/ArpWidgetTaskLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v11

    array-length v12, v11

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v12, :cond_2

    aget-object v1, v11, v0

    .line 47
    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 48
    invoke-static {v1}, Lcom/google/android/calendar/task/TaskDataFactory;->isAccountEnabled(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    invoke-virtual {v10, v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->areTasksVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/google/android/calendar/task/ArpWidgetTaskLoader;->mTaskConnection:Lcom/google/android/calendar/task/TaskConnection;

    iget-object v2, p0, Lcom/google/android/calendar/task/ArpWidgetTaskLoader;->mContext:Landroid/content/Context;

    .line 54
    invoke-interface/range {v1 .. v7}, Lcom/google/android/calendar/task/TaskConnection;->loadTasksSynchronous(Landroid/content/Context;Ljava/lang/String;JJ)Lcom/google/android/gms/reminders/model/RemindersBuffer;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 64
    :try_start_0
    new-instance v2, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;

    iget-object v13, p0, Lcom/google/android/calendar/task/ArpWidgetTaskLoader;->mContext:Landroid/content/Context;

    invoke-direct {v2, v13, v1, v3}, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;-><init>(Landroid/content/Context;Lcom/google/android/gms/reminders/model/RemindersBuffer;Ljava/lang/String;)V

    .line 68
    new-instance v3, Lcom/google/android/calendar/task/ArpWidgetTaskLoader$TaskResults;

    .line 69
    invoke-interface {p1}, Lcom/android/calendar/widget/WidgetTaskLoader$TaskProcessor;->getStorage()Lcom/android/calendar/timely/RangedData$EventResults;

    move-result-object v13

    invoke-direct {v3, p0, v13, v8, v9}, Lcom/google/android/calendar/task/ArpWidgetTaskLoader$TaskResults;-><init>(Lcom/google/android/calendar/task/ArpWidgetTaskLoader;Lcom/android/calendar/timely/RangedData$EventResults;II)V

    .line 70
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 71
    invoke-virtual {v2}, Lcom/google/android/calendar/task/ArpRemindersBufferIterator;->next()Lcom/google/android/calendar/task/ArpTimelineTask;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/google/android/calendar/task/ArpWidgetTaskLoader$TaskResults;->addTimelineItem(Lcom/android/calendar/timely/TimelineItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->release()V

    throw v0

    .line 73
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/calendar/task/ArpWidgetTaskLoader$TaskResults;->finalizeStorage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/reminders/model/RemindersBuffer;->release()V

    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method
