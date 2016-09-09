.class public Lcom/android/calendar/alerts/AlertUtils;
.super Ljava/lang/Object;
.source "AlertUtils.java"


# static fields
.field static BYPASS_DB:Z

.field static final EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/alerts/AlertUtils;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

    .line 69
    sput-boolean v3, Lcom/android/calendar/alerts/AlertUtils;->BYPASS_DB:Z

    return-void
.end method

.method public static createAlarmManager(Landroid/content/Context;)Lcom/android/calendar/alerts/AlarmManagerInterface;
    .locals 2

    .prologue
    .line 93
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 94
    new-instance v1, Lcom/android/calendar/alerts/AlertUtils$1;

    invoke-direct {v1, v0}, Lcom/android/calendar/alerts/AlertUtils$1;-><init>(Landroid/app/AlarmManager;)V

    return-object v1
.end method

.method static flushOldAlertsFromInternalStorage(Landroid/content/Context;)V
    .locals 14

    .prologue
    .line 308
    sget-boolean v0, Lcom/android/calendar/alerts/AlertUtils;->BYPASS_DB:Z

    if-eqz v0, :cond_1

    .line 309
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->getFiredAlertsTable(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 313
    const-string v1, "preference_flushTimeMs"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 314
    sub-long v4, v2, v4

    const-wide/32 v6, 0x5265c00

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 315
    const-string v1, "AlertUtils"

    const-string v4, "Flushing old alerts from shared prefs table"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 318
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 319
    const-string v1, "preference_flushTimeMs"

    invoke-interface {v4, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 358
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    new-instance v5, Lcom/android/calendar/time/Time;

    invoke-direct {v5}, Lcom/android/calendar/time/Time;-><init>()V

    .line 325
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 326
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 328
    const-string v7, "preference_alert_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 330
    instance-of v7, v0, Ljava/lang/Long;

    if-eqz v7, :cond_4

    .line 331
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 339
    sub-long v10, v2, v8

    const-wide/32 v12, 0x5265c00

    cmp-long v0, v10, v12

    if-ltz v0, :cond_5

    .line 340
    invoke-interface {v4, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 341
    const-string v0, "AlertUtils"

    const/4 v7, 0x3

    invoke-static {v0, v7}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    invoke-static {v8, v9, v2, v3, v5}, Lcom/android/calendar/alerts/AlertUtils;->getIntervalInDays(JJLcom/android/calendar/time/Time;)I

    move-result v0

    .line 343
    const-string v7, "AlertUtils"

    const-string v8, "SharedPrefs key %s: removed (%d days old)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v1, 0x1

    .line 344
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v1

    .line 343
    invoke-static {v7, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 334
    :cond_4
    const-string v7, "AlertUtils"

    const-string v8, "SharedPrefs key %s did not have Long value: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v1, 0x1

    aput-object v0, v9, v1

    invoke-static {v7, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 347
    :cond_5
    const-string v0, "AlertUtils"

    const/4 v7, 0x3

    invoke-static {v0, v7}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 348
    invoke-static {v8, v9, v2, v3, v5}, Lcom/android/calendar/alerts/AlertUtils;->getIntervalInDays(JJLcom/android/calendar/time/Time;)I

    move-result v0

    .line 349
    const-string v7, "AlertUtils"

    const-string v8, "SharedPrefs key %s: keep (%d days old)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v1, 0x1

    .line 350
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v1

    .line 349
    invoke-static {v7, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 355
    :cond_6
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method static formatTimeLocation(Landroid/content/Context;JZJZLjava/lang/String;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 198
    if-eqz p3, :cond_3

    move-wide v2, p1

    .line 199
    :goto_0
    const/4 v8, 0x7

    .line 202
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-wide v0, p1

    move/from16 v7, p6

    move-object v9, p0

    .line 204
    invoke-static/range {v0 .. v11}, Lcom/android/calendar/Utils;->getDisplayedDateTimes(JJJLjava/lang/String;ZILandroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    sget v0, Lcom/android/calendar/R$string;->date_space_dash_space:I

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 212
    :cond_0
    :goto_1
    if-nez p6, :cond_1

    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0, v6}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/time/Time;->set(J)V

    .line 216
    iget v0, v0, Lcom/android/calendar/time/Time;->isDst:I

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 217
    :goto_2
    const-string v1, " "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    .line 219
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_1
    invoke-static {p0}, Lcom/android/calendar/Utils;->isLayoutDirectionRtl(Landroid/content/Context;)Z

    move-result v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v10, v0}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 226
    if-eqz p7, :cond_2

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 227
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/android/calendar/Utils;->forceTextAlignment(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move-wide/from16 v2, p4

    .line 198
    goto :goto_0

    .line 207
    :cond_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 209
    sget v0, Lcom/android/calendar/R$string;->date_comma_space:I

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 216
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getExtendedProperty(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/alerts/AlertUtils;->EXTENDED_PROPERTIES_PROJECTION:[Ljava/lang/String;

    const-string v3, "event_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 238
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    .line 235
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_1

    .line 242
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 253
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_1
    :goto_0
    return-object v5

    .line 250
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 253
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getFiredAlertsKey(JJJ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 278
    const-string v0, "preference_alert_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFiredAlertsTable(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 260
    const-string v0, "calendar_alerts"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getIntervalInDays(JJLcom/android/calendar/time/Time;)I
    .locals 4

    .prologue
    .line 361
    invoke-virtual {p4, p0, p1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 362
    iget-wide v0, p4, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {p0, p1, v0, v1}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v0

    .line 363
    invoke-virtual {p4, p2, p3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 364
    iget-wide v2, p4, Lcom/android/calendar/time/Time;->gmtoff:J

    invoke-static {p2, p3, v2, v3}, Lcom/android/calendar/time/Time;->getJulianDay(JJ)I

    move-result v1

    sub-int v0, v1, v0

    return v0
.end method

.method public static getNotificationDefaults(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)I
    .locals 2

    .prologue
    .line 268
    const/4 v0, 0x4

    .line 270
    invoke-virtual {p0}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getDefaultVibrate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const/4 v0, 0x6

    .line 273
    :cond_0
    return v0
.end method

.method static hasAlertFiredInSharedPrefs(Landroid/content/Context;JJJ)Z
    .locals 3

    .prologue
    .line 286
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->getFiredAlertsTable(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 287
    invoke-static/range {p1 .. p6}, Lcom/android/calendar/alerts/AlertUtils;->getFiredAlertsKey(JJJ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static scheduleAlarm(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;J)V
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/calendar/alerts/AlertUtils;->scheduleAlarmHelper(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;JZ)V

    .line 128
    return-void
.end method

.method private static scheduleAlarmHelper(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;JZ)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 141
    .line 142
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.android.calendar.EVENT_REMINDER_APP"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    const-class v0, Lcom/android/calendar/alerts/AlertReceiver;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    if-eqz p4, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 154
    :goto_0
    const-string v3, "alarmTime"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 155
    const/high16 v3, 0x8000000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 157
    if-eqz p4, :cond_1

    .line 158
    invoke-interface {p1, v0, p2, p3, v1}, Lcom/android/calendar/alerts/AlarmManagerInterface;->setExact(IJLandroid/app/PendingIntent;)V

    .line 162
    :goto_1
    return-void

    .line 149
    :cond_0
    sget-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 150
    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 151
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move v0, v1

    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {p1, v0, p2, p3, v1}, Lcom/android/calendar/alerts/AlarmManagerInterface;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method static scheduleNextNotificationRefresh(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;J)V
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/calendar/alerts/AlertUtils;->scheduleAlarmHelper(Landroid/content/Context;Lcom/android/calendar/alerts/AlarmManagerInterface;JZ)V

    .line 137
    return-void
.end method

.method static setAlertFiredInSharedPrefs(Landroid/content/Context;JJJ)V
    .locals 3

    .prologue
    .line 297
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertUtils;->getFiredAlertsTable(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    invoke-static/range {p1 .. p6}, Lcom/android/calendar/alerts/AlertUtils;->getFiredAlertsKey(JJJ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p5, p6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    return-void
.end method
