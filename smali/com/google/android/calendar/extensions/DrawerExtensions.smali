.class public Lcom/google/android/calendar/extensions/DrawerExtensions;
.super Ljava/lang/Object;
.source "DrawerExtensions.java"

# interfaces
.implements Lcom/android/calendar/calendarlist/DrawerExtensionsInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static refreshAndCheckConsistency(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 70
    new-instance v1, Landroid/os/Bundle;

    const/16 v0, 0x8

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 71
    const-string v0, "force"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    const-string v0, "expedited"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    const-string v0, "do_not_retry"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    const-string v0, "sync_extra_get_settings"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    const-string v0, "sync_extra_get_recent_notifications"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    const-string v0, "sync_extra_get_default_notifications"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    const-string v0, "sync_extra_check_consistency"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    invoke-static {p0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 79
    const-string v5, "feed_internal"

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getRefreshUIManager()Lcom/android/calendar/RefreshUIManagerInterface;

    move-result-object v5

    invoke-interface {v5, v4, v1}, Lcom/android/calendar/RefreshUIManagerInterface;->trackSync(Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 81
    const-string v5, "com.android.calendar"

    invoke-static {v4, v5, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public getExtraButtons(Landroid/content/Context;)[Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;
    .locals 5

    .prologue
    .line 41
    invoke-static {p1}, Lcom/android/calendar/ExperimentalOptionsEnabler;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    .line 56
    :goto_0
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v1, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    sget v2, Lcom/android/calendar/R$id;->drawer_check_consistency:I

    sget v3, Lcom/android/calendar/R$string;->drawer_check_consistency:I

    sget v4, Lcom/android/calendar/R$drawable;->ic_repeat:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {p1}, Lcom/android/calendar/ExperimentalOptionsEnabler;->isNewViewEditDevelopmentEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    new-instance v1, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    sget v2, Lcom/android/calendar/R$id;->drawer_view_edit_dashboard:I

    sget v3, Lcom/android/calendar/R$string;->drawer_view_edit_dashboard:I

    sget v4, Lcom/android/calendar/R$drawable;->ic_settings:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/calendarlist/DrawerListAdapter$DrawerButtonItem;

    goto :goto_0
.end method

.method public performExtra(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 61
    sget v0, Lcom/android/calendar/R$id;->drawer_check_consistency:I

    if-ne p2, v0, :cond_1

    .line 62
    invoke-static {p1}, Lcom/google/android/calendar/extensions/DrawerExtensions;->refreshAndCheckConsistency(Landroid/content/Context;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->drawer_view_edit_dashboard:I

    if-ne p2, v0, :cond_0

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/calendar/newapi/development/NewApiTestDashboardActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public showHelp(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->launchHelpAndFeedback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    return-void
.end method
