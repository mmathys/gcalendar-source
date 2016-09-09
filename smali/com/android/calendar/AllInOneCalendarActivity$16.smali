.class Lcom/android/calendar/AllInOneCalendarActivity$16;
.super Landroid/os/AsyncTask;
.source "AllInOneCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->refreshCalendars()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;

.field final synthetic val$authority:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$16;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    iput-object p2, p0, Lcom/android/calendar/AllInOneCalendarActivity$16;->val$authority:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1496
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/calendar/AllInOneCalendarActivity$16;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 1499
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$16;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->getSyncableAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    .line 1501
    const-string v0, "AllInOneCalendarAct"

    const-string v3, "Refreshing %d accounts"

    new-array v4, v7, [Ljava/lang/Object;

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 1503
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1504
    aget-object v3, v2, v0

    .line 1505
    const-string v4, "AllInOneCalendarAct"

    const-string v5, "Refreshing calendars for: %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1506
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1507
    const-string v5, "force"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1508
    const-string v5, "sync_only_visible"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1513
    const-string v5, "expedited"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1514
    const-string v5, "do_not_retry"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1515
    iget-object v5, p0, Lcom/android/calendar/AllInOneCalendarActivity$16;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mRefreshUIManager:Lcom/android/calendar/RefreshUIManagerInterface;
    invoke-static {v5}, Lcom/android/calendar/AllInOneCalendarActivity;->access$3400(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/RefreshUIManagerInterface;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/android/calendar/RefreshUIManagerInterface;->trackSync(Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 1518
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getSyncFactory()Lcom/android/calendar/timely/settings/SyncFactory;

    move-result-object v5

    .line 1519
    invoke-interface {v5}, Lcom/android/calendar/timely/settings/SyncFactory;->getSyncableAccountType()Ljava/lang/String;

    move-result-object v5

    .line 1520
    if-eqz v5, :cond_0

    iget-object v6, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1521
    :cond_0
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getSyncFactory()Lcom/android/calendar/timely/settings/SyncFactory;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/calendar/timely/settings/SyncFactory;->appendSyncFlags(Landroid/os/Bundle;)Z

    .line 1523
    :cond_1
    iget-object v5, p0, Lcom/android/calendar/AllInOneCalendarActivity$16;->val$authority:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1526
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
