.class public Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;
.super Ljava/lang/Object;
.source "AccountSettingsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SETTINGS_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/AccountSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mLogStore:Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;

.field private final mTaskSettingsObservable:Landroid/database/ContentObservable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accountName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tasksselected"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "taskscolor"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "autoAddHangouts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "timezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "qualityOfService"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "smartMailDelivery"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "holidayscolor"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "defaultNoEndTime"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "defaultEventLength"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "settingBirthdayVisibility"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "settingBirthdayIncludeGplus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->ACCOUNT_SETTINGS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/AccountSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mTaskSettingsObservable:Landroid/database/ContentObservable;

    .line 108
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 110
    iput-object p3, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mLogStore:Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;

    .line 111
    iput-object p4, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mCache:Ljava/util/Map;

    .line 112
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->createCache(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;Ljava/util/Map;)V

    return-object v0
.end method

.method private static createCache(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/AccountSettings;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 72
    .line 74
    :try_start_0
    const-string v1, "timelysettings"

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->ACCOUNT_SETTINGS_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 83
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    if-nez v1, :cond_1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    :cond_2
    const-string v2, "accountName"

    .line 90
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->createFromCursor(Landroid/database/Cursor;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v3

    .line 89
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    .line 96
    :cond_3
    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_4

    .line 97
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 96
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private notifyTaskSettingsChanged(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 400
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->TASKS_CALENDAR_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mTaskSettingsObservable:Landroid/database/ContentObservable;

    invoke-virtual {v1, v2, v0}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mContext:Landroid/content/Context;

    .line 407
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->TASKS_CALENDAR_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 408
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 410
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.timely.intent.action.TASK_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 411
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mTaskSettingsObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, v2}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    goto :goto_0
.end method

.method private updateCache(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 370
    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "timelysettings"

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->ACCOUNT_SETTINGS_COLUMNS:[Ljava/lang/String;

    const-string v3, "accountName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 380
    if-nez v1, :cond_1

    .line 391
    if-eqz v1, :cond_0

    .line 392
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->createFromCursor(Landroid/database/Cursor;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v2

    .line 385
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    invoke-virtual {v2, v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;->areTaskSettingsEqual(Lcom/google/android/syncadapters/calendar/timely/AccountSettings;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->notifyTaskSettingsChanged(Ljava/lang/String;)V

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 391
    :cond_3
    if-eqz v1, :cond_0

    .line 392
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_4

    .line 392
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 391
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private updateDatabase(Ljava/lang/String;Landroid/content/ContentValues;ZLjava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 324
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 326
    if-eqz p3, :cond_1

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mLogStore:Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;

    invoke-virtual {v2, p1, p2, p4}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;->log(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 334
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "timelysettings"

    const-string v4, "accountName = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 335
    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 340
    if-lez v2, :cond_2

    .line 341
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 344
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mContext:Landroid/content/Context;

    .line 345
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->ACCOUNT_SETTINGS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 346
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 362
    :goto_1
    return v0

    .line 328
    :cond_1
    :try_start_1
    invoke-static {p4}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    const-string v2, "AccountSettingsStore"

    const-string v3, "Log flags dropped: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 351
    :cond_2
    :try_start_2
    const-string v2, "accountName"

    invoke-virtual {p2, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "timelysettings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 353
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 354
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 357
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mContext:Landroid/content/Context;

    .line 358
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->ACCOUNT_SETTINGS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 359
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    .line 362
    goto :goto_1
.end method

.method private updateDatabaseAndCache(Ljava/lang/String;Landroid/content/ContentValues;ZLjava/lang/String;)Z
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateDatabase(Ljava/lang/String;Landroid/content/ContentValues;ZLjava/lang/String;)Z

    move-result v0

    .line 303
    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0, p1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateCache(Ljava/lang/String;)V

    .line 306
    :cond_0
    return v0
.end method


# virtual methods
.method public getSettings(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->getSettings(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    move-result-object v0

    return-object v0
.end method

.method public getSettings(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/AccountSettings;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    invoke-direct {v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;-><init>()V

    .line 246
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/AccountSettings;

    goto :goto_0
.end method

.method public hasSettings(Landroid/accounts/Account;)Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->hasSettings(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSettings(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 223
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "timelysettings"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public registerTaskSettingsContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mTaskSettingsObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 235
    return-void
.end method

.method public unregisterTaskSettingsContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->mTaskSettingsObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public updateFromClient(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 211
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 213
    # getter for: Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mValues:Landroid/content/ContentValues;
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->access$000(Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x1

    # getter for: Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->mJsonFlags:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->access$100(Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateDatabaseAndCache(Ljava/lang/String;Landroid/content/ContentValues;ZLjava/lang/String;)Z

    move-result v0

    .line 214
    if-eqz v0, :cond_1

    .line 215
    # getter for: Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->triggerSyncAdapterUpdate:Z
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;->access$200(Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore$UpdateBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->triggerSyncAdapterSettingUpdate(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 217
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFromSync(Landroid/accounts/Account;Landroid/content/ContentValues;)Z
    .locals 3

    .prologue
    .line 202
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->updateDatabaseAndCache(Ljava/lang/String;Landroid/content/ContentValues;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method
