.class public Lcom/android/calendar/SyncUpgradeReceiver;
.super Lcom/android/calendar/UpgradeReceiver;
.source "SyncUpgradeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/calendar/UpgradeReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected doUpgrade(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getSyncFactory()Lcom/android/calendar/timely/settings/SyncFactory;

    move-result-object v1

    .line 42
    invoke-interface {v1, v0}, Lcom/android/calendar/timely/settings/SyncFactory;->appendSyncFlags(Landroid/os/Bundle;)Z

    .line 44
    const/4 v1, 0x0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v1, v2, v0}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 48
    return-void
.end method
