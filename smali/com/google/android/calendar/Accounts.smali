.class public Lcom/google/android/calendar/Accounts;
.super Ljava/lang/Object;
.source "Accounts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/Accounts$AccountsChangedReceiver;
    }
.end annotation


# static fields
.field private static final EXCHANGE_TYPE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GOOGLE_CALENDAR_SYNC_FEATURE:[Ljava/lang/String;

.field private static sCacheGoogleAccounts:Z

.field private static sCachedGoogleAccounts:[Landroid/accounts/Account;

.field private static sGetAccountsIssuePresent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "cl"

    .line 38
    invoke-static {v1}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/calendar/Accounts;->GOOGLE_CALENDAR_SYNC_FEATURE:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.exchange"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.gm.exchange"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/Accounts;->EXCHANGE_TYPE:Ljava/util/List;

    .line 44
    sput-boolean v2, Lcom/google/android/calendar/Accounts;->sCacheGoogleAccounts:Z

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/calendar/Accounts;->sCachedGoogleAccounts:[Landroid/accounts/Account;

    .line 55
    sput-boolean v2, Lcom/google/android/calendar/Accounts;->sGetAccountsIssuePresent:Z

    return-void
.end method

.method static synthetic access$002([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/google/android/calendar/Accounts;->sCachedGoogleAccounts:[Landroid/accounts/Account;

    return-object p0
.end method

.method public static getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 69
    :try_start_0
    sget-object v0, Lcom/google/android/calendar/Accounts;->sCachedGoogleAccounts:[Landroid/accounts/Account;

    .line 70
    if-nez v0, :cond_0

    .line 71
    const-string v0, "com.google"

    invoke-static {p0, v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getAccounts(Landroid/content/Context;Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 73
    :cond_0
    sget-boolean v1, Lcom/google/android/calendar/Accounts;->sCacheGoogleAccounts:Z

    if-eqz v1, :cond_1

    .line 74
    sput-object v0, Lcom/google/android/calendar/Accounts;->sCachedGoogleAccounts:[Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :cond_1
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 79
    :goto_1
    const-string v1, "CalendarAccounts"

    const-string v2, "Error getting Google accounts"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    :goto_2
    new-array v0, v4, [Landroid/accounts/Account;

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    .line 81
    invoke-static {p0, v0}, Lcom/google/android/calendar/Accounts;->handleSecurityException(Landroid/content/Context;Ljava/lang/SecurityException;)V

    goto :goto_2

    .line 77
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static getGoogleAccounts(Landroid/content/Context;[Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    :try_start_0
    const-string v0, "com.google"

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getAccounts(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :goto_1
    const-string v1, "CalendarAccounts"

    const-string v2, "Error getting Google accounts"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 98
    :goto_2
    new-array v0, v4, [Landroid/accounts/Account;

    goto :goto_0

    .line 95
    :catch_1
    move-exception v0

    .line 96
    invoke-static {p0, v0}, Lcom/google/android/calendar/Accounts;->handleSecurityException(Landroid/content/Context;Ljava/lang/SecurityException;)V

    goto :goto_2

    .line 93
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static getNonGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 122
    const-string v0, "CalendarAccounts"

    const-string v1, "Getting accounts from the provider should NOT be done on the UI thread"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 125
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "account_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const-string v3, "account_type <> ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "com.google"

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 134
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    :cond_1
    new-instance v0, Landroid/accounts/Account;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_2
    if-eqz v1, :cond_3

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Landroid/accounts/Account;

    invoke-interface {v7, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_4

    .line 141
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 140
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static getSyncableAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-static {p0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    .line 155
    invoke-static {p0}, Lcom/google/android/calendar/Accounts;->getNonGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v3

    .line 156
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    array-length v5, v2

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v2, v1

    .line 158
    const-string v7, "com.android.calendar"

    invoke-static {v6, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    .line 159
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_1
    array-length v1, v3

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, v3, v0

    .line 163
    const-string v5, "com.android.calendar"

    invoke-static {v2, v5}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    .line 164
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/accounts/Account;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    return-object v0
.end method

.method private static handleSecurityException(Landroid/content/Context;Ljava/lang/SecurityException;)V
    .locals 3

    .prologue
    .line 102
    invoke-static {p0}, Lcom/google/android/calendar/MncUtil;->isGetAccountsIssuePresent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/calendar/Accounts;->sGetAccountsIssuePresent:Z

    .line 107
    const-string v0, "CalendarAccounts"

    const-string v1, "SecurityException consumed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 112
    return-void

    .line 110
    :cond_0
    throw p1
.end method

.method public static initializeCaching(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/calendar/Accounts$AccountsChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/calendar/Accounts$AccountsChangedReceiver;-><init>(Lcom/google/android/calendar/Accounts$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/calendar/Accounts;->sCacheGoogleAccounts:Z

    .line 61
    return-void
.end method

.method public static isExchangeType(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/google/android/calendar/Accounts;->EXCHANGE_TYPE:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGetAccountsIssuePresent()Z
    .locals 1

    .prologue
    .line 175
    sget-boolean v0, Lcom/google/android/calendar/Accounts;->sGetAccountsIssuePresent:Z

    return v0
.end method
