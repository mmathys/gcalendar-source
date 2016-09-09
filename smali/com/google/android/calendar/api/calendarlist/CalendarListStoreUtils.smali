.class public Lcom/google/android/calendar/api/calendarlist/CalendarListStoreUtils;
.super Ljava/lang/Object;
.source "CalendarListStoreUtils.java"


# direct methods
.method static cursorToDescriptor(Landroid/database/Cursor;)Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;
    .locals 7

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 59
    const/16 v2, 0xe

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    const/16 v3, 0xf

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    const/4 v4, 0x3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    new-instance v5, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v5, v6, v4, v0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v5
.end method

.method static cursorToEntity(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Landroid/database/Cursor;)Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 25
    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    move v3, v0

    .line 26
    :goto_0
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 28
    if-nez v2, :cond_0

    move-object v2, v4

    .line 33
    :cond_0
    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 34
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 36
    invoke-static {v5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/calendar/api/ColorDescriptor;->createCustomColorDescriptor(Ljava/lang/Integer;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v5

    .line 39
    :goto_1
    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v0, :cond_4

    move v6, v0

    .line 40
    :goto_2
    const/16 v7, 0x9

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v0, :cond_5

    move v7, v0

    .line 41
    :goto_3
    const/16 v0, 0x11

    .line 42
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-static {v8}, Lcom/google/android/calendar/api/utils/TimeZoneHelper;->isValidTimeZoneIdOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    const/4 v8, 0x0

    .line 47
    :cond_1
    invoke-static {p0}, Lcom/google/android/calendar/api/notifications/NotificationsTimelyStoreUtils;->loadTimedDefaultNotifications(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)[Lcom/google/android/calendar/api/notifications/Notification;

    move-result-object v9

    .line 49
    invoke-static {p0}, Lcom/google/android/calendar/api/notifications/NotificationsTimelyStoreUtils;->loadAllDayDefaultNotifications(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)[Lcom/google/android/calendar/api/notifications/Notification;

    move-result-object v10

    .line 50
    const/4 v0, 0x7

    .line 51
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 50
    invoke-static {v0}, Lcom/google/android/calendar/api/calendarlist/CalendarListStoreUtils;->storeAccessLevelToApiLevel(I)Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    move-result-object v11

    .line 53
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/calendar/api/calendarlist/CalendarListEntryImpl;-><init>(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/calendar/api/ColorDescriptor;ZZLjava/lang/String;[Lcom/google/android/calendar/api/notifications/Notification;[Lcom/google/android/calendar/api/notifications/Notification;Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;)V

    return-object v0

    :cond_2
    move v3, v1

    .line 25
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/google/android/calendar/api/ColorDescriptor;->createCalendarColorDescriptor(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/calendar/api/ColorDescriptor;

    move-result-object v5

    goto :goto_1

    :cond_4
    move v6, v1

    .line 39
    goto :goto_2

    :cond_5
    move v7, v1

    .line 40
    goto :goto_3
.end method

.method public static readLocalCalendarId(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/Long;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 67
    .line 70
    :try_start_0
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/calendar/api/LoadDetailsConstants;->CALENDAR_LOCAL_ID_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/google/android/calendar/api/LoadDetailsConstants;->SINGLE_CALENDAR_SELECTION:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-object v7, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x2

    iget-object v7, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    .line 71
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 80
    if-nez v1, :cond_1

    .line 82
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading calendar data from the provider"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_0
    if-eqz v6, :cond_0

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 84
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v8, :cond_2

    .line 86
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error in calendar list data: more than one calendar to read"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 98
    if-eqz v1, :cond_3

    .line 99
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    .line 102
    :cond_4
    :goto_1
    return-object v0

    .line 92
    :cond_5
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 94
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading calendar data: invalid cursor"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_6
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 98
    if-eqz v1, :cond_4

    .line 99
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 98
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private static storeAccessLevelToApiLevel(I)Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;
    .locals 2

    .prologue
    .line 106
    sparse-switch p0, :sswitch_data_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown access level value in storage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :sswitch_0
    sget-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->NONE:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    .line 123
    :goto_0
    return-object v0

    .line 110
    :sswitch_1
    sget-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->FREEBUSY:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    goto :goto_0

    .line 114
    :sswitch_2
    sget-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->READER:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    goto :goto_0

    .line 120
    :sswitch_3
    sget-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->WRITER:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    goto :goto_0

    .line 123
    :sswitch_4
    sget-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;->OWNER:Lcom/google/android/calendar/api/calendarlist/CalendarAccessLevel;

    goto :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_2
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x258 -> :sswitch_3
        0x2bc -> :sswitch_4
        0x320 -> :sswitch_4
    .end sparse-switch
.end method
