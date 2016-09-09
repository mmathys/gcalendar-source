.class public Lcom/google/android/calendar/api/notifications/NotificationsStoreUtils;
.super Ljava/lang/Object;
.source "NotificationsStoreUtils.java"


# direct methods
.method public static addDeleteNotificationOperations(JLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 161
    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 162
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "event_id=?"

    .line 163
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 165
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public static addInsertNotificationOperationsForEventCreate(ILcom/google/android/calendar/api/EventModifications;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/calendar/api/EventModifications;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p1}, Lcom/google/android/calendar/api/notifications/NotificationsStoreUtils;->getNotificationsToStore(Lcom/google/android/calendar/api/EventModifications;)Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/notifications/Notification;

    .line 108
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 109
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "event_id"

    .line 110
    invoke-virtual {v2, v3, p0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "method"

    .line 111
    invoke-virtual {v0}, Lcom/google/android/calendar/api/notifications/Notification;->getMethod()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/calendar/api/notifications/NotificationsStoreUtils;->apiMethodToStoreMethod(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "minutes"

    .line 112
    invoke-virtual {v0}, Lcom/google/android/calendar/api/notifications/Notification;->getMinutesBefore()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 114
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public static addInsertNotificationOperationsForEventUpdate(JLcom/google/android/calendar/api/EventModifications;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/calendar/api/EventModifications;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p2}, Lcom/google/android/calendar/api/notifications/NotificationsStoreUtils;->getNotificationsToStore(Lcom/google/android/calendar/api/EventModifications;)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/notifications/Notification;

    .line 131
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 132
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "event_id"

    .line 133
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "method"

    .line 134
    invoke-virtual {v0}, Lcom/google/android/calendar/api/notifications/Notification;->getMethod()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/calendar/api/notifications/NotificationsStoreUtils;->apiMethodToStoreMethod(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "minutes"

    .line 135
    invoke-virtual {v0}, Lcom/google/android/calendar/api/notifications/Notification;->getMinutesBefore()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 137
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public static apiMethodToStoreMethod(I)I
    .locals 2

    .prologue
    .line 37
    packed-switch p0, :pswitch_data_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid notification method value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :pswitch_0
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    .line 41
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 43
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 45
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getNotificationsToStore(Lcom/google/android/calendar/api/EventModifications;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/EventModifications;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/calendar/api/notifications/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getNotifications()Ljava/util/List;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 145
    :cond_0
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->isAllDayEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/notifications/NotificationsTimelyStoreUtils;->loadAllDayDefaultNotifications(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)[Lcom/google/android/calendar/api/notifications/Notification;

    move-result-object v0

    .line 150
    :goto_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    invoke-interface {p0}, Lcom/google/android/calendar/api/EventModifications;->getDescriptor()Lcom/google/android/calendar/api/EventDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/api/EventDescriptor;->getCalendar()Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/api/notifications/NotificationsTimelyStoreUtils;->loadTimedDefaultNotifications(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)[Lcom/google/android/calendar/api/notifications/Notification;

    move-result-object v0

    goto :goto_1
.end method

.method public static loadEventNotifications(J)[Lcom/google/android/calendar/api/notifications/Notification;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 55
    const/4 v6, 0x0

    .line 56
    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 58
    :try_start_0
    invoke-static {}, Lcom/google/android/calendar/api/CalendarApi;->getApiContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/calendar/api/LoadDetailsConstants;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v3, "event_id=?"

    const-string v5, "minutes ASC, method ASC"

    .line 59
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 64
    if-nez v1, :cond_1

    .line 66
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading notification data from the provider"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 68
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 69
    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Error while reading notification data: invalid cursor"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    new-array v3, v2, [Lcom/google/android/calendar/api/notifications/Notification;

    move v0, v7

    .line 75
    :goto_1
    if-ge v0, v2, :cond_3

    .line 76
    new-instance v4, Lcom/google/android/calendar/api/notifications/Notification;

    const/4 v5, 0x2

    .line 78
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 77
    invoke-static {v5}, Lcom/google/android/calendar/api/notifications/NotificationsStoreUtils;->storeMethodToApiMethod(I)I

    move-result v5

    const/4 v6, 0x1

    .line 79
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/calendar/api/notifications/Notification;-><init>(II)V

    aput-object v4, v3, v0

    .line 80
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_3
    if-eqz v1, :cond_4

    .line 85
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_4
    return-object v3

    .line 84
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_0
.end method

.method public static storeMethodToApiMethod(I)I
    .locals 2

    .prologue
    .line 21
    packed-switch p0, :pswitch_data_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid notification method value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :pswitch_0
    const/4 v0, 0x1

    .line 30
    :goto_0
    return v0

    .line 26
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 28
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 30
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
