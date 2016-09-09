.class public Lcom/google/android/syncadapters/calendar/PendingSyncTracker;
.super Ljava/lang/Object;
.source "PendingSyncTracker.java"


# static fields
.field private static sTime:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/google/android/syncadapters/calendar/PendingSyncTracker;->sTime:Landroid/text/format/Time;

    return-void
.end method

.method private static getPerAccountPrefKey(Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSyncAlwaysPending(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-static {}, Lcom/google/android/syncadapters/calendar/PendingSyncTracker;->now()J

    move-result-wide v2

    .line 107
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 108
    const-string v4, "pending_sync_num_"

    invoke-static {v4, p1}, Lcom/google/android/syncadapters/calendar/PendingSyncTracker;->getPerAccountPrefKey(Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 109
    const-string v5, "pending_sync_since_"

    invoke-static {v5, p1}, Lcom/google/android/syncadapters/calendar/PendingSyncTracker;->getPerAccountPrefKey(Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 110
    const/16 v1, 0xa

    if-lt v4, v1, :cond_0

    sub-long/2addr v2, v6

    const-wide/32 v4, 0xf731400

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static now()J
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/google/android/syncadapters/calendar/PendingSyncTracker;->sTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 102
    sget-object v0, Lcom/google/android/syncadapters/calendar/PendingSyncTracker;->sTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static registerPendingSync(Landroid/content/SharedPreferences;Landroid/accounts/Account;ZJ)V
    .locals 7

    .prologue
    .line 74
    const-string v0, "pending_sync_num_"

    invoke-static {v0, p1}, Lcom/google/android/syncadapters/calendar/PendingSyncTracker;->getPerAccountPrefKey(Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "pending_sync_since_"

    invoke-static {v1, p1}, Lcom/google/android/syncadapters/calendar/PendingSyncTracker;->getPerAccountPrefKey(Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 76
    if-eqz p2, :cond_0

    .line 77
    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 78
    invoke-interface {p0, v1, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 79
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 80
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 85
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static trackPendingSyncs(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 61
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    invoke-static {p0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    .line 63
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 64
    const-string v5, "com.android.calendar"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    .line 65
    if-nez v5, :cond_0

    .line 66
    const-string v5, "com.android.calendar"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    .line 67
    invoke-static {}, Lcom/google/android/syncadapters/calendar/PendingSyncTracker;->now()J

    move-result-wide v6

    invoke-static {v1, v4, v5, v6, v7}, Lcom/google/android/syncadapters/calendar/PendingSyncTracker;->registerPendingSync(Landroid/content/SharedPreferences;Landroid/accounts/Account;ZJ)V

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method
