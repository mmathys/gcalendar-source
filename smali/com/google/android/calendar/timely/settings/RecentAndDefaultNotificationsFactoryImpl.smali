.class public Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;
.super Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;
.source "RecentAndDefaultNotificationsFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl$AccountRemovedService;,
        Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl$AccountRemovedBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;

    .line 39
    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;-><init>()V

    return-void
.end method

.method private getNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;ZI)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 245
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    if-nez v1, :cond_0

    .line 246
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 249
    :cond_0
    if-nez p5, :cond_2

    const/4 v1, 0x1

    move v3, v1

    .line 252
    :goto_0
    const/4 v1, 0x0

    .line 253
    if-eqz v3, :cond_3

    .line 254
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 256
    invoke-virtual {v1, p3, p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadRecentlyUsedNotificationsForAccount(Landroid/accounts/Account;Z)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v1

    move-object v2, v1

    .line 266
    :goto_1
    if-eqz v3, :cond_4

    if-eqz v2, :cond_1

    array-length v1, v2

    if-nez v1, :cond_4

    .line 267
    :cond_1
    invoke-super {p0, p1, p3, p4}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getRecentNotificationOptions(Landroid/content/Context;Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v0

    .line 283
    :goto_2
    return-object v0

    :cond_2
    move v3, v0

    .line 249
    goto :goto_0

    .line 258
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 259
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 260
    invoke-virtual {v1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadDefaultNotifications(Ljava/lang/String;Landroid/accounts/Account;Z)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 271
    :cond_4
    if-eqz v2, :cond_6

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 274
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMinutesBefore()I

    move-result v3

    .line 275
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMethod()I

    move-result v4

    .line 276
    invoke-static {v3, v4}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v3

    .line 277
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2

    .line 280
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_7
    move-object v2, v1

    goto :goto_1
.end method

.method private updateNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/List;I)V
    .locals 7
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
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 302
    if-nez p7, :cond_1

    const/4 v0, 0x1

    move v6, v0

    .line 306
    :goto_0
    if-eqz v6, :cond_2

    if-eqz p6, :cond_0

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    :cond_0
    :goto_1
    return-void

    .line 302
    :cond_1
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 311
    :cond_2
    if-nez p3, :cond_3

    .line 313
    sget-object v0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->TAG:Ljava/lang/String;

    const-string v1, "Account is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 314
    if-nez v6, :cond_0

    .line 315
    invoke-super/range {p0 .. p6}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->updateDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_1

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    if-nez v0, :cond_4

    .line 322
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 325
    :cond_4
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    .line 326
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 327
    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v2

    .line 328
    invoke-interface {p6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v3

    .line 329
    new-instance v4, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    if-eqz p5, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-direct {v4, v0, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;-><init>(III)V

    aput-object v4, v5, v1

    .line 326
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 329
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 333
    :cond_6
    if-eqz v6, :cond_7

    .line 334
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-virtual {v0, p1, p3, p5, v5}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateRecentlyUsedNotifications(Landroid/content/Context;Landroid/accounts/Account;Z[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V

    .line 342
    :goto_4
    iget-object v0, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 345
    if-eqz v6, :cond_8

    .line 346
    const-string v0, "sync_extra_update_recent_notifications"

    .line 354
    :goto_5
    const/4 v2, 0x1

    invoke-static {p3, v0, v2, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->triggerSyncAdapterSyncWithExtras(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    goto :goto_1

    .line 337
    :cond_7
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Z[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V

    goto :goto_4

    .line 348
    :cond_8
    const-string v0, "sync_extra_update_default_notifications"

    .line 350
    const-string v2, "sync_extra_local_calendar_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v2, "sync_extra_server_calendar_id"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v2, "sync_extra_all_day"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5
.end method


# virtual methods
.method public getCalendarNotificationsMap(Landroid/content/Context;Ljava/util/Collection;Z)Ljava/util/Map;
    .locals 13
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
    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 105
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 106
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 107
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 108
    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    if-nez v0, :cond_1

    .line 113
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 117
    :cond_1
    if-eqz p3, :cond_2

    .line 118
    const-string v0, "method=1"

    .line 119
    :goto_1
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 120
    invoke-virtual {v2, v1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadAllNotifications(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;

    move-result-object v3

    .line 122
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 124
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    .line 125
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/calendar/event/data/AndroidCalendarKey;

    if-nez v1, :cond_3

    .line 126
    sget-object v1, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->TAG:Ljava/lang/String;

    const-string v2, "Incorrect key type: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v1, v2, v6}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 118
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 130
    :cond_3
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 131
    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 132
    invoke-interface {v1}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;

    .line 134
    iget-object v7, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 135
    invoke-static {v7}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->getMaximumRecentNotifications(Ljava/lang/String;)I

    move-result v7

    .line 138
    if-nez v1, :cond_4

    .line 139
    new-instance v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;

    iget-object v8, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v1, v8}, Lcom/android/calendar/event/edit/CalendarNotificationSet;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_4
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 144
    invoke-virtual {v3, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;->getRecentNotifications(Ljava/lang/String;)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v8

    .line 145
    array-length v9, v8

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v9, :cond_5

    aget-object v10, v8, v0

    .line 147
    invoke-virtual {v10}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMinutesBefore()I

    move-result v11

    .line 148
    invoke-virtual {v10}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMethod()I

    move-result v12

    .line 147
    invoke-static {v11, v12}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v11

    .line 146
    invoke-static {v11}, Lcom/android/calendar/event/ReminderUtils;->reminderEntryToReminder(Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;)Lcom/google/calendar/v2/client/service/api/common/Reminder;

    move-result-object v11

    .line 149
    invoke-virtual {v10}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->isAllDay()Z

    move-result v10

    invoke-virtual {v1, v11, v10}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->addRecentlyUsedNotification(Lcom/google/calendar/v2/client/service/api/common/Reminder;Z)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 153
    :cond_5
    invoke-virtual {v3, v2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;->getDefaultNotifications(Ljava/lang/String;)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v2

    .line 154
    array-length v8, v2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v8, :cond_6

    aget-object v9, v2, v0

    .line 156
    invoke-virtual {v9}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMinutesBefore()I

    move-result v10

    .line 157
    invoke-virtual {v9}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMethod()I

    move-result v11

    .line 156
    invoke-static {v10, v11}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v10

    .line 155
    invoke-static {v10}, Lcom/android/calendar/event/ReminderUtils;->reminderEntryToReminder(Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;)Lcom/google/calendar/v2/client/service/api/common/Reminder;

    move-result-object v10

    .line 158
    invoke-virtual {v9}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->isAllDay()Z

    move-result v9

    invoke-virtual {v1, v10, v9}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->addDefaultNotification(Lcom/google/calendar/v2/client/service/api/common/Reminder;Z)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 162
    :cond_6
    iget-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_9

    .line 163
    const/4 v0, 0x1

    .line 164
    invoke-super {p0, p1, v6, v0}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getRecentNotificationOptions(Landroid/content/Context;Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderEntriesToReminders(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 165
    const/4 v0, 0x0

    move v2, v0

    .line 166
    :goto_5
    iget-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_9

    .line 167
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 168
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 169
    if-eqz p3, :cond_7

    .line 170
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getDeliveryMethod()Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    move-result-object v9

    sget-object v10, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->ALERT:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    if-ne v9, v10, :cond_8

    .line 171
    :cond_7
    iget-object v9, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->allDayOptions:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 172
    const/4 v9, 0x1

    invoke-virtual {v1, v0, v9}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->addRecentlyUsedNotification(Lcom/google/calendar/v2/client/service/api/common/Reminder;Z)V

    .line 175
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 176
    goto :goto_5

    .line 179
    :cond_9
    iget-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_c

    .line 180
    const/4 v0, 0x0

    .line 181
    invoke-super {p0, p1, v6, v0}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getRecentNotificationOptions(Landroid/content/Context;Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/android/calendar/event/ReminderUtils;->reminderEntriesToReminders(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 182
    const/4 v0, 0x0

    move v2, v0

    .line 183
    :goto_6
    iget-object v0, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v7, :cond_c

    .line 184
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 185
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Reminder;

    .line 186
    if-eqz p3, :cond_a

    .line 187
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/Reminder;->getDeliveryMethod()Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    move-result-object v8

    sget-object v9, Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;->ALERT:Lcom/google/calendar/v2/client/service/api/common/Reminder$DeliveryMethod;

    if-ne v8, v9, :cond_b

    .line 188
    :cond_a
    iget-object v8, v1, Lcom/android/calendar/event/edit/CalendarNotificationSet;->timedOptions:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 189
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->addRecentlyUsedNotification(Lcom/google/calendar/v2/client/service/api/common/Reminder;Z)V

    .line 192
    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 193
    goto :goto_6

    .line 195
    :cond_c
    invoke-virtual {v1}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->sort()V

    goto/16 :goto_2

    .line 197
    :cond_d
    return-object v4
.end method

.method public getDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Z)Ljava/util/List;
    .locals 6
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
    .line 85
    if-nez p2, :cond_0

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->getNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;ZI)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRecentNotificationOptions(Landroid/content/Context;Landroid/accounts/Account;Z)Ljava/util/List;
    .locals 7
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
    const/4 v5, 0x0

    .line 57
    if-nez p2, :cond_0

    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getRecentNotificationOptions(Landroid/content/Context;Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 61
    :cond_0
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->getNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;ZI)Ljava/util/List;

    move-result-object v3

    .line 63
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 66
    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 67
    invoke-static {v0}, Lcom/android/calendar/event/edit/CalendarNotificationSet;->getMaximumRecentNotifications(Ljava/lang/String;)I

    move-result v0

    .line 66
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v5

    .line 69
    :goto_1
    if-ge v2, v6, :cond_1

    .line 71
    add-int/lit8 v0, v4, -0x1

    sub-int/2addr v0, v2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    invoke-interface {v1, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 69
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 74
    goto :goto_0
.end method

.method public updateDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/List;)V
    .locals 8
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
    .line 225
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->updateNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/List;I)V

    .line 227
    return-void
.end method

.method public updateRecentNotifications(Landroid/content/Context;Landroid/accounts/Account;ZLjava/util/List;)V
    .locals 8
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
    const/4 v2, 0x0

    .line 211
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/calendar/timely/settings/RecentAndDefaultNotificationsFactoryImpl;->updateNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;ZLjava/util/List;I)V

    .line 214
    return-void
.end method
