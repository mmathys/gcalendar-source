.class Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1$1;
.super Landroid/content/AsyncTaskLoader;
.source "TimeZoneUpdateDialogLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/accounts/Account;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;

    invoke-direct {p0, p2}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1$1;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;

    iget-object v0, v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$activity:Landroid/app/Activity;

    .line 107
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v3

    .line 109
    # getter for: Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loading accounts for timezone dialog in background."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    iget-object v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;

    iget-object v0, v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    .line 112
    invoke-virtual {v3, v6}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->hasSettings(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    # getter for: Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v7, "No settings for account %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v8, v9

    invoke-static {v0, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 111
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v3, v6}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->getTimezoneId()Ljava/lang/String;

    move-result-object v0

    .line 120
    if-nez v0, :cond_2

    .line 121
    # getter for: Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Server timezone for account %s is null"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 127
    :cond_2
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;

    iget-wide v8, v8, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$now:J

    .line 128
    invoke-virtual {v7, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    int-to-long v8, v7

    .line 129
    # getter for: Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v10, "Account: %s, Server timezone: %s (%d), Current timezone %s (%d)"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v0, v11, v12

    const/4 v0, 0x2

    .line 131
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v0

    const/4 v0, 0x3

    iget-object v12, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;

    iget-object v12, v12, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$currentTimeZoneId:Ljava/lang/String;

    aput-object v12, v11, v0

    const/4 v0, 0x4

    iget-object v12, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;

    iget-wide v12, v12, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$currentDisplayOffset:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v0

    .line 129
    invoke-static {v7, v10, v11}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    iget-object v0, p0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1$1;->this$1:Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;

    iget-wide v10, v0, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher$1;->val$currentDisplayOffset:J

    cmp-long v0, v10, v8

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/google/android/calendar/api/CalendarApi;->Habits:Lcom/google/android/calendar/api/HabitClient;

    new-instance v7, Lcom/google/android/calendar/api/HabitFilterOptions;

    invoke-direct {v7}, Lcom/google/android/calendar/api/HabitFilterOptions;-><init>()V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/calendar/api/HabitFilterOptions;->setActiveAfter(Ljava/lang/Long;)Lcom/google/android/calendar/api/HabitFilterOptions;

    move-result-object v7

    iget-object v8, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 138
    invoke-virtual {v7, v8}, Lcom/google/android/calendar/api/HabitFilterOptions;->setAccountName(Ljava/lang/String;)Lcom/google/android/calendar/api/HabitFilterOptions;

    move-result-object v7

    .line 136
    invoke-interface {v0, v7}, Lcom/google/android/calendar/api/HabitClient;->count(Lcom/google/android/calendar/api/HabitFilterOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/HabitClient$GenericResult;

    .line 139
    # getter for: Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/calendar/groove/TimeZoneUpdateDialogLauncher;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Active habits on account %s: %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 140
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitClient$GenericResult;->getCount()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 139
    invoke-static {v7, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    invoke-interface {v0}, Lcom/google/android/calendar/api/HabitClient$GenericResult;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 149
    :cond_3
    return-object v2
.end method
