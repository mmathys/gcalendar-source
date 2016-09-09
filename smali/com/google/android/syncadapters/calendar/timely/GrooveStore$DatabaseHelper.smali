.class Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GrooveStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/syncadapters/calendar/timely/GrooveStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 153
    const-string v2, "groovedata.db"

    const/4 v3, 0x0

    new-instance v5, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v5}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 154
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 155
    return-void
.end method

.method private static createHabitNotificationsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 217
    const-string v0, "CREATE TABLE IF NOT EXISTS habitnotifications (_id INTEGER PRIMARY KEY,habitParentSyncId TEXT,eventId TEXT,triggerTimeMs INTEGER,type INTEGER,displayState INTEGER, UNIQUE (eventId, type));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method private static createHabitTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 230
    const-string v0, "CREATE TABLE IF NOT EXISTS habit (_id INTEGER PRIMARY KEY,_sync_id TEXT NOT NULL,account TEXT NOT NULL COLLATE NOCASE,calendar TEXT NOT NULL COLLATE NOCASE,dirty INTEGER NOT NULL DEFAULT 1,lastSynced INTEGER NOT NULL DEFAULT 0,mutators TEXT,fingerprint TEXT,deletionStatus INTEGER NOT NULL DEFAULT 1,untilMillisUtc INTEGER NOT NULL DEFAULT 0,data BLOB, UNIQUE (_sync_id, lastSynced, calendar, account));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private static createSyncStateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 250
    const-string v0, "CREATE TABLE IF NOT EXISTS _sync_state (_id INTEGER PRIMARY KEY,account_name TEXT NOT NULL,data TEXT, UNIQUE (account_name));"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method private static dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 213
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

    .line 214
    return-void

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 206
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->createHabitTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 207
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->createHabitNotificationsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 208
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->createSyncStateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->triggerSyncAdapterRestoreGrooveData(Landroid/content/Context;)V

    .line 210
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .prologue
    .line 159
    packed-switch p2, :pswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 161
    :pswitch_0
    const-string v0, "habitinstances"

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 166
    :pswitch_1
    const-string v0, "habit"

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->createHabitTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 170
    :pswitch_2
    const-string v0, "habitnotifications"

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 171
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->createHabitNotificationsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 174
    :pswitch_3
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->createSyncStateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 178
    :pswitch_4
    const-string v0, "habit"

    invoke-static {p1, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 179
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->createHabitTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 182
    :pswitch_5
    const-string v0, "UPDATE habitnotifications SET displayState=2 WHERE displayState=4"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    :pswitch_6
    const/16 v0, 0x8

    if-le p2, v0, :cond_0

    .line 191
    :try_start_0
    const-string v0, "ALTER TABLE habit ADD COLUMN untilMillisUtc INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.calendar.intent.action.POPULATE_UNTIL_MILLIS_UTC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 197
    # getter for: Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Can not add column %s on upgrade from %d to %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "associatedContacts"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 198
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 197
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
