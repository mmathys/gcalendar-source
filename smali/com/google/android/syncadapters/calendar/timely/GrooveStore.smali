.class public Lcom/google/android/syncadapters/calendar/timely/GrooveStore;
.super Ljava/lang/Object;
.source "GrooveStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final HABIT_COUNTS_PROJECTION:[Ljava/lang/String;

.field private static final HABIT_COUNT_PROJECTION:[Ljava/lang/String;

.field private static final HABIT_NOTIFICATION_PROJECTION:[Ljava/lang/String;

.field private static final HABIT_PROJECTION:[Ljava/lang/String;

.field private static final STORE_HOLDER_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static sStore:Lcom/google/android/syncadapters/calendar/timely/GrooveStore;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const-class v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->TAG:Ljava/lang/String;

    .line 84
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_sync_id"

    aput-object v1, v0, v4

    const-string v1, "account"

    aput-object v1, v0, v5

    const-string v1, "calendar"

    aput-object v1, v0, v6

    const-string v1, "deletionStatus"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dirty"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lastSynced"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mutators"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fingerprint"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "untilMillisUtc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->HABIT_PROJECTION:[Ljava/lang/String;

    .line 98
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "habitParentSyncId"

    aput-object v1, v0, v4

    const-string v1, "eventId"

    aput-object v1, v0, v5

    const-string v1, "displayState"

    aput-object v1, v0, v6

    const-string v1, "triggerTimeMs"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->HABIT_NOTIFICATION_PROJECTION:[Ljava/lang/String;

    .line 107
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "IFNULL(COUNT(_id), 0) AS _id"

    aput-object v1, v0, v3

    const-string v1, "IFNULL(SUM(dirty), 0) AS dirty"

    aput-object v1, v0, v4

    const-string v1, "IFNULL(SUM(lastSynced), 0) AS lastSynced"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->HABIT_COUNTS_PROJECTION:[Ljava/lang/String;

    .line 113
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "IFNULL(COUNT(_id), 0) AS _count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->HABIT_COUNT_PROJECTION:[Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->STORE_HOLDER_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    .line 126
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 127
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mContext:Landroid/content/Context;

    .line 128
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createInstanceContentUri(Lcom/google/android/calendar/api/HabitDescriptor;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 405
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    .line 406
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 408
    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    iget-object v2, p1, Lcom/google/android/calendar/api/HabitDescriptor;->calendar:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 409
    invoke-virtual {v2}, Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 405
    return-object v0
.end method

.method public static forceNotifyChange(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 615
    if-nez p0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 622
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".APPWIDGET_CALLER_IS_SYNCADAPTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_0

    .line 624
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getHabitEntityFromCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 2

    .prologue
    .line 506
    new-instance v0, Landroid/content/ContentValues;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 507
    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 508
    new-instance v1, Landroid/content/Entity;

    invoke-direct {v1, v0}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    return-object v1
.end method

.method public static getInstance()Lcom/google/android/syncadapters/calendar/timely/GrooveStore;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->sStore:Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You have to call initialize() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->sStore:Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 131
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->STORE_HOLDER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->sStore:Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    invoke-direct {v0, p0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->sStore:Lcom/google/android/syncadapters/calendar/timely/GrooveStore;

    .line 135
    :cond_0
    monitor-exit v1

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static triggerSyncAdapterRestoreGrooveData(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 395
    invoke-static {p0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 396
    new-instance v5, Landroid/os/Bundle;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 397
    const-string v6, "only_groove"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 398
    const-string v6, "feed_internal"

    iget-object v7, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    sget-object v6, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->TAG:Ljava/lang/String;

    const-string v7, "Requesting restore of Groove data"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 400
    const-string v6, "com.android.calendar"

    invoke-static {v4, v6, v5}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    return-void
.end method

.method private validateAndGetHabitValues(Landroid/content/Entity;)Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 512
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 513
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entity contains forbidden column: _id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_0
    return-object v0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 598
    return-void
.end method

.method public countHabits(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 496
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "habit"

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->HABIT_COUNT_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 499
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 500
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 501
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 502
    return v1
.end method

.method public countHabits([Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 424
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "habit"

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->HABIT_COUNTS_PROJECTION:[Ljava/lang/String;

    if-nez p1, :cond_0

    move-object v3, v5

    .line 425
    :goto_0
    if-nez p1, :cond_1

    move-object v4, v5

    :goto_1
    move-object v6, v5

    move-object v7, v5

    .line 424
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 428
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 429
    new-instance v1, Landroid/content/ContentValues;

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->HABIT_COUNTS_PROJECTION:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 430
    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 431
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 432
    return-object v1

    .line 425
    :cond_0
    const-string v3, "account=? AND calendar=? AND _sync_id=?"

    goto :goto_0

    :cond_1
    move-object v4, p1

    .line 426
    goto :goto_1
.end method

.method public deleteHabit(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "habit"

    const-string v2, "account=? AND calendar=? AND _sync_id=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteHabitInstancesAfter(Lcom/google/android/calendar/api/HabitDescriptor;J)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 373
    .line 374
    invoke-static {}, Lcom/google/android/calendar/HabitInstancesUtil;->getSelection()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dtstart"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    iget-object v0, p1, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/calendar/HabitInstancesUtil;->getSelectionArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 376
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    move v0, v1

    .line 378
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 379
    aget-object v5, v3, v0

    aput-object v5, v4, v0

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    .line 382
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->createInstanceContentUri(Lcom/google/android/calendar/api/HabitDescriptor;)Landroid/net/Uri;

    move-result-object v0

    .line 383
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 384
    if-lez v2, :cond_1

    .line 385
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->forceNotifyChange(Landroid/content/Context;Landroid/net/Uri;)V

    .line 386
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->TAG:Ljava/lang/String;

    const-string v3, "Locally deleted %d habit instances"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 388
    :cond_1
    return v2
.end method

.method public deleteHabitNotifications(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "habitnotifications"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 602
    return-void
.end method

.method public getAccountSyncState(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 569
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "_sync_state"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "data"

    aput-object v3, v2, v8

    const-string v3, "account_name=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 574
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 575
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 581
    :goto_0
    return-object v5

    .line 578
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 579
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 580
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getHabit(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Entity;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 455
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "habit"

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->HABIT_PROJECTION:[Ljava/lang/String;

    const-string v3, "lastSynced=0 AND deletionStatus=1 AND account=? AND calendar=? AND _sync_id=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v9

    aput-object p2, v4, v8

    aput-object p3, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 459
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 460
    if-eq v1, v8, :cond_0

    .line 461
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected number - %d - of habits for id=\"%s\""

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v9

    aput-object p3, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 463
    :cond_0
    if-nez v1, :cond_1

    .line 464
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 470
    :goto_0
    return-object v5

    .line 467
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 468
    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getHabitEntityFromCursor(Landroid/database/Cursor;)Landroid/content/Entity;

    move-result-object v5

    .line 469
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getHabitNotification(Ljava/lang/String;)Landroid/content/Entity;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 520
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "habitnotifications"

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->HABIT_NOTIFICATION_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 524
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 525
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 531
    :goto_0
    return-object v5

    .line 528
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 529
    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getHabitEntityFromCursor(Landroid/database/Cursor;)Landroid/content/Entity;

    move-result-object v5

    .line 530
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public insertHabit(Landroid/content/Entity;Z)J
    .locals 5

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->validateAndGetHabitValues(Landroid/content/Entity;)Landroid/content/ContentValues;

    move-result-object v1

    .line 277
    const-string v2, "dirty"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "habit"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0

    .line 277
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertHabitNotification(Landroid/content/Entity;)J
    .locals 5

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "habitnotifications"

    const/4 v2, 0x0

    .line 563
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    const/4 v4, 0x5

    .line 562
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public queryHabitNotifications(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/content/Entity;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 542
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "habitnotifications"

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->HABIT_NOTIFICATION_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 546
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v2, v0, [Landroid/content/Entity;

    .line 547
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 548
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 549
    invoke-direct {p0, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getHabitEntityFromCursor(Landroid/database/Cursor;)Landroid/content/Entity;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 554
    return-object v2

    .line 552
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public queryHabits(Ljava/lang/String;[Ljava/lang/String;)[Landroid/content/Entity;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 479
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "habit"

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->HABIT_PROJECTION:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 481
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v2, v0, [Landroid/content/Entity;

    .line 482
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 483
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 484
    invoke-direct {p0, v1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getHabitEntityFromCursor(Landroid/database/Cursor;)Landroid/content/Entity;

    move-result-object v3

    aput-object v3, v2, v0

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 486
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 487
    return-object v2
.end method

.method public setAccountSyncState(Landroid/accounts/Account;Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 585
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 586
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "_sync_state"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 606
    return-void
.end method

.method public updateHabit(Landroid/content/Entity;)I
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->updateHabit(Landroid/content/Entity;Z)I

    move-result v0

    return v0
.end method

.method public updateHabit(Landroid/content/Entity;Z)I
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->validateAndGetHabitValues(Landroid/content/Entity;)Landroid/content/ContentValues;

    move-result-object v2

    .line 308
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 310
    :try_start_0
    const-string v3, "dirty"

    if-eqz p2, :cond_2

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    const-string v0, "lastSynced"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "account"

    .line 313
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v3, "calendar"

    .line 314
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string v3, "_sync_id"

    .line 315
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 317
    if-eqz p2, :cond_3

    .line 318
    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->countHabits([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 319
    const-string v2, "dirty"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 320
    const-string v2, "lastSynced"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "habit"

    const-string v3, "lastSynced=1 AND account=? AND calendar=? AND _sync_id=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 323
    :cond_0
    new-instance v1, Landroid/accounts/Account;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "com.google"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->getHabit(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Entity;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 326
    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 327
    const-string v3, "lastSynced"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v3, "dirty"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->insertHabit(Landroid/content/Entity;Z)J

    .line 334
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "habit"

    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "lastSynced=0 AND account=? AND calendar=? AND _sync_id=?"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 336
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 337
    return v0

    :cond_2
    move v0, v1

    .line 310
    goto/16 :goto_0

    .line 332
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "habit"

    const-string v3, "lastSynced=1 AND account=? AND calendar=? AND _sync_id=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 339
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public updateHabitInstances(Lcom/google/android/calendar/api/HabitDescriptor;Landroid/content/ContentValues;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 348
    .line 349
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 353
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->createInstanceContentUri(Lcom/google/android/calendar/api/HabitDescriptor;)Landroid/net/Uri;

    move-result-object v2

    .line 354
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 357
    invoke-static {}, Lcom/google/android/calendar/HabitInstancesUtil;->getSelection()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/calendar/api/HabitDescriptor;->habitId:Ljava/lang/String;

    .line 358
    invoke-static {v4}, Lcom/google/android/calendar/HabitInstancesUtil;->getSelectionArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-virtual {v0, v2, p2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 360
    if-lez v0, :cond_0

    .line 361
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->forceNotifyChange(Landroid/content/Context;Landroid/net/Uri;)V

    .line 362
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->TAG:Ljava/lang/String;

    const-string v3, "Locally propagated changes to %d habit instances"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 365
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public updateHabitNotification(Landroid/content/Entity;)I
    .locals 8

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/GrooveStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "habitnotifications"

    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 537
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v6

    const-string v7, "_id"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 535
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
