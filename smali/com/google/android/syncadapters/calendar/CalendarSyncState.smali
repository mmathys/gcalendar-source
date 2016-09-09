.class public Lcom/google/android/syncadapters/calendar/CalendarSyncState;
.super Ljava/lang/Object;
.source "CalendarSyncState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/calendar/CalendarSyncState$IdTransformer;
    }
.end annotation


# static fields
.field private static final QUERY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mData:Lorg/json/JSONObject;

.field private originalVersion:I

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 776
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cal_sync1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cal_sync4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cal_sync5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->QUERY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->originalVersion:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->uri:Landroid/net/Uri;

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    .line 87
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setVersion(I)V

    .line 88
    invoke-virtual {p0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setFirstSeen(Z)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setJellyBean(Z)V

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->originalVersion:I

    .line 93
    iput-object p1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->uri:Landroid/net/Uri;

    .line 94
    iput-object p2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    .line 95
    return-void
.end method

.method private addTimelyDataToExistingEvents(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 908
    invoke-static {p3}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v9, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v7

    const-string v1, "ownerAccount"

    aput-object v1, v3, v5

    const-string v4, "sync_events=?"

    new-array v5, v5, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v5, v7

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 917
    new-array v9, v9, [Ljava/lang/String;

    .line 918
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    .line 920
    if-eqz v8, :cond_2

    .line 922
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 924
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 925
    const/4 v0, 0x1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 927
    sget-object v0, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_DT_START_GT_AND_EVENTS_CALENDAR_ID:Ljava/lang/String;

    invoke-static {p2, v0, v9}, Lcom/google/android/syncadapters/calendar/Utils;->getEventsRange(Landroid/content/ContentProviderClient;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/Utils$TimeRange;

    move-result-object v6

    .line 932
    if-eqz v6, :cond_0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->saveTimelyDataForEventRange(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;JLcom/google/android/syncadapters/calendar/Utils$TimeRange;Lcom/google/android/syncadapters/calendar/CalendarSyncState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The upgrade was cancelled."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 941
    :cond_2
    return-void
.end method

.method private static applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 458
    :try_start_0
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Applying operations: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 459
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->applyBatch(Landroid/content/ContentProviderClient;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Failed to apply operations while upgrading from ICS to JB"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static create(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 302
    new-instance v1, Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    invoke-direct {v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;-><init>()V

    .line 303
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getSyncingPackageFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setSyncingPackage(Ljava/lang/String;)V

    .line 304
    const-string v2, "data"

    invoke-static {v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->toBytes(Lcom/google/android/syncadapters/calendar/CalendarSyncState;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 305
    const-string v2, "account_name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v2, "account_type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    .line 309
    invoke-virtual {v2, p0, v3, v0}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->insert(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 310
    new-instance v2, Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    iget-object v1, v1, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    invoke-direct {v2, v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;-><init>(Landroid/net/Uri;Lorg/json/JSONObject;)V

    return-object v2
.end method

.method private static findUpgradeMethod(I)Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 566
    :try_start_0
    const-class v0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "upgradeFrom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/ContentProviderClient;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Landroid/accounts/Account;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Missing upgrade from version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private forceFullSync(Landroid/accounts/Account;)V
    .locals 3

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1100
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1102
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1103
    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getFeedState(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/FeedState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/FeedState;->clear()V

    goto :goto_0

    .line 1107
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setFirstSeen(Z)V

    .line 1108
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Requesting full sync in CalendarSyncState#forceFullSync"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1109
    const-string v0, "com.android.calendar"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1110
    return-void
.end method

.method static fromBytes(Landroid/net/Uri;[BLandroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 110
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 111
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;-><init>(Landroid/net/Uri;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->fromParcelBytes(Landroid/net/Uri;[BLandroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Resetting sync state for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    new-instance v0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;-><init>(Landroid/net/Uri;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method static fromParcelBytes(Landroid/net/Uri;[BLandroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 125
    if-eqz p1, :cond_4

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 127
    array-length v0, p1

    invoke-virtual {v3, p1, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 128
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 131
    :try_start_0
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 132
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    const v4, -0x21524111

    if-ne v0, v4, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 134
    :cond_0
    const-string v4, "CalendarSyncAdapter"

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x28

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Invalid MAGIC or VERSION: %x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 134
    invoke-static {v4, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 188
    :goto_0
    return-object v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    :try_start_1
    const-string v2, "CalendarSyncAdapter"

    const-string v4, "Error Parsing"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 140
    goto :goto_0

    .line 142
    :cond_1
    :try_start_2
    const-string v0, "CalendarSyncAdapter"

    const-string v2, "GData Sync State found, upgrading to V3. Account: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v2, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 143
    new-instance v2, Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v2, p0, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;-><init>(Landroid/net/Uri;Lorg/json/JSONObject;)V

    .line 144
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setVersion(I)V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setJellyBean(Z)V

    .line 146
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setFirstSeen(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :try_start_3
    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 154
    :try_start_4
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    const-string v6, "CalendarSyncAdapter"

    const-string v7, "Converting state for feed %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    const-string v6, "http"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 163
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getCalendarIdFromGdataFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    invoke-virtual {v2, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->addFeed(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getFeedState(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/FeedState;

    move-result-object v6

    .line 166
    invoke-static {p2, v6, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setEventsRange(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/FeedState;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    .line 169
    :try_start_5
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 175
    :try_start_6
    invoke-virtual {v6, v0, v7}, Lcom/google/android/syncadapters/calendar/FeedState;->updateFromGDataBundle(Landroid/os/Bundle;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 150
    :catch_1
    move-exception v0

    .line 151
    :try_start_7
    const-string v2, "CalendarSyncAdapter"

    const-string v4, "Error Parsing"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 185
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 152
    goto/16 :goto_0

    .line 171
    :catch_2
    move-exception v0

    .line 172
    :try_start_8
    const-string v2, "CalendarSyncAdapter"

    const-string v4, "Error Parsing"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 185
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v0, v1

    .line 173
    goto/16 :goto_0

    .line 177
    :cond_3
    :try_start_9
    invoke-static {p2, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->upgradeCalendars(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 178
    invoke-static {p2, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->upgradeEvents(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 179
    invoke-virtual {v2, p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 180
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Requesting full sync in CalendarSyncState#fromParcelBytes"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    const-string v0, "com.android.calendar"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p3, v0, v1}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 185
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 183
    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 188
    goto/16 :goto_0
.end method

.method private static getCalendarIdFromGdataFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    if-nez p0, :cond_1

    .line 211
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Feed ID is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 p0, 0x0

    .line 225
    :cond_0
    :goto_0
    return-object p0

    .line 214
    :cond_1
    const-string v0, "https://www.google.com/calendar/feeds/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "https://www.google.com/calendar/feeds/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 219
    const/16 v1, 0x2f

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 220
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 222
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getIfAvailable(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 316
    .line 317
    :try_start_0
    sget-object v0, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/provider/SyncStateContract$Helpers;->getWithUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)Landroid/util/Pair;

    move-result-object v2

    .line 319
    if-nez v2, :cond_0

    move-object v0, v1

    .line 330
    :goto_0
    return-object v0

    .line 322
    :cond_0
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 323
    invoke-static {v0, p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->toAsSyncAdapterUri(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    .line 322
    invoke-static {v3, v0, p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->fromBytes(Landroid/net/Uri;[BLandroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 330
    goto :goto_0

    .line 327
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static getOrCreate(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 337
    sget-object v0, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2, v0, p3}, Landroid/provider/SyncStateContract$Helpers;->getWithUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)Landroid/util/Pair;

    move-result-object v1

    .line 339
    if-nez v1, :cond_0

    .line 340
    invoke-static {p2, p3, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->create(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    move-result-object v0

    .line 358
    :goto_0
    return-object v0

    .line 342
    :cond_0
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 343
    invoke-static {v0, p3}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->toAsSyncAdapterUri(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    .line 342
    invoke-static {v2, v0, p2, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->fromBytes(Landroid/net/Uri;[BLandroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    move-result-object v0

    .line 347
    if-nez v0, :cond_1

    .line 348
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Can\'t upgrade, wipe and resync"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 349
    invoke-static {p1, p2, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getSyncStateForWipeAndResync(Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    move-result-object v0

    goto :goto_0

    .line 352
    :cond_1
    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->upgradeVersion(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 353
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->isJellyBean()Z

    move-result v1

    if-nez v1, :cond_2

    .line 354
    invoke-direct {v0, p2, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->upgradeFromIcsToJb(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 356
    :cond_2
    invoke-static {v0, p1, p2, p0, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->upgradePackage(Lcom/google/android/syncadapters/calendar/CalendarSyncState;Landroid/content/Context;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method private static getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1011
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSyncStateForWipeAndResync(Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1116
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Upgrading to Apiary Sync Adapter"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1120
    invoke-static {p0, p1, p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->wipeEventsAndCalendars(Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 1121
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Requesting full sync in CalendarSyncState#getSyncStateForWipeAndResync"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1122
    const-string v0, "com.android.calendar"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2, v0, v1}, Lcom/google/android/calendar/SyncUtil;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1123
    invoke-static {p1, p2, p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->create(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/CalendarSyncState;

    move-result-object v0

    return-object v0
.end method

.method private static getSyncingPackageFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static sanitizeRecurrence(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 445
    if-eqz p0, :cond_0

    .line 446
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/Utils;->sanitizeRecurrence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Fixed bad %s: \'%s\'=>\'%s\'"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 449
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method private static setEventsRange(Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/FeedState;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    const-string v2, "cal_sync1=?"

    new-array v3, v0, [Ljava/lang/String;

    aput-object p2, v3, v1

    invoke-static {p0, v2, v3}, Lcom/google/android/syncadapters/calendar/Utils;->getEventsRange(Landroid/content/ContentProviderClient;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/Utils$TimeRange;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/Utils$TimeRange;->getStartTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/google/android/syncadapters/calendar/FeedState;->setUpgradeMinStart(J)V

    .line 289
    invoke-virtual {v2}, Lcom/google/android/syncadapters/calendar/Utils$TimeRange;->getEndTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/google/android/syncadapters/calendar/FeedState;->setUpgradeMaxStart(J)V

    .line 292
    :cond_0
    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static toBytes(Lcom/google/android/syncadapters/calendar/CalendarSyncState;)[B
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static transformSyncIds(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/CalendarSyncState$IdTransformer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 385
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x6

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v5

    const-string v1, "_sync_id"

    aput-object v1, v3, v4

    const-string v1, "original_sync_id"

    aput-object v1, v3, v6

    const-string v1, "cal_sync1"

    aput-object v1, v3, v7

    const-string v1, "rrule"

    aput-object v1, v3, v8

    const/4 v1, 0x5

    const-string v4, "exrule"

    aput-object v4, v3, v1

    const-string v1, "_sync_id LIKE \'"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "original_sync_id"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xd

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\' OR "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " LIKE \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 400
    if-eqz v1, :cond_3

    .line 402
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 403
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 405
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 406
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 407
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 408
    const/4 v7, 0x4

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 409
    const/4 v8, 0x5

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 410
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 411
    const-string v10, "_sync_id"

    invoke-interface {p3, v0, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState$IdTransformer;->transform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v10, "original_sync_id"

    invoke-interface {p3, v0, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncState$IdTransformer;->transform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 416
    :try_start_1
    const-string v0, "rrule"

    invoke-static {v7, v9, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->sanitizeRecurrence(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 417
    const-string v0, "exrule"

    invoke-static {v8, v9, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->sanitizeRecurrence(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 418
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v5, 0x1

    .line 419
    invoke-virtual {v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 420
    invoke-virtual {v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 418
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x64

    if-le v0, v3, :cond_0

    .line 431
    invoke-static {p0, p1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 432
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    :try_start_3
    const-string v5, "CalendarSyncAdapter"

    const-string v6, "Bad recurrence rule in event %s. Removing it from database"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v5, v0, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 426
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v3, 0x1

    .line 427
    invoke-virtual {v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 426
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 435
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 436
    invoke-static {p0, p1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 439
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_3
    return-void
.end method

.method private static upgradeCalendars(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 232
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Upgrading calendars"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 233
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v7

    const-string v1, "cal_sync1"

    aput-object v1, v3, v8

    const-string v1, "ownerAccount"

    aput-object v1, v3, v5

    sget-object v4, Lcom/google/android/syncadapters/calendar/Utils;->WHERE_ACCOUNT_AND_TYPE:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v5, v7

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v1, v5, v8

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_4

    .line 242
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 244
    const-string v4, "cal_sync2"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v4, "cal_sync3"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 248
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getCalendarIdFromGdataFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    if-nez v0, :cond_1

    .line 253
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    if-nez v0, :cond_1

    .line 255
    const-string v6, "CalendarSyncAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x4a

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "CAL_SYNC1 and ownerAccount are both null for calendar "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_1
    const-string v6, "cal_sync1"

    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 261
    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v4, 0x1

    .line 263
    invoke-virtual {v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 260
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v4, 0x64

    if-le v0, v4, :cond_0

    .line 266
    invoke-static {p0, p1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 267
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 270
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    invoke-static {p0, p1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_4
    return-void
.end method

.method private static upgradeEvents(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 193
    const-string v0, "CalendarSyncAdapter"

    const-string v1, "Upgrading events"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 194
    const-string v0, "http://www.google.com/calendar/feeds/%/events/%"

    new-instance v1, Lcom/google/android/syncadapters/calendar/CalendarSyncState$1;

    invoke-direct {v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState$1;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->transformSyncIds(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/CalendarSyncState$IdTransformer;)V

    .line 207
    return-void
.end method

.method private upgradeFrom(ILcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xd

    .line 523
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->findUpgradeMethod(I)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 525
    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const/4 v2, 0x2

    aput-object p4, v0, v2

    const/4 v2, 0x3

    aput-object p5, v0, v2

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 528
    if-gez v0, :cond_1

    .line 529
    add-int/lit8 v0, p1, 0x1

    .line 540
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setVersion(I)V

    .line 541
    invoke-virtual {p0, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 542
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Completed upgrade from version %d to %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 543
    return v0

    .line 533
    :cond_1
    if-le v0, p1, :cond_2

    if-le v0, v3, :cond_0

    .line 534
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x59

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Upgrade method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " returned invalid new version: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 544
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 545
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 546
    if-nez v0, :cond_3

    .line 547
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Invocation failed with null cause."

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 549
    :cond_3
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_4

    .line 550
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 552
    :cond_4
    instance-of v1, v0, Landroid/os/RemoteException;

    if-eqz v1, :cond_5

    .line 553
    check-cast v0, Landroid/os/RemoteException;

    throw v0

    .line 555
    :cond_5
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_6

    .line 556
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 558
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to invoke upgrade Method"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 559
    :catch_1
    move-exception v0

    .line 560
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to invoke upgrade Method"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private upgradeFromIcsToJb(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 364
    const-string v0, "%\n%"

    new-instance v1, Lcom/google/android/syncadapters/calendar/CalendarSyncState$2;

    invoke-direct {v1, p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState$2;-><init>(Lcom/google/android/syncadapters/calendar/CalendarSyncState;)V

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->transformSyncIds(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/syncadapters/calendar/CalendarSyncState$IdTransformer;)V

    .line 374
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setJellyBean(Z)V

    .line 375
    invoke-virtual {p0, p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 376
    return-void
.end method

.method private static upgradePackage(Lcom/google/android/syncadapters/calendar/CalendarSyncState;Landroid/content/Context;Landroid/content/ContentProviderClient;Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/accounts/Account;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getSyncingPackage()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getSyncingPackageFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 478
    const-string v2, "com.google.android.syncadapters.calendar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.calendar"

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    :try_start_0
    invoke-direct {p0, p3, p2, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->addTimelyDataToExistingEvents(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    :try_end_0
    .catch Lcom/google/android/apiary/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setSyncingPackage(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0, p2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 492
    :cond_1
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 485
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to upgrade package"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static upgradeVersion(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Lcom/google/android/syncadapters/calendar/CalendarSyncState;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xd

    .line 501
    invoke-virtual {p1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getVersion()I

    move-result v0

    iput v0, p1, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->originalVersion:I

    .line 502
    iget v1, p1, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->originalVersion:I

    .line 504
    :goto_0
    if-ge v1, v6, :cond_0

    move-object v0, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 505
    invoke-direct/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->upgradeFrom(ILcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I

    move-result v1

    goto :goto_0

    .line 508
    :cond_0
    if-le v1, v6, :cond_1

    .line 509
    const-string v0, "CalendarSyncAdapter"

    const-string v2, "Wipe Data on Downgrade from %d to %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 510
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->wipeDataAndForceFullSync(Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 511
    invoke-virtual {p1, v6}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->setVersion(I)V

    .line 512
    invoke-virtual {p1, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V

    .line 514
    :cond_1
    return-void
.end method

.method private static wipeEventsAndCalendars(Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1130
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "calendar_displayName"

    aput-object v1, v3, v8

    const-string v1, "sync_events"

    aput-object v1, v3, v9

    const-string v1, "visible"

    aput-object v1, v3, v10

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1140
    if-eqz v1, :cond_0

    .line 1142
    :try_start_0
    const-string v2, "saved-calendar-settings-"

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 1144
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1146
    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1147
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1148
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1149
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1150
    const-string v5, "%d:%d:%s\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/4 v3, 0x2

    aput-object v0, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1153
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    :try_start_4
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Failed to create save file: %s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "saved-calendar-settings-"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "CalendarSyncAdapter"

    iget-object v7, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1158
    invoke-static {v6, v7}, Lcom/android/calendarcommon2/LogUtils;->sanitizeAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1156
    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1161
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1169
    :cond_0
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "account_name=? AND account_type=?"

    new-array v3, v10, [Ljava/lang/String;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v3, v9

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->delete(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1174
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "account_name=? AND account_type=?"

    new-array v3, v10, [Ljava/lang/String;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v3, v9

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->delete(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1179
    return-void

    .line 1142
    :cond_1
    :try_start_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    .line 1161
    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1153
    :cond_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2
.end method


# virtual methods
.method public addFeed(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1281
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    :goto_0
    return-void

    .line 1282
    :catch_0
    move-exception v0

    .line 1283
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Failed to add feed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public getFeedState(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/FeedState;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1263
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    :try_start_0
    new-instance v0, Lcom/google/android/syncadapters/calendar/FeedState;

    iget-object v2, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/syncadapters/calendar/FeedState;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :goto_0
    return-object v0

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Bad feed object in sync state"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 1268
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1271
    goto :goto_0
.end method

.method public getSyncingPackage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1210
    :try_start_0
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    const-string v2, "package"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    const-string v2, "package"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1213
    :cond_0
    :goto_0
    return-object v0

    .line 1211
    :catch_0
    move-exception v1

    .line 1212
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Failed to get syncing package."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public getVersion()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1192
    :try_start_0
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1195
    :cond_0
    :goto_0
    return v0

    .line 1193
    :catch_0
    move-exception v1

    .line 1194
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Failed to get version."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public hasFeed(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFirstSeen()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1228
    :try_start_0
    iget-object v1, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    const-string v2, "firstSeen"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1231
    :goto_0
    return v0

    .line 1229
    :catch_0
    move-exception v1

    .line 1230
    const-string v2, "CalendarSyncAdapter"

    const-string v3, "Failed to get is first seen."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public isJellyBean()Z
    .locals 4

    .prologue
    .line 1246
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    const-string v1, "jellyBeanOrNewer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1249
    :goto_0
    return v0

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Failed to get is jelly bean."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1249
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newUpdateOperation()Landroid/content/ContentProviderOperation;
    .locals 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->uri:Landroid/net/Uri;

    .line 1187
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->toBytes(Lcom/google/android/syncadapters/calendar/CalendarSyncState;)[B

    move-result-object v1

    .line 1186
    invoke-static {v0, v1}, Landroid/provider/SyncStateContract$Helpers;->newUpdateOperation(Landroid/net/Uri;[B)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method public setFirstSeen(Z)V
    .locals 4

    .prologue
    .line 1237
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    const-string v1, "firstSeen"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1242
    :goto_0
    return-void

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Failed to set is first seen."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public setJellyBean(Z)V
    .locals 4

    .prologue
    .line 1255
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    const-string v1, "jellyBeanOrNewer"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    :goto_0
    return-void

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Failed to set is jelly bean."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public setSyncingPackage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1219
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    const-string v1, "package"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1224
    :goto_0
    return-void

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Failed to set syncing package."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public setVersion(I)V
    .locals 4

    .prologue
    .line 1201
    :try_start_0
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1206
    :goto_0
    return-void

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    const-string v1, "CalendarSyncAdapter"

    const-string v2, "Failed to set version."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateInProvider(Landroid/content/ContentProviderClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->toBytes(Lcom/google/android/syncadapters/calendar/CalendarSyncState;)[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/provider/SyncStateContract$Helpers;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;[B)V

    .line 1183
    return-void
.end method

.method public upgradeFrom0(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->wipeDataAndForceFullSync(Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 591
    const/4 v0, -0x1

    return v0
.end method

.method public upgradeFrom1(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 600
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 601
    const-string v0, "allowedReminders"

    const-string v1, "0,1,2"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {p4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "account_name=? AND account_type=?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v6, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v1, 0x1

    iget-object v6, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v5, v1

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 610
    const/4 v0, -0x1

    return v0
.end method

.method public upgradeFrom10(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 1035
    invoke-virtual {p1, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->restoreGrooveDataForEvents(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I

    move-result v0

    return v0
.end method

.method public upgradeFrom11(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 1

    .prologue
    .line 1045
    const/4 v0, -0x1

    return v0
.end method

.method public upgradeFrom12(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 1

    .prologue
    .line 1055
    const/4 v0, -0x1

    return v0
.end method

.method public upgradeFrom13(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 1063
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->addHabitTypeToSyncData8(Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I

    move-result v0

    return v0
.end method

.method public upgradeFrom14(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1074
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1075
    const-string v0, "allowedReminders"

    const-string v1, "0,1,2,4"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-static {p4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "account_name=? AND account_type=?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v6, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    iget-object v1, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v1, v5, v7

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1084
    const/4 v0, -0x1

    return v0
.end method

.method public upgradeFrom2(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p1, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;->repairWrongDefaults(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 620
    const/4 v0, -0x1

    return v0
.end method

.method public upgradeFrom3(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 631
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_0

    .line 633
    const/4 v2, -0x1

    .line 691
    :goto_0
    return v2

    .line 636
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "exdate LIKE \'%\' || x\'0A\' || \'%\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 643
    if-eqz v3, :cond_4

    .line 645
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 646
    :cond_1
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 648
    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 649
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 650
    const-string v7, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 651
    const-string v7, "eventStatus"

    invoke-static {v3, v6, v7}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 652
    const-string v7, "dtstart"

    invoke-static {v3, v6, v7}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 653
    const-string v7, "dtend"

    invoke-static {v3, v6, v7}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 654
    const-string v7, "duration"

    invoke-static {v3, v6, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 655
    const-string v7, "eventTimezone"

    invoke-static {v3, v6, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 657
    const-string v7, "allDay"

    invoke-static {v3, v6, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 658
    const-string v7, "rrule"

    invoke-static {v3, v6, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 659
    const-string v7, "rdate"

    invoke-static {v3, v6, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 660
    const-string v7, "exrule"

    invoke-static {v3, v6, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 661
    const-string v7, "exdate"

    invoke-static {v3, v6, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 663
    const-string v7, "exdate"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 664
    invoke-static {v7}, Lcom/google/android/syncadapters/calendar/Utils;->collateDatesByTimeZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 665
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 668
    const-string v9, "exdate"

    invoke-virtual {v6, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 670
    const-string v10, "CalendarSyncAdapter"

    const-string v11, "Collating EXDATE for event %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v12, v13

    invoke-static {v10, v11, v12}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 671
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "  Old value: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-static {v4, v5, v10}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 672
    const-string v4, "CalendarSyncAdapter"

    const-string v5, "  New value: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v7, v10

    invoke-static {v4, v5, v7}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 674
    invoke-static/range {p4 .. p4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 675
    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 676
    invoke-virtual {v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 677
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 673
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_1

    .line 679
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 680
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 687
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 683
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 684
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 691
    :cond_4
    const/4 v2, -0x1

    goto/16 :goto_0
.end method

.method public upgradeFrom4(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 709
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "rrule LIKE \'%;UNTIL=%\'"

    move-object v1, p3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 716
    if-eqz v1, :cond_4

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 720
    const-string v2, "rrule"

    .line 721
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 720
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/Utils;->sanitizeRecurrence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 723
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 724
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 725
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 726
    const-string v6, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 727
    const-string v6, "rrule"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v3, "eventStatus"

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 732
    const-string v3, "dtstart"

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 734
    const-string v3, "dtend"

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 736
    const-string v3, "duration"

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 738
    const-string v3, "eventTimezone"

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 740
    const-string v3, "allDay"

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 742
    const-string v3, "rdate"

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 744
    const-string v3, "exrule"

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 746
    const-string v3, "exdate"

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 750
    invoke-static {p4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v3

    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 751
    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 752
    invoke-virtual {v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 753
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 749
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 757
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 759
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 760
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 761
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x64

    if-le v0, v3, :cond_2

    .line 763
    invoke-static {p3, p4, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 764
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 767
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 768
    invoke-static {p3, p4, v1}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 771
    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method public upgradeFrom5(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x1

    .line 804
    .line 806
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 807
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v6

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 808
    const-string v3, "com.google.android.syncadapters.calendar"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v7

    :goto_1
    move v1, v0

    .line 811
    goto :goto_0

    .line 813
    :cond_0
    if-nez v1, :cond_2

    .line 876
    :cond_1
    :goto_2
    return v9

    .line 822
    :cond_2
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 823
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v3, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v4, "account_name=? AND account_type=?"

    new-array v5, v5, [Ljava/lang/String;

    iget-object v1, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v5, v6

    iget-object v1, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v1, v5, v7

    const/4 v6, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 830
    if-eqz v6, :cond_1

    .line 832
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 834
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 836
    :cond_3
    const-string v0, "sync_events"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v7, :cond_4

    .line 872
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 840
    :cond_4
    :try_start_1
    const-string v0, "cal_sync1"

    .line 841
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 840
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 845
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 846
    const-string v0, "sync_events"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    const-string v0, "visible"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    const-string v4, "account_name=? AND account_type=? AND cal_sync4=? AND cal_sync5=?"

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v7, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v5, v1

    const/4 v1, 0x1

    iget-object v7, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v7, v5, v1

    const/4 v1, 0x2

    const-string v7, "1"

    aput-object v7, v5, v1

    const/4 v1, 0x3

    const-string v7, "0"

    aput-object v7, v5, v1

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 860
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 861
    invoke-virtual {p0, v0}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getFeedState(Ljava/lang/String;)Lcom/google/android/syncadapters/calendar/FeedState;

    move-result-object v0

    .line 862
    if-eqz v0, :cond_5

    .line 863
    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/FeedState;->clear()V

    .line 865
    :cond_5
    invoke-virtual {p0, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->updateInProvider(Landroid/content/ContentProviderClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 872
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 869
    :cond_6
    :try_start_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->wipeDataAndForceFullSync(Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 872
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method public upgradeFrom6(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    const/4 v0, -0x1

    return v0
.end method

.method public upgradeFrom7(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 898
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->addTimelyDataToExistingEvents(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 900
    const/4 v0, -0x1

    return v0
.end method

.method public upgradeFrom8(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 952
    invoke-static/range {p4 .. p4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v2

    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "sync_data9"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "sync_data10"

    aput-object v6, v5, v3

    const-string v6, "sync_data9=\'true\' OR sync_data9=\'false\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 959
    if-eqz v3, :cond_3

    .line 961
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 962
    const-string v2, "sync_data9"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 963
    const-string v4, "sync_data10"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 964
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 966
    :cond_0
    const-string v6, "_id"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 968
    invoke-static {v3, v2}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    .line 969
    invoke-static {v3, v4}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v9

    .line 970
    invoke-static {v8, v9}, Lcom/google/android/syncadapters/calendar/EventHandler;->upgradeTimelyExtrasFlags(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 972
    const-string v11, "CalendarSyncAdapter"

    const-string v12, "Packing SYNC_DATA9, SYNC_DATA10 for event %d  From: %s, %s  To: %s"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 974
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    const/4 v8, 0x2

    aput-object v9, v13, v8

    const/4 v8, 0x3

    aput-object v10, v13, v8

    .line 972
    invoke-static {v11, v12, v13}, Lcom/android/calendarcommon2/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 976
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 977
    const-string v9, "_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 978
    const-string v9, "sync_data9"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string v9, "sync_data10"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 982
    invoke-static/range {p4 .. p4}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asSyncAdapter(Landroid/accounts/Account;)Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 983
    invoke-virtual {v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 984
    invoke-virtual {v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 985
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 981
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x64

    if-le v6, v7, :cond_1

    .line 987
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v1, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V

    .line 988
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 990
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 991
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 992
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v0, v1, v5}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->applyOperationsAsSyncAdapter(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1000
    :cond_3
    const/4 v2, -0x1

    return v2

    .line 996
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public upgradeFrom9(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 1022
    iget v0, p0, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->originalVersion:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    .line 1023
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->addTimelyDataToExistingEvents(Lcom/google/android/syncadapters/calendar/CalendarSyncAdapterApiary;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 1026
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public wipeDataAndForceFullSync(Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 1093
    invoke-static {p1, p2, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->wipeEventsAndCalendars(Landroid/content/Context;Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V

    .line 1094
    invoke-direct {p0, p3}, Lcom/google/android/syncadapters/calendar/CalendarSyncState;->forceFullSync(Landroid/accounts/Account;)V

    .line 1095
    return-void
.end method
