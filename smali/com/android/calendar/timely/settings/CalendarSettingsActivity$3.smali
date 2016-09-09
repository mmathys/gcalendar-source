.class Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;
.super Ljava/lang/Thread;
.source "CalendarSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->onChangeNotifications(Landroid/net/Uri;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$allDay:Z

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$newNotifications:Ljava/util/ArrayList;

.field final synthetic val$ownerAccount:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/settings/CalendarSettingsActivity;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;->this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    iput-object p2, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;->val$account:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;->val$ownerAccount:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;->val$allDay:Z

    iput-object p6, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;->val$newNotifications:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 671
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getRecentAndDefaultNotificationsFactory()Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;

    move-result-object v0

    .line 672
    iget-object v1, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;->this$0:Lcom/android/calendar/timely/settings/CalendarSettingsActivity;

    iget-object v2, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;->val$account:Landroid/accounts/Account;

    iget-object v4, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;->val$ownerAccount:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;->val$allDay:Z

    iget-object v6, p0, Lcom/android/calendar/timely/settings/CalendarSettingsActivity$3;->val$newNotifications:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->updateDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/List;)V

    .line 674
    return-void
.end method
