.class public Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;
.super Ljava/lang/Object;
.source "RecentAndDefaultNotificationsFactory.java"


# instance fields
.field private mDefaultDefaultMinutes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->mDefaultDefaultMinutes:I

    return-void
.end method


# virtual methods
.method public createNotificationSet(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Lcom/android/calendar/event/edit/CalendarNotificationSet;
    .locals 7

    .prologue
    .line 162
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->createNotificationSet(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/util/List;)Lcom/android/calendar/event/edit/CalendarNotificationSet;

    move-result-object v0

    return-object v0
.end method

.method public createNotificationSet(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/util/List;)Lcom/android/calendar/event/edit/CalendarNotificationSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Reminder;",
            ">;)",
            "Lcom/android/calendar/event/edit/CalendarNotificationSet;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 172
    new-instance v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/calendar/event/edit/CalendarNotificationSet;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getRecentNotificationOptions(Landroid/content/Context;Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderEntriesToReminders(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    .line 176
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getRecentNotificationOptions(Landroid/content/Context;Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderEntriesToReminders(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    .line 180
    if-eqz p4, :cond_2

    .line 182
    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderEntriesToReminders(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    .line 184
    invoke-virtual {p0, p1, p3, p2, v2}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderEntriesToReminders(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    .line 187
    if-eqz p5, :cond_1

    .line 188
    iget-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    invoke-interface {p6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    :goto_0
    iget-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 210
    iget-object v3, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 211
    iget-object v3, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    :cond_1
    iget-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    invoke-interface {p6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 194
    :cond_2
    if-eqz p5, :cond_3

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    .line 196
    iget-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->sort(Ljava/util/List;)V

    .line 198
    invoke-virtual {p0, p1, p3, p2, v2}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderEntriesToReminders(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    goto :goto_0

    .line 202
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    .line 203
    iget-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedNotifications:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->sort(Ljava/util/List;)V

    .line 205
    invoke-virtual {p0, p1, p3, p2, v3}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderEntriesToReminders(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    goto :goto_0

    .line 214
    :cond_4
    iget-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 215
    iget-object v3, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 216
    iget-object v3, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 219
    :cond_6
    invoke-virtual {v1}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->sort()V

    .line 220
    return-object v1
.end method

.method public getCalendarNotificationsMap(Landroid/content/Context;Ljava/util/Collection;Z)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
            "Lcom/android/calendar/event/edit/CalendarNotificationSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 134
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 135
    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    .line 136
    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p0, p1, v4, v1}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->createNotificationSet(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Lcom/android/calendar/event/edit/CalendarNotificationSet;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_0
    return-object v2
.end method

.method public getDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    if-eqz p4, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    if-nez p4, :cond_1

    .line 103
    iget v0, p0, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->mDefaultDefaultMinutes:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_0

    .line 104
    invoke-static {p1}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    const-string v3, "preferences_default_reminder"

    const-string v4, "-1"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->mDefaultDefaultMinutes:I

    .line 111
    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->mDefaultDefaultMinutes:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 112
    iget v0, p0, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->mDefaultDefaultMinutes:I

    invoke-static {v0, v1}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v0

    .line 114
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1
    return-object v2

    .line 100
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRecentNotificationOptions(Landroid/content/Context;Landroid/accounts/Account;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 65
    if-eqz p2, :cond_2

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->isExchangeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    if-eqz p3, :cond_0

    .line 67
    sget v0, Lcom/android/calendar/R$array;->exchange_notification_options_allday_minutes:I

    .line 66
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 69
    if-eqz p3, :cond_1

    .line 70
    sget v0, Lcom/android/calendar/R$array;->exchange_notification_options_allday_methods:I

    .line 69
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 81
    :goto_2
    const/4 v2, 0x0

    :goto_3
    array-length v4, v1

    if-ge v2, v4, :cond_5

    .line 82
    aget v4, v1, v2

    .line 83
    aget v5, v0, v2

    .line 84
    invoke-static {v4, v5}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v4

    .line 85
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 68
    :cond_0
    sget v0, Lcom/android/calendar/R$array;->exchange_notification_options_timed_minutes:I

    goto :goto_0

    .line 71
    :cond_1
    sget v0, Lcom/android/calendar/R$array;->exchange_notification_options_timed_methods:I

    goto :goto_1

    .line 73
    :cond_2
    if-eqz p3, :cond_3

    .line 74
    sget v0, Lcom/android/calendar/R$array;->notification_options_allday_minutes:I

    .line 73
    :goto_4
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 76
    if-eqz p3, :cond_4

    .line 77
    sget v0, Lcom/android/calendar/R$array;->notification_options_allday_methods:I

    .line 76
    :goto_5
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_2

    .line 75
    :cond_3
    sget v0, Lcom/android/calendar/R$array;->notification_options_timed_minutes:I

    goto :goto_4

    .line 78
    :cond_4
    sget v0, Lcom/android/calendar/R$array;->notification_options_timed_methods:I

    goto :goto_5

    .line 87
    :cond_5
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 88
    return-object v3
.end method

.method public updateDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    return-void
.end method

.method public updateRecentNotifications(Landroid/content/Context;Landroid/accounts/Account;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    return-void
.end method
