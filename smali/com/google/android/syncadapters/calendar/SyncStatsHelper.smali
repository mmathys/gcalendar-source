.class public Lcom/google/android/syncadapters/calendar/SyncStatsHelper;
.super Ljava/lang/Object;
.source "SyncStatsHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/android/syncadapters/calendar/SyncStatsHelper;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/syncadapters/calendar/SyncStatsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeletedEventsCountInEditableCalendars(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 4

    .prologue
    .line 39
    const-string v0, "account_name=? AND account_type=? AND calendar_access_level>=500 AND deleted != 0"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/SyncStatsHelper;->getEventsCount(Landroid/content/ContentProviderClient;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getEventsCount(Landroid/content/ContentProviderClient;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 45
    .line 49
    :try_start_0
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_count"

    aput-object v4, v3, v1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 53
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 58
    :goto_0
    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_0
    :goto_1
    return v0

    .line 55
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 56
    :goto_2
    :try_start_2
    sget-object v2, Lcom/google/android/syncadapters/calendar/SyncStatsHelper;->TAG:Ljava/lang/String;

    const-string v3, "Failure when obtaining number of events."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_1

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 58
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 55
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move v0, v7

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_0
.end method

.method public static getEventsCountInEditableCalendars(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)I
    .locals 4

    .prologue
    .line 30
    const-string v0, "account_name=? AND account_type=? AND calendar_access_level>=500"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/android/syncadapters/calendar/SyncStatsHelper;->getEventsCount(Landroid/content/ContentProviderClient;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
