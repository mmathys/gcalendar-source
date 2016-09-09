.class Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TimelyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/TimelyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 1030
    const-string v2, "timelydata.db"

    const/4 v3, 0x0

    new-instance v5, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v5}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 1034
    # getter for: Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->JELLY_BEAN_OR_HIGHER:Z
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 1037
    :cond_0
    return-void
.end method

.method private static createAccountSettingsLogTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1421
    const-string v0, "CREATE TABLE timelysettingslog (_id INTEGER PRIMARY KEY,accountName TEXT,id TEXT,value TEXT,flags TEXT);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1428
    const-string v0, "CREATE INDEX settings_log_account_ordered_index ON timelysettingslog(accountName,_id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1431
    return-void
.end method

.method private static createAccountSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1394
    const-string v0, "CREATE TABLE timelysettings (_id INTEGER PRIMARY KEY,accountName TEXT UNIQUE,smartMailDelivery TEXT DEFAULT CREATE_SECRET,tasksselected INTEGER DEFAULT 1,taskscolor TEXT DEFAULT \"4184f3\",defaultEventLength INTEGER DEFAULT 60,defaultNoEndTime INTEGER DEFAULT 0,settingBirthdayVisibility INTEGER DEFAULT 1,settingBirthdayIncludeGplus INTEGER DEFAULT 1,holidayscolor TEXT,autoAddHangouts INTEGER DEFAULT 0,timezone TEXT,qualityOfService TEXT DEFAULT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1415
    const-string v0, "CREATE INDEX calendar_account_index ON timelysettings(accountName)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1418
    return-void
.end method

.method private static createCalendarSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1457
    const-string v0, "CREATE TABLE calendar_settings (_id INTEGER PRIMARY KEY,calendar_sync_id TEXT,account_name TEXT,account_type TEXT,conference_properties TEXT, UNIQUE (calendar_sync_id, account_name, account_type));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1468
    const-string v0, "CREATE INDEX calendar_settings_index ON calendar_settings(calendar_sync_id, account_name, account_type)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1472
    return-void
.end method

.method private static createEventExtrasTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1372
    const-string v0, "CREATE TABLE timelydata (_id INTEGER PRIMARY KEY,syncId TEXT,calendarId INTEGER,structuredLocation TEXT,smartmail TEXT,eventBackgroundUrl TEXT,attachments TEXT,associatedContacts TEXT,titleContacts TEXT,eventGadget TEXT,eventSource TEXT,conferenceData TEXT,deepLinkData TEXT, UNIQUE (syncId, calendarId));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1389
    const-string v0, "CREATE INDEX calendar_event_index ON timelydata (syncId, calendarId)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1391
    return-void
.end method

.method private static createNotificationsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1434
    const-string v0, "CREATE TABLE preferrednotifications (_id INTEGER PRIMARY KEY,lookupKey TEXT,accountName TEXT,category INTEGER,allday INTEGER,minutes INTEGER,method INTEGER,timestamp INTEGER,noNotifications INTEGER DEFAULT 0, UNIQUE (lookupKey, accountName, category, allday, minutes, method));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1451
    const-string v0, "CREATE INDEX notifications_index ON preferrednotifications(lookupKey, category)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1454
    return-void
.end method

.method private static dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1365
    const-string v1, "DROP TABLE IF EXISTS "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1366
    return-void

    .line 1365
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static enableWriteAheadLogging(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1066
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 1069
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1041
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createEventExtrasTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1042
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createAccountSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1043
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createAccountSettingsLogTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1044
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createNotificationsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1045
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createCalendarSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1046
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->triggerSyncAdapterRestoreTimelyData()V

    .line 1047
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 1053
    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    .line 1056
    # getter for: Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->JELLY_BEAN_OR_HIGHER:Z
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1057
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->enableWriteAheadLogging(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1059
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9

    .prologue
    const/4 v6, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1076
    .line 1080
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 1343
    :cond_0
    :goto_0
    if-nez v0, :cond_f

    .line 1362
    :goto_1
    return-void

    .line 1082
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createAccountSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1085
    :pswitch_1
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createNotificationsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1088
    :pswitch_2
    const-string v0, "timelysettings"

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1089
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createAccountSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1092
    :pswitch_3
    const-string v0, "timelydata"

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1093
    const-string v0, "calendar_event_index"

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1094
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createEventExtrasTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1097
    :pswitch_4
    const-string v0, "preferrednotifications"

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1098
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createNotificationsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1102
    :pswitch_5
    if-le p2, v6, :cond_1

    .line 1104
    :try_start_0
    const-string v0, "ALTER TABLE timelydata ADD COLUMN associatedContacts TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1114
    :cond_1
    :goto_2
    :pswitch_6
    const-string v0, "preferrednotifications"

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1115
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createNotificationsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1119
    :pswitch_7
    if-le p2, v7, :cond_2

    .line 1120
    const-string v0, "ALTER TABLE timelysettings ADD COLUMN tasksselected INTEGER DEFAULT 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1123
    const-string v0, "ALTER TABLE timelysettings ADD COLUMN taskscolor TEXT DEFAULT 4184f3"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1130
    :cond_2
    :pswitch_8
    if-le p2, v6, :cond_3

    .line 1132
    :try_start_1
    const-string v0, "ALTER TABLE timelydata ADD COLUMN eventGadget TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1143
    :cond_3
    :goto_3
    :pswitch_9
    if-le p2, v7, :cond_4

    .line 1144
    const-string v0, "ALTER TABLE timelysettings ADD COLUMN defaultEventLength INTEGER DEFAULT 60"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1151
    :cond_4
    :pswitch_a
    const-string v0, "timelysettings"

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1152
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createAccountSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1156
    :pswitch_b
    const/16 v0, 0xc

    if-le p2, v0, :cond_5

    .line 1157
    const-string v0, "ALTER TABLE timelysettings ADD COLUMN holidayscolor TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1163
    :cond_5
    :pswitch_c
    if-le p2, v6, :cond_6

    .line 1165
    :try_start_2
    const-string v0, "ALTER TABLE timelydata ADD COLUMN titleContacts TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1176
    :cond_6
    :goto_4
    :pswitch_d
    const/16 v0, 0xc

    if-le p2, v0, :cond_7

    .line 1178
    const-string v0, "timelysettings"

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1179
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createAccountSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1184
    :cond_7
    :pswitch_e
    if-le p2, v6, :cond_8

    .line 1186
    :try_start_3
    const-string v0, "ALTER TABLE timelydata ADD COLUMN eventSource TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1196
    :cond_8
    :goto_5
    :pswitch_f
    const-string v0, "preferrednotifications"

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1197
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createNotificationsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1200
    :pswitch_10
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createAccountSettingsLogTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1204
    :pswitch_11
    const/16 v0, 0xc

    if-le p2, v0, :cond_9

    .line 1206
    const-string v0, "timelysettings"

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1207
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createAccountSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1215
    :cond_9
    :pswitch_12
    if-le p2, v6, :cond_a

    .line 1217
    :try_start_4
    const-string v0, "ALTER TABLE timelydata ADD COLUMN attachments TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1228
    :cond_a
    :goto_6
    :pswitch_13
    if-le p2, v6, :cond_b

    .line 1230
    :try_start_5
    const-string v0, "ALTER TABLE timelydata ADD COLUMN conferenceData TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1240
    :cond_b
    :goto_7
    :pswitch_14
    const/16 v0, 0x13

    if-le p2, v0, :cond_c

    .line 1243
    :try_start_6
    const-string v0, "ALTER TABLE timelysettings ADD COLUMN autoAddHangouts TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_7

    .line 1253
    :cond_c
    :goto_8
    :pswitch_15
    const/16 v0, 0x13

    if-le p2, v0, :cond_d

    .line 1256
    :try_start_7
    const-string v0, "ALTER TABLE timelysettings ADD COLUMN settingBirthdayIncludeGplus INTEGER DEFAULT 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_8

    .line 1269
    :cond_d
    :goto_9
    :pswitch_16
    :try_start_8
    const-string v0, "ALTER TABLE preferrednotifications ADD COLUMN noNotifications INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_9

    .line 1287
    :goto_a
    :pswitch_17
    :try_start_9
    const-string v0, "ALTER TABLE timelysettings ADD COLUMN timezone TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_a

    .line 1296
    :goto_b
    :pswitch_18
    const/16 v0, 0x1b

    if-lt p2, v0, :cond_e

    .line 1300
    :try_start_a
    const-string v0, "ALTER TABLE timelysettings DROP COLUMN isGoogleDomainUser"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_b

    .line 1309
    :cond_e
    :goto_c
    :try_start_b
    const-string v0, "ALTER TABLE timelysettings ADD COLUMN qualityOfService TEXT DEFAULT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_c

    .line 1321
    :goto_d
    :pswitch_19
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;->createCalendarSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v2

    .line 1329
    :goto_e
    if-le p2, v6, :cond_0

    .line 1331
    :try_start_c
    const-string v3, "ALTER TABLE timelydata ADD COLUMN deepLinkData TEXT"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 1333
    :catch_0
    move-exception v3

    .line 1335
    const-string v3, "TimelyStore"

    const-string v4, "Can not add column %s on upgrade from %d to %d"

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "deepLinkData"

    aput-object v6, v5, v1

    .line 1336
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1335
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 1106
    :catch_1
    move-exception v0

    .line 1108
    const-string v0, "TimelyStore"

    const-string v3, "Can not add column %s on upgrade from %d to %d"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "associatedContacts"

    aput-object v5, v4, v1

    .line 1109
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1108
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1134
    :catch_2
    move-exception v0

    .line 1136
    const-string v0, "TimelyStore"

    const-string v3, "Can not add column %s on upgrade from %d to %d"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "eventGadget"

    aput-object v5, v4, v1

    .line 1137
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1136
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_3

    .line 1167
    :catch_3
    move-exception v0

    .line 1169
    const-string v0, "TimelyStore"

    const-string v3, "Can not add column %s on upgrade from %d to %d"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "titleContacts"

    aput-object v5, v4, v1

    .line 1170
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1169
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4

    .line 1188
    :catch_4
    move-exception v0

    .line 1190
    const-string v0, "TimelyStore"

    const-string v3, "Can not add column %s on upgrade from %d to %d"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "eventSource"

    aput-object v5, v4, v1

    .line 1191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1190
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_5

    .line 1219
    :catch_5
    move-exception v0

    .line 1221
    const-string v0, "TimelyStore"

    const-string v3, "Can not add column %s on upgrade from %d to %d"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "attachments"

    aput-object v5, v4, v1

    .line 1222
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1221
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_6

    .line 1232
    :catch_6
    move-exception v0

    .line 1234
    const-string v0, "TimelyStore"

    const-string v3, "Can not add column %s on upgrade from %d to %d"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "conferenceData"

    aput-object v5, v4, v1

    .line 1235
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1234
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 1245
    :catch_7
    move-exception v0

    .line 1247
    const-string v0, "TimelyStore"

    const-string v3, "Can not add column %s on upgrade from %d to %d"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "autoAddHangouts"

    aput-object v5, v4, v1

    .line 1248
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1247
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_8

    .line 1260
    :catch_8
    move-exception v0

    .line 1262
    const-string v0, "TimelyStore"

    const-string v3, "Can not add column %s on upgrade from %d to %d"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "settingBirthdayIncludeGplus"

    aput-object v5, v4, v1

    .line 1263
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1262
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_9

    .line 1272
    :catch_9
    move-exception v0

    .line 1274
    const-string v0, "TimelyStore"

    const-string v3, "Can not add column %s on upgrade from %d to %d"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "preferrednotifications"

    aput-object v5, v4, v1

    .line 1275
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1274
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_a

    .line 1289
    :catch_a
    move-exception v0

    .line 1291
    const-string v0, "TimelyStore"

    const-string v3, "Can not add column %s on upgrade from %d to %d"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "timezone"

    aput-object v5, v4, v1

    .line 1292
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1291
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_b

    .line 1302
    :catch_b
    move-exception v0

    .line 1304
    const-string v0, "TimelyStore"

    const-string v3, "Can not drop column isGoogleDomainUser on upgrade from %d to %d"

    new-array v4, v8, [Ljava/lang/Object;

    .line 1305
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1304
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_c

    .line 1311
    :catch_c
    move-exception v0

    .line 1313
    const-string v0, "TimelyStore"

    const-string v3, "Can not add column %s on upgrade from %d to %d"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "qualityOfService"

    aput-object v5, v4, v1

    .line 1314
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 1313
    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_d

    .line 1348
    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 1349
    const-string v3, "sync_extra_get_settings"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1350
    const-string v3, "sync_extra_get_recent_notifications"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1351
    const-string v3, "sync_extra_get_default_notifications"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1354
    const-string v3, "metafeedonly"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1356
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->triggerSyncAdapterSyncWithExtras(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V

    goto/16 :goto_1

    :pswitch_1a
    move v0, v1

    goto/16 :goto_e

    .line 1080
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method
