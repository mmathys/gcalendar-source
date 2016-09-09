.class public Lcom/android/calendar/groove/GrooveUtils;
.super Ljava/lang/Object;
.source "GrooveUtils.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sync_data9 as sync_data9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/groove/GrooveUtils;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static allOrNoPreferredTimesSelected(Lcom/google/android/calendar/api/HabitContract;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 101
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isMorningPreferable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isAfternoonPreferable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isEveningPreferable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isMorningPreferable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isAfternoonPreferable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 106
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitContract;->isEveningPreferable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    .prologue
    .line 424
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 425
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 426
    const/4 v0, 0x1

    .line 428
    if-gt v1, p2, :cond_0

    if-le v2, p1, :cond_1

    .line 430
    :cond_0
    div-int/lit8 v1, v1, 0x2

    .line 431
    div-int/lit8 v2, v2, 0x2

    .line 435
    :goto_0
    div-int v3, v1, v0

    if-le v3, p2, :cond_1

    div-int v3, v2, v0

    if-le v3, p1, :cond_1

    .line 437
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 441
    :cond_1
    return v0
.end method

.method public static decodeScaledBitmapFromResource(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 403
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 405
    invoke-static {v6, p1, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 408
    invoke-static {v7, p2, p3}, Lcom/android/calendar/groove/GrooveUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 410
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_category_groove:I

    .line 411
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/android/calendar/R$string;->analytics_action_decode_image:I

    .line 412
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/android/calendar/R$string;->analytics_label_in_sample_size:I

    .line 413
    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-long v8, v1

    .line 414
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    .line 410
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 418
    invoke-static {v6, p1, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultReminderMinutes(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 129
    const-string v5, "method=1"

    .line 134
    invoke-static {p0, p1, p2}, Lcom/android/calendar/groove/GrooveUtils;->getLocalCalendarId(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 135
    const/4 v0, 0x0

    .line 136
    if-eqz v1, :cond_0

    .line 137
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const-string v6, "minutes ASC"

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadNotifications(Ljava/lang/String;Landroid/accounts/Account;ZILjava/lang/String;Ljava/lang/String;)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v0

    .line 144
    :cond_0
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_3

    .line 145
    :cond_1
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/Utils;->isGoogleConsumerAccount(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    const/16 v0, 0x1e

    .line 153
    :goto_0
    return v0

    .line 148
    :cond_2
    const/16 v0, 0xa

    goto :goto_0

    .line 153
    :cond_3
    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->getMinutesBefore()I

    move-result v0

    goto :goto_0
.end method

.method public static getDurationAndPreferredTimesAccessibilityString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 170
    sget v0, Lcom/android/calendar/R$string;->a11y_duration_preferred_times_concatenated:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 171
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContract;->getDurationMinutes()I

    move-result v3

    invoke-static {p0, v3}, Lcom/android/calendar/event/ReminderUtils;->constructTimeIntervalString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 172
    invoke-static {p0, p1}, Lcom/android/calendar/groove/GrooveUtils;->getPreferredTimeString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 170
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDurationAndPreferredTimesString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    sget v0, Lcom/android/calendar/R$string;->duration_preferred_times_concatenated:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 161
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContract;->getDurationMinutes()I

    move-result v3

    invoke-static {p0, v3}, Lcom/android/calendar/event/ReminderUtils;->constructTimeIntervalString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 162
    invoke-static {p0, p1}, Lcom/android/calendar/groove/GrooveUtils;->getPreferredTimeString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 160
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGrooveFeedbackMessage(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 368
    :goto_0
    return-object v0

    .line 357
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 358
    sget v0, Lcom/android/calendar/R$string;->goal_updated_instance_start_time:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_1
    if-eqz p1, :cond_3

    .line 361
    invoke-static {p0}, Lcom/android/calendar/Utils;->isConnectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 362
    sget v0, Lcom/android/calendar/R$string;->goal_updated_offline:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_2
    sget v0, Lcom/android/calendar/R$string;->goal_updated_with_rescheduling:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_3
    sget v0, Lcom/android/calendar/R$string;->goal_updated:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getGrooveSupportedCalendar(Landroid/content/Context;)Lcom/android/calendar/timely/data/CalendarItem;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 307
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lcom/android/calendar/timely/data/CalendarsCache;->hasLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 332
    :cond_0
    :goto_0
    return-object v0

    .line 313
    :cond_1
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getDefaultCalendarId()J

    move-result-wide v4

    .line 314
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData(Ljava/lang/Object;)Lcom/android/calendar/timely/data/DataCache$ProviderItem;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 315
    invoke-static {v0}, Lcom/android/calendar/groove/GrooveUtils;->isPrimaryGoogleCalendar(Lcom/android/calendar/timely/data/CalendarItem;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    invoke-static {p0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 321
    array-length v3, v0

    if-gtz v3, :cond_2

    move-object v0, v1

    .line 322
    goto :goto_0

    .line 326
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 327
    invoke-virtual {v2}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 328
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 332
    goto :goto_0
.end method

.method private static getLocalCalendarId(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/Long;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 177
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->hasLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getData()Ljava/util/Collection;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/data/CalendarItem;

    .line 181
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getOwnerAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarItem;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 202
    :cond_1
    :goto_0
    return-object v0

    .line 191
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "account_name=? AND ownerAccount=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 194
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 198
    if-eqz v1, :cond_1

    .line 199
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 198
    :cond_3
    if-eqz v1, :cond_4

    .line 199
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    .line 202
    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_5

    .line 199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 198
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method public static getPreferredTimeString(Landroid/content/res/Resources;Lcom/google/android/calendar/api/HabitContract;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 74
    invoke-static {p1}, Lcom/android/calendar/groove/GrooveUtils;->allOrNoPreferredTimesSelected(Lcom/google/android/calendar/api/HabitContract;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget v0, Lcom/android/calendar/R$string;->groove_preferred_times_any_time:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContract;->isMorningPreferable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    sget v1, Lcom/android/calendar/R$string;->groove_preferred_time_mornings:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_1
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContract;->isAfternoonPreferable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    sget v1, Lcom/android/calendar/R$string;->groove_preferred_time_afternoons:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_2
    invoke-interface {p1}, Lcom/google/android/calendar/api/HabitContract;->isEveningPreferable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    sget v1, Lcom/android/calendar/R$string;->groove_preferred_time_evenings:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 91
    sget v1, Lcom/android/calendar/R$string;->preferred_time_concatenated:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 91
    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static getStartAndEndOfWeek(Landroid/content/Context;J)[J
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 263
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 264
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 265
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 266
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 267
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 268
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 271
    invoke-static {p0}, Lcom/android/calendar/Utils;->getFirstDayOfWeekAsCalendar(Landroid/content/Context;)I

    move-result v1

    .line 270
    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 273
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-lez v1, :cond_0

    .line 274
    const/4 v1, -0x7

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 276
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 278
    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->add(II)V

    .line 279
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 280
    const/4 v4, 0x2

    new-array v4, v4, [J

    aput-wide v2, v4, v5

    const/4 v2, 0x1

    aput-wide v0, v4, v2

    return-object v4
.end method

.method public static getWeekStats(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;JJ)[I
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 219
    invoke-static {p0, p5, p6}, Lcom/android/calendar/groove/GrooveUtils;->getStartAndEndOfWeek(Landroid/content/Context;J)[J

    move-result-object v0

    .line 221
    invoke-static {p2}, Lcom/google/android/calendar/HabitInstancesUtil;->getSelectionArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 222
    array-length v2, v1

    add-int/lit8 v2, v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    .line 223
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v4, v7

    .line 224
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v4, v5

    .line 225
    aget-wide v2, v0, v7

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    .line 226
    aget-wide v2, v0, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 227
    const/4 v0, 0x4

    aget-object v2, v1, v7

    aput-object v2, v4, v0

    .line 228
    array-length v0, v1

    if-le v0, v5, :cond_0

    .line 229
    const/4 v0, 0x5

    aget-object v1, v1, v5

    aput-object v1, v4, v0

    .line 231
    :cond_0
    const-string v0, "account_name = ? AND account_type = ? AND dtstart > ? AND dtstart < ? AND deleted=0 AND sync_data9 & 256=0 AND %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/calendar/HabitInstancesUtil;->getSelection()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 232
    const/4 v6, 0x0

    .line 234
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/groove/GrooveUtils;->PROJECTION:[Ljava/lang/String;

    const-string v5, "dtstart ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 239
    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v7

    move v2, v7

    .line 241
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 242
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v3, v4, p3

    if-nez v3, :cond_2

    move v0, v2

    .line 245
    :cond_2
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x80

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getEventExtrasFlag(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 247
    add-int/lit8 v7, v7, 0x1

    .line 249
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x1

    aput v7, v3, v2

    const/4 v2, 0x2

    aput v0, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    if-eqz v1, :cond_4

    .line 254
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_4
    return-object v3

    .line 253
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_5

    .line 254
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 253
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_6
    move v0, v7

    move v2, v7

    goto :goto_0
.end method

.method public static hasContractChanges(Lcom/google/android/calendar/api/HabitModifications;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 336
    if-nez p0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 339
    :cond_1
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getOriginal()Lcom/google/android/calendar/api/Habit;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 343
    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/calendar/api/HabitModifications;->getOriginal()Lcom/google/android/calendar/api/Habit;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/calendar/api/Habit;->getContract()Lcom/google/android/calendar/api/HabitContract;

    move-result-object v2

    .line 342
    invoke-static {v1, v2}, Lcom/google/android/calendar/api/HabitUtil;->contractsMatch(Lcom/google/android/calendar/api/HabitContract;Lcom/google/android/calendar/api/HabitContract;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPrimaryGoogleCalendar(Lcom/android/calendar/timely/data/CalendarItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 292
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/data/CalendarItem;->isPrimary()Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/data/CalendarItem;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_0

    const-string v2, "com.google"

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static logEvent(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 372
    if-nez p0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_category_groove:I

    .line 376
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 375
    invoke-interface {v0, p0, v1, v2}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static logEvent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Long;)V
    .locals 6

    .prologue
    .line 381
    if-nez p0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-static {p0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->analytics_category_groove:I

    .line 385
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    .line 384
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method
