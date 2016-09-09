.class public Lcom/google/android/syncadapters/calendar/timely/TimelyStore;
.super Ljava/lang/Object;
.source "TimelyStore.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/timely/ExtendedPropertiesConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;,
        Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;,
        Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;,
        Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final BASE_CONTENT_PROVIDER_URI:Landroid/net/Uri;

.field private static final EVENT_TABLE_COLUMNS:[Ljava/lang/String;

.field private static final JELLY_BEAN_OR_HIGHER:Z

.field private static final STORE_HOLDER_LOCK:Ljava/lang/Object;

.field static final TABLE_CALENDAR_SETTINGS:Ljava/lang/String; = "calendar_settings"

.field static final TABLE_EVENT_EXTRAS:Ljava/lang/String; = "timelydata"

.field static final TABLE_NOTIFICATIONS:Ljava/lang/String; = "preferrednotifications"

.field static final WHERE_CALENDAR_SYNC_ID_ACCOUNT_NAME_AND_ACCOUNT_TYPE:Ljava/lang/String; = "calendar_sync_id = ? AND account_name = ? AND account_type = ?"

.field private static sStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;


# instance fields
.field private final mAccountSettingsLogStore:Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;

.field private final mAccountSettingsStore:Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

.field private mContext:Landroid/content/Context;

.field mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mSupportedConferenceByCalendarIdMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->EVENT_EXTRAS_URI:Landroid/net/Uri;

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->BASE_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->STORE_HOLDER_LOCK:Ljava/lang/Object;

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->JELLY_BEAN_OR_HIGHER:Z

    .line 159
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_sync_id"

    aput-object v3, v0, v2

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->EVENT_TABLE_COLUMNS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mAccountSettingsLogStore:Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;

    .line 200
    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mAccountSettingsStore:Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    .line 201
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;

    const/16 v1, 0x1f

    invoke-direct {v0, p1, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    .line 207
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mContext:Landroid/content/Context;

    .line 210
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mAccountSettingsLogStore:Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;

    .line 211
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mAccountSettingsLogStore:Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;

    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;->create(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;)Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mAccountSettingsStore:Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    .line 213
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->JELLY_BEAN_OR_HIGHER:Z

    return v0
.end method

.method public static acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;
    .locals 2

    .prologue
    .line 177
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->STORE_HOLDER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    :try_start_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->sStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-direct {v0, p0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->sStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 181
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->sStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getEventData(J)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 507
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 508
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->EVENT_TABLE_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 507
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 513
    if-nez v1, :cond_0

    .line 514
    const-string v0, "TimelyStore"

    const-string v1, "Null cursor while retrieving syncId and title"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 530
    :goto_0
    return-object v3

    .line 518
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    const-string v0, "TimelyStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x3f

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unable to load event sync id and title for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 522
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 523
    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->EVENT_TABLE_COLUMNS:[Ljava/lang/String;

    array-length v4, v2

    move v0, v6

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v2, v0

    .line 524
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 525
    if-eqz v6, :cond_2

    .line 526
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 532
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private loadNotifications(Ljava/lang/String;Landroid/accounts/Account;ZI)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    .locals 7

    .prologue
    .line 741
    const/4 v5, 0x0

    const-string v6, "timestamp ASC"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadNotifications(Ljava/lang/String;Landroid/accounts/Account;ZILjava/lang/String;Ljava/lang/String;)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v0

    return-object v0
.end method

.method public static release()V
    .locals 2

    .prologue
    .line 191
    sget-object v1, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->STORE_HOLDER_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->sStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 193
    monitor-exit v1

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateNotifications(Ljava/lang/String;Landroid/accounts/Account;Z[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;ILandroid/content/Context;)V
    .locals 13

    .prologue
    .line 794
    if-nez p6, :cond_1

    const/4 v2, 0x1

    .line 798
    :goto_0
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 802
    const/4 v3, 0x0

    .line 803
    const/4 v4, 0x3

    :try_start_0
    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v6, v4

    const/4 v4, 0x1

    .line 805
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v5, 0x2

    if-eqz p3, :cond_2

    .line 806
    const-string v4, "1"

    :goto_1
    aput-object v4, v6, v5

    .line 809
    if-eqz v2, :cond_7

    .line 811
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v4, v0

    if-nez v4, :cond_3

    .line 815
    :cond_0
    move-object/from16 v0, p7

    move/from16 v1, p3

    invoke-static {v0, p2, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->getRecentNotificationOptions(Landroid/content/Context;Landroid/accounts/Account;Z)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object p5

    .line 817
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 818
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p5

    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 819
    aget-object v5, p5, v4

    invoke-virtual {v5}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 820
    const-string v7, "lookupKey"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v7, "accountName"

    iget-object v10, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v7, "category"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v7, "timestamp"

    int-to-long v10, v4

    add-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 825
    iget-object v7, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "preferrednotifications"

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v7, v10, v11, v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 818
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 794
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 806
    :cond_2
    const-string v4, "0"

    goto :goto_1

    .line 833
    :cond_3
    const/4 v4, 0x0

    move v5, v4

    :goto_3
    move-object/from16 v0, p4

    array-length v4, v0

    if-ge v5, v4, :cond_6

    .line 834
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p5

    array-length v7, v0

    if-ge v4, v7, :cond_4

    .line 835
    aget-object v7, p5, v4

    aget-object v8, p4, v5

    invoke-virtual {v7, v8}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 836
    add-int/lit8 v3, v3, 0x1

    .line 833
    :cond_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 834
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move v4, v3

    .line 859
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 860
    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p4

    array-length v5, v0

    if-ge v3, v5, :cond_a

    .line 861
    aget-object v5, p4, v3

    .line 863
    invoke-virtual {v5}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->toContentValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 864
    const-string v7, "lookupKey"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v7, "accountName"

    iget-object v10, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v7, "category"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string v7, "timestamp"

    int-to-long v10, v3

    add-long/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 870
    iget-object v7, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "preferrednotifications"

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v7, v10, v11, v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 860
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 843
    :cond_7
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "preferrednotifications"

    const-string v7, "lookupKey = ? AND category = ? AND allday = ?"

    invoke-virtual {v4, v5, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 845
    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/calendar/Accounts;->isExchangeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p4

    array-length v4, v0

    if-nez v4, :cond_8

    .line 848
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 849
    const-string v4, "lookupKey"

    invoke-virtual {v5, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v4, "accountName"

    iget-object v7, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v4, "category"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    const-string v7, "allday"

    if-eqz p3, :cond_9

    const/4 v4, 0x1

    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    const-string v4, "noNotifications"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "preferrednotifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_8
    move v4, v3

    goto/16 :goto_5

    .line 852
    :cond_9
    const/4 v4, 0x0

    goto :goto_7

    .line 878
    :cond_a
    if-eqz v2, :cond_b

    .line 879
    const-string v2, "_id in ( SELECT _id FROM preferrednotifications WHERE lookupKey = ? AND category = ? AND allday = ? ORDER BY timestamp ASC LIMIT "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    array-length v3, v0

    sub-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 883
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "preferrednotifications"

    invoke-virtual {v3, v4, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 886
    :cond_b
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 890
    return-void

    .line 888
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private updateOrInsertOneEventField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 362
    :goto_0
    return v0

    .line 342
    :cond_0
    const-string v2, "TimelyStore"

    const-string v3, "updating data for event: %s calendar: %d"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 343
    const-string v2, "TimelyStore"

    const-string v3, "Timely %s: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p4, v4, v1

    aput-object p5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 345
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 347
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 348
    invoke-virtual {v2, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v3, "syncId"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v3, "calendarId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 353
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "timelydata"

    const-string v5, "syncId = ? AND calendarId = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    .line 354
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 353
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 355
    if-lez v3, :cond_1

    .line 356
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 360
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "timelydata"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 361
    iget-object v4, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 365
    :goto_1
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 362
    goto :goto_1

    .line 365
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public deletePreferredNotifications(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferrednotifications"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAccountSettingsLogStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mAccountSettingsLogStore:Lcom/google/android/syncadapters/calendar/timely/AccountSettingsLogStore;

    return-object v0
.end method

.method public getAccountSettingsStore()Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mAccountSettingsStore:Lcom/google/android/syncadapters/calendar/timely/AccountSettingsStore;

    return-object v0
.end method

.method public getConferenceTypeForCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 912
    if-nez p1, :cond_1

    move-object v0, v8

    .line 960
    :cond_0
    :goto_0
    return-object v0

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mSupportedConferenceByCalendarIdMap:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v0, :cond_2

    .line 917
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mSupportedConferenceByCalendarIdMap:Landroid/support/v4/util/SimpleArrayMap;

    .line 920
    :cond_2
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p2, p3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    .line 923
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mSupportedConferenceByCalendarIdMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v9}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 924
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mSupportedConferenceByCalendarIdMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v9}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 931
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "calendar_settings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "conference_properties"

    aput-object v4, v2, v3

    const-string v3, "calendar_sync_id = ? AND account_name = ? AND account_type = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 935
    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 936
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 939
    :try_start_2
    invoke-static {}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->getDefaultInstance()Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    move-result-object v2

    const-class v3, Lcom/google/api/services/calendar/model/ConferenceProperties;

    .line 940
    invoke-virtual {v2, v0, v3}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->fromString(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/ConferenceProperties;

    .line 941
    if-eqz v0, :cond_4

    .line 942
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/ConferenceProperties;->getAllowedConferenceTypes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 943
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/ConferenceProperties;->getAllowedConferenceTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 944
    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/ConferenceProperties;->getAllowedConferenceTypes()Ljava/util/List;

    move-result-object v0

    .line 945
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 947
    :cond_4
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mSupportedConferenceByCalendarIdMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, v9, v8}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v8

    .line 955
    :goto_1
    if-eqz v1, :cond_0

    .line 956
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    :try_start_3
    const-string v0, "TimelyStore"

    const-string v2, "Conference properties were not parsed for %s of %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TimelyStore"

    .line 950
    invoke-static {v5, p1}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "TimelyStore"

    .line 951
    invoke-static {v5, p2}, Lcom/android/calendarcommon2/LogUtils;->sanitizeAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 949
    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v8

    goto :goto_1

    .line 955
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v8, :cond_5

    .line 956
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 955
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_2

    :cond_6
    move-object v0, v8

    goto :goto_1
.end method

.method public getSyncIdsForCalendar(J)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 403
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "timelydata"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "syncId"

    aput-object v3, v2, v5

    const-string v3, "calendarId="

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 405
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 406
    if-eqz v1, :cond_1

    .line 408
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 415
    :cond_1
    return-object v0
.end method

.method public getTimelyEventData(JJ)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;
    .locals 9

    .prologue
    .line 465
    invoke-direct {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getEventData(J)Ljava/util/Map;

    move-result-object v0

    .line 467
    const-string v1, "_sync_id"

    .line 468
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v1, "title"

    .line 469
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 467
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getTimelyEventData(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    move-result-object v0

    return-object v0
.end method

.method public getTimelyEventData(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 429
    invoke-virtual {p0, p1, p5, p6}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadSyncedEventData(Ljava/lang/String;J)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    move-result-object v4

    .line 431
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mContext:Landroid/content/Context;

    .line 432
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "locationExtra"

    .line 431
    invoke-static {v0, p3, p4, v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->getFieldFromExtendedProperties(Landroid/content/ContentResolver;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 433
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mContext:Landroid/content/Context;

    .line 434
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "titleContactsExtra"

    .line 433
    invoke-static {v0, p3, p4, v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->getFieldFromExtendedProperties(Landroid/content/ContentResolver;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 435
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mContext:Landroid/content/Context;

    .line 436
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "attachmentsExtra"

    .line 435
    invoke-static {v0, p3, p4, v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStoreUtils;->getFieldFromExtendedProperties(Landroid/content/ContentResolver;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 437
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 438
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    .line 439
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    move v2, v1

    .line 440
    :cond_0
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    .line 441
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/timely/FlairAllocatorFactory;->getFlairUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 461
    :goto_2
    return-object v4

    :cond_1
    move v0, v2

    .line 437
    goto :goto_0

    :cond_2
    move v3, v2

    .line 438
    goto :goto_1

    .line 445
    :cond_3
    if-nez v4, :cond_7

    .line 446
    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-direct {v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;-><init>()V

    .line 448
    :goto_3
    new-instance v4, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v4}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    .line 451
    if-eqz v0, :cond_4

    .line 452
    invoke-virtual {v1, v4, v5}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setStructuredLocation(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 454
    :cond_4
    if-eqz v3, :cond_5

    .line 455
    invoke-virtual {v1, v4, v6}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setTitleContactAnnotations(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    .line 457
    :cond_5
    if-eqz v2, :cond_6

    .line 458
    invoke-virtual {v1, v4, v7}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->setAttachments(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)V

    :cond_6
    move-object v4, v1

    .line 461
    goto :goto_2

    :cond_7
    move-object v1, v4

    goto :goto_3
.end method

.method public getTimelyEventDataList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    new-instance v9, Ljava/util/ArrayList;

    .line 485
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 488
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 489
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getEventData(J)Ljava/util/Map;

    move-result-object v0

    .line 490
    const-string v1, "_sync_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 491
    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 492
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 493
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v1, p0

    .line 494
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getTimelyEventData(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 497
    :cond_0
    return-object v9
.end method

.method public insertOrUpdateEventData(Ljava/lang/String;JLcom/google/android/syncadapters/calendar/timely/TimelyEventData;)Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 231
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 233
    const-string v2, "TimelyStore"

    const-string v3, "inserting data for event: %s calendar: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 234
    const-string v2, "TimelyStore"

    const-string v3, "Timely data: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p4, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 236
    const-string v2, "syncId"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v2, "calendarId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    invoke-virtual {p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getStructuredLocation()Lcom/google/api/services/calendar/model/StructuredLocation;

    move-result-object v2

    .line 240
    if-eqz v2, :cond_0

    .line 241
    const-string v3, "structuredLocation"

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/StructuredLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    invoke-virtual {p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getSmartMailInfo()Lcom/google/api/services/calendar/model/SmartMailInfo;

    move-result-object v2

    .line 245
    if-eqz v2, :cond_1

    .line 246
    const-string v3, "smartmail"

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/SmartMailInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_1
    invoke-virtual {p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 251
    const-string v3, "eventBackgroundUrl"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_2
    invoke-virtual {p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->titleContactAnnotationsAsString()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 256
    const-string v3, "titleContacts"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_3
    invoke-virtual {p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getEventGadget()Lcom/google/api/services/calendar/model/Event$Gadget;

    move-result-object v2

    .line 260
    if-eqz v2, :cond_4

    .line 261
    const-string v3, "eventGadget"

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Event$Gadget;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_4
    invoke-virtual {p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getEventSource()Lcom/google/api/services/calendar/model/Event$Source;

    move-result-object v2

    .line 265
    if-eqz v2, :cond_5

    .line 266
    const-string v3, "eventSource"

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/Event$Source;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_5
    invoke-virtual {p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->attachmentsAsString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 271
    const-string v3, "attachments"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_6
    invoke-virtual {p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;->getConferenceData()Lcom/google/api/services/calendar/model/ConferenceData;

    move-result-object v2

    .line 275
    if-eqz v2, :cond_7

    .line 276
    const-string v3, "conferenceData"

    invoke-virtual {v2}, Lcom/google/api/services/calendar/model/ConferenceData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_7
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "timelydata"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    .line 289
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    .line 294
    :goto_0
    return-object v0

    :cond_8
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->BASE_CONTENT_PROVIDER_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public isThorSupportedForCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 975
    const-string v0, "meeting"

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->getConferenceTypeForCalendar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadAllNotifications(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 614
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 615
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 616
    new-instance v8, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;

    invoke-direct {v8, v2, v3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 618
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 620
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 621
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 622
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 623
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 627
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v9, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;

    invoke-direct {v9}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;-><init>()V

    invoke-interface {v2, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_0
    new-instance v7, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;

    invoke-direct {v7, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;-><init>(Landroid/accounts/Account;)V

    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 632
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 634
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 635
    const-string v0, "lookupKey"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 637
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    const-string v0, " OR "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 642
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 643
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 644
    const/4 v0, 0x0

    const-string v1, "("

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_4
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :cond_5
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferrednotifications"

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->NOTIFICATIONS_PROJECTION:[Ljava/lang/String;

    .line 650
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "category ASC, lookupKey ASC, allday ASC, timestamp DESC"

    move-object v5, v4

    move-object v6, v4

    .line 649
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 651
    invoke-virtual {p0, v8, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->setNotificationsFromCursor(Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;Landroid/database/Cursor;)V

    .line 652
    return-object v8
.end method

.method public loadDefaultNotifications(Ljava/lang/String;Landroid/accounts/Account;Z)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadNotifications(Ljava/lang/String;Landroid/accounts/Account;ZI)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v0

    return-object v0
.end method

.method public loadNotifications(Ljava/lang/String;Landroid/accounts/Account;ZILjava/lang/String;Ljava/lang/String;)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    .locals 8

    .prologue
    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "lookupKey = ? AND category = ? AND allday = ?"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 748
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferrednotifications"

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->NOTIFICATIONS_PROJECTION:[Ljava/lang/String;

    .line 752
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 753
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v6, 0x2

    if-eqz p3, :cond_1

    .line 754
    const-string v5, "1"

    :goto_0
    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p6

    .line 751
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 757
    :try_start_0
    sget-object v0, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    .line 758
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    .line 760
    const/4 v1, -0x1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 761
    const/4 v1, 0x0

    move v2, v1

    .line 762
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 763
    const-string v1, "allday"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 764
    const-string v1, "minutes"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 765
    const-string v1, "method"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 766
    const-string v1, "noNotifications"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    const/4 v1, 0x1

    .line 769
    :goto_2
    if-eqz v1, :cond_3

    .line 770
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 782
    :goto_3
    return-object v0

    .line 754
    :cond_1
    const-string v5, "0"

    goto :goto_0

    .line 766
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 773
    :cond_3
    add-int/lit8 v1, v2, 0x1

    :try_start_1
    new-instance v7, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    invoke-direct {v7, v4, v5, v6}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;-><init>(III)V

    aput-object v7, v0, v2

    move v2, v1

    .line 774
    goto :goto_1

    .line 776
    :cond_4
    const/4 v1, 0x1

    if-ne p4, v1, :cond_5

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 777
    invoke-static {v1}, Lcom/google/android/calendar/Accounts;->isExchangeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    array-length v1, v0

    if-nez v1, :cond_5

    .line 778
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    const/4 v1, 0x0

    .line 779
    invoke-static {p3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->getExchangeInitialDeafultNotification(Z)Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public loadRecentlyUsedNotificationsForAccount(Landroid/accounts/Account;Z)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;
    .locals 2

    .prologue
    .line 584
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadNotifications(Ljava/lang/String;Landroid/accounts/Account;ZI)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v0

    return-object v0
.end method

.method public loadSyncedEventData(Ljava/lang/String;J)Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    :goto_0
    return-object v5

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "timelydata"

    sget-object v2, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->EVENT_EXTRAS_PROJECTION:[Ljava/lang/String;

    const-string v3, "syncId = ? AND calendarId = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    .line 542
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    .line 541
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 546
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 573
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 551
    :cond_1
    :try_start_1
    const-string v0, "eventBackgroundUrl"

    .line 552
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 553
    const-string v0, "structuredLocation"

    .line 554
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 555
    const-string v0, "smartmail"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 556
    const-string v0, "titleContacts"

    .line 557
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 558
    const-string v0, "eventGadget"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 559
    const-string v0, "eventSource"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 560
    const-string v0, "attachments"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 561
    const-string v0, "conferenceData"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 568
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/syncadapters/calendar/timely/TimelyEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v0

    .line 568
    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public removeDataForCalendar(Landroid/accounts/Account;JLjava/lang/String;)V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 387
    const-string v0, "TimelyStore"

    const-string v1, "remove data for calendar %s of account: %s"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "TimelyStore"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 388
    invoke-static {v3, v4}, Lcom/android/calendarcommon2/LogUtils;->sanitizeAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 387
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 390
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "timelydata"

    const-string v2, "calendarId="

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "calendar_settings"

    const-string v2, "calendar_sync_id = ? AND account_name = ? AND account_type = ?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object p4, v3, v5

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferrednotifications"

    const-string v2, "lookupKey="

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method public removeTimelyEventData(Ljava/lang/String;J)Z
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    const-string v2, "TimelyStore"

    const-string v3, "deleting data for event: %s calendar: %d"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 373
    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "timelydata"

    const-string v4, "syncId = ? AND calendarId = ?"

    new-array v5, v6, [Ljava/lang/String;

    aput-object p1, v5, v1

    .line 374
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 373
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 376
    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method setNotificationsFromCursor(Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;Landroid/database/Cursor;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 666
    if-nez p2, :cond_0

    .line 667
    const-string v0, "TimelyStore"

    const-string v1, "Null cursor for notifications."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 720
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;->getRecentNotificationsMap()Ljava/util/Map;

    move-result-object v4

    .line 674
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$Notifications;->getDefaultNotificationsMap()Ljava/util/Map;

    move-result-object v5

    .line 677
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 678
    const-string v0, "lookupKey"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 680
    const-string v1, "category"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 682
    const-string v1, "method"

    .line 683
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 682
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 684
    const-string v1, "minutes"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 686
    const-string v1, "allday"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 688
    const-string v1, "noNotifications"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    .line 691
    :goto_2
    if-nez v6, :cond_4

    .line 692
    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    invoke-direct {v1, v9, v8, v7}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;-><init>(III)V

    .line 695
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;

    .line 696
    if-eqz v0, :cond_3

    .line 697
    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$RecentNotifications;->addNotification(Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 718
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v1, v3

    .line 688
    goto :goto_2

    .line 699
    :cond_3
    :try_start_1
    const-string v0, "TimelyStore"

    const-string v1, "Lookup for recent notifications failed, ignoring."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 701
    :cond_4
    if-ne v6, v2, :cond_1

    .line 703
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;

    .line 704
    if-eqz v0, :cond_7

    .line 705
    if-eqz v1, :cond_6

    .line 706
    if-ne v9, v2, :cond_5

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->setNoNotifications(Z)V

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_3

    .line 708
    :cond_6
    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    invoke-direct {v1, v9, v8, v7}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;-><init>(III)V

    .line 710
    invoke-virtual {v0, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore$DefaultNotifications;->addNotification(Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V

    goto/16 :goto_1

    .line 713
    :cond_7
    const-string v0, "TimelyStore"

    const-string v1, "Lookup for default notifications failed, ignoring."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 718
    :cond_8
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public updateAttachments(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 6

    .prologue
    .line 333
    const-string v4, "attachments"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateOrInsertOneEventField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateCalendarSettings(Landroid/accounts/Account;Lcom/google/api/services/calendar/model/CalendarListEntry;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 998
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getConferenceProperties()Lcom/google/api/services/calendar/model/ConferenceProperties;

    move-result-object v0

    .line 999
    if-nez v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "calendar_settings"

    const-string v2, "calendar_sync_id = ? AND account_name = ? AND account_type = ?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 1002
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v3, v5

    .line 1000
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1024
    :goto_0
    return-void

    .line 1009
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->getDefaultInstance()Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1017
    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1018
    const-string v3, "calendar_sync_id"

    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const-string v3, "account_type"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string v3, "conference_properties"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "calendar_settings"

    const/4 v4, 0x5

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    const-string v0, "TimelyStore"

    const-string v2, "Failed to serialize ConferenceProperties to JSON for %s and account %s."

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "TimelyStore"

    .line 1013
    invoke-virtual {p2}, Lcom/google/api/services/calendar/model/CalendarListEntry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/calendarcommon2/LogUtils;->sanitizeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "TimelyStore"

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1014
    invoke-static {v4, v5}, Lcom/android/calendarcommon2/LogUtils;->sanitizeAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1011
    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    goto :goto_1
.end method

.method public updateCalendarsSettings(Landroid/accounts/Account;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/calendar/model/CalendarListEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 986
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 987
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/CalendarListEntry;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateCalendarSettings(Landroid/accounts/Account;Lcom/google/api/services/calendar/model/CalendarListEntry;)V

    .line 986
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 989
    :cond_0
    return-void
.end method

.method public updateDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Z[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V
    .locals 8

    .prologue
    .line 731
    .line 732
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadDefaultNotifications(Ljava/lang/String;Landroid/accounts/Account;Z)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v5

    .line 734
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateNotifications(Ljava/lang/String;Landroid/accounts/Account;Z[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;ILandroid/content/Context;)V

    .line 736
    return-void
.end method

.method public updateRecentlyUsedNotification(Landroid/content/Context;Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V
    .locals 3

    .prologue
    .line 601
    invoke-virtual {p3}, Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;->isAllDay()Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateRecentlyUsedNotifications(Landroid/content/Context;Landroid/accounts/Account;Z[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V

    .line 603
    return-void
.end method

.method public updateRecentlyUsedNotifications(Landroid/content/Context;Landroid/accounts/Account;Z[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;)V
    .locals 8

    .prologue
    .line 591
    .line 592
    invoke-virtual {p0, p2, p3}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->loadRecentlyUsedNotificationsForAccount(Landroid/accounts/Account;Z)[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;

    move-result-object v5

    .line 594
    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateNotifications(Ljava/lang/String;Landroid/accounts/Account;Z[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;[Lcom/google/android/syncadapters/calendar/timely/PreferredNotification;ILandroid/content/Context;)V

    .line 597
    return-void
.end method

.method public updateTitleContactAnnotations(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 6

    .prologue
    .line 320
    const-string v4, "titleContacts"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->updateOrInsertOneEventField(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
