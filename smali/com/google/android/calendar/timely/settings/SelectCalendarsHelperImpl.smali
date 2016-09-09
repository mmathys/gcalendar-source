.class public Lcom/google/android/calendar/timely/settings/SelectCalendarsHelperImpl;
.super Lcom/android/calendar/calendarlist/SelectCalendarsHelper;
.source "SelectCalendarsHelperImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/SelectCalendarsHelper;-><init>()V

    return-void
.end method

.method private static createRemindersRow(Landroid/content/Context;Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;
    .locals 4

    .prologue
    .line 46
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    invoke-direct {v2}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;-><init>()V

    .line 51
    sget-object v3, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->TASKS_CALENDAR_URI:Landroid/net/Uri;

    .line 52
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    .line 53
    iget-object v3, v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->id:Ljava/lang/String;

    .line 54
    sget v3, Lcom/android/calendar/R$string;->reminders_calendar_name:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->displayName:Ljava/lang/String;

    .line 55
    iput-object v1, v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->ownerAccount:Ljava/lang/String;

    .line 56
    iget-object v3, p1, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->account:Landroid/accounts/Account;

    iput-object v3, v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->account:Landroid/accounts/Account;

    .line 57
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->getTaskColor()I

    move-result v1

    iput v1, v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->color:I

    .line 59
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->areTasksVisible()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isVisible:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->isSynced:Z

    .line 61
    const/4 v0, 0x2

    iput v0, v2, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->priority:I

    .line 63
    return-object v2
.end method


# virtual methods
.method public postProcessItems(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p1}, Lcom/google/android/calendar/task/TaskDataFactory;->areTasksEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;

    .line 33
    invoke-interface {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarListItemInfo;->getType()I

    move-result v3

    if-nez v3, :cond_1

    .line 34
    check-cast v0, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;

    .line 35
    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/calendar/task/TaskDataFactory;->isAccountEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36
    invoke-static {p1, v0}, Lcom/google/android/calendar/timely/settings/SelectCalendarsHelperImpl;->createRemindersRow(Landroid/content/Context;Lcom/android/calendar/calendarlist/CalendarListUtils$AccountItem;)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public registerForChanges(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 68
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->registerTaskSettingsContentObserver(Landroid/database/ContentObserver;)V

    .line 70
    return-void
.end method

.method public unregisterForChanges(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 74
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->unregisterTaskSettingsContentObserver(Landroid/database/ContentObserver;)V

    .line 76
    return-void
.end method
