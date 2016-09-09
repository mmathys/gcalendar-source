.class public Lcom/google/android/calendar/api/notifications/NotificationsTimelyStoreUtils;
.super Ljava/lang/Object;
.source "NotificationsTimelyStoreUtils.java"


# direct methods
.method public static loadAllDayDefaultNotifications(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)[Lcom/google/android/calendar/api/notifications/Notification;
    .locals 6

    .prologue
    .line 44
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    const/4 v3, 0x1

    .line 45
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadDefaultNotifications(Ljava/lang/String;Landroid/accounts/Account;Z)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v1

    .line 47
    array-length v0, v1

    new-array v2, v0, [Lcom/google/android/calendar/api/notifications/Notification;

    .line 48
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 49
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->isAllDay()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 50
    new-instance v3, Lcom/google/android/calendar/api/notifications/Notification;

    aget-object v4, v1, v0

    .line 51
    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMethod()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/calendar/api/notifications/NotificationsStoreUtils;->storeMethodToApiMethod(I)I

    move-result v4

    aget-object v5, v1, v0

    .line 52
    invoke-virtual {v5}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMinutesBefore()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/calendar/api/notifications/Notification;-><init>(II)V

    aput-object v3, v2, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-object v2
.end method

.method public static loadTimedDefaultNotifications(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)[Lcom/google/android/calendar/api/notifications/Notification;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getCalendarId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 23
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadDefaultNotifications(Ljava/lang/String;Landroid/accounts/Account;Z)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v3

    .line 25
    array-length v0, v3

    new-array v4, v0, [Lcom/google/android/calendar/api/notifications/Notification;

    move v0, v1

    .line 26
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_1

    .line 27
    aget-object v2, v3, v0

    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->isAllDay()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 28
    new-instance v2, Lcom/google/android/calendar/api/notifications/Notification;

    aget-object v5, v3, v0

    .line 29
    invoke-virtual {v5}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMethod()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/calendar/api/notifications/NotificationsStoreUtils;->storeMethodToApiMethod(I)I

    move-result v5

    aget-object v6, v3, v0

    .line 30
    invoke-virtual {v6}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMinutesBefore()I

    move-result v6

    invoke-direct {v2, v5, v6}, Lcom/google/android/calendar/api/notifications/Notification;-><init>(II)V

    aput-object v2, v4, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 27
    goto :goto_1

    .line 32
    :cond_1
    return-object v4
.end method
