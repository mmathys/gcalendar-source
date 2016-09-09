.class Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;
.super Ljava/lang/Object;
.source "CalendarPreferences.java"

# interfaces
.implements Lcom/android/calendar/event/data/InputAspectNotification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/settings/CalendarPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationAspectImpl"
.end annotation


# instance fields
.field private final mAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mMutableNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationOptions:Lcom/android/calendar/event/edit/CalendarNotificationSet;

.field final synthetic this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;


# direct methods
.method public constructor <init>(Lcom/android/calendar/timely/settings/CalendarPreferences;Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;ZZLandroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;ZZ",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;->this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p2, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;->mMutableNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 567
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getRecentAndDefaultNotificationsFactory()Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;

    move-result-object v0

    .line 569
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 570
    invoke-virtual {p1}, Lcom/android/calendar/timely/settings/CalendarPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p5

    move-object v3, p6

    move v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->createNotificationSet(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/util/List;)Lcom/android/calendar/event/edit/CalendarNotificationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;->mNotificationOptions:Lcom/android/calendar/event/edit/CalendarNotificationSet;

    .line 576
    if-eqz p4, :cond_0

    .line 577
    # invokes: Lcom/android/calendar/timely/settings/CalendarPreferences;->populateNotifications(Ljava/util/List;Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    invoke-static {p1, v6, p3}, Lcom/android/calendar/timely/settings/CalendarPreferences;->access$600(Lcom/android/calendar/timely/settings/CalendarPreferences;Ljava/util/List;Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;->mMutableNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 580
    :cond_0
    invoke-static {p3}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Z)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;->mAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 581
    return-void
.end method


# virtual methods
.method public addNotificationRefreshListener(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method public canChangeNotifications()Z
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x1

    return v0
.end method

.method public enableSmartNotifications(Z)V
    .locals 0

    .prologue
    .line 616
    return-void
.end method

.method public isExchangeNotifications()Z
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;->this$0:Lcom/android/calendar/timely/settings/CalendarPreferences;

    # getter for: Lcom/android/calendar/timely/settings/CalendarPreferences;->mAccount:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/CalendarPreferences;->access$300(Lcom/android/calendar/timely/settings/CalendarPreferences;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->isExchangeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public mutableNotifications()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;->mMutableNotifications:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    return-object v0
.end method

.method public notificationSet()Lcom/android/calendar/event/edit/CalendarNotificationSet;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;->mNotificationOptions:Lcom/android/calendar/event/edit/CalendarNotificationSet;

    return-object v0
.end method

.method public observableIsAllDay()Lcom/google/calendar/v2/client/service/common/ObservableBoolean;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/calendar/timely/settings/CalendarPreferences$NotificationAspectImpl;->mAllDay:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    return-object v0
.end method

.method public removeNotificationRefreshListener(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 626
    return-void
.end method

.method public smartNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method
