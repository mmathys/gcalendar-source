.class public Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;
.super Ljava/lang/Object;
.source "TimelyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/TimelyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Notifications"
.end annotation


# instance fields
.field private final mDefaultNotificationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentNotificationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1486
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;->mRecentNotificationsMap:Ljava/util/Map;

    .line 1487
    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;->mDefaultNotificationsMap:Ljava/util/Map;

    .line 1488
    return-void
.end method


# virtual methods
.method public getDefaultNotifications(Ljava/lang/String;)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;->mDefaultNotificationsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;->mDefaultNotificationsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->getAllNotifications()[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v0

    .line 1528
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    goto :goto_0
.end method

.method public getDefaultNotificationsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;->mDefaultNotificationsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRecentNotifications(Ljava/lang/String;)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    .locals 1

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;->mRecentNotificationsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;->mRecentNotificationsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;->getAllNotifications()[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v0

    .line 1514
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    goto :goto_0
.end method

.method public getRecentNotificationsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;->mRecentNotificationsMap:Ljava/util/Map;

    return-object v0
.end method
