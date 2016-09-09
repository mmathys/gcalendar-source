.class public Lcom/android/calendar/timely/data/AccountsSettingsCache;
.super Lcom/android/calendar/timely/data/DataCache;
.source "AccountsSettingsCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/timely/data/DataCache",
        "<",
        "Lcom/android/calendar/timely/data/AccountItem;",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/calendar/timely/data/AccountsSettingsCache;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 36
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;->getInstance()Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;

    move-result-object v2

    .line 37
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getAccountsProviderHelper()Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 38
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getAccountsProviderHelper()Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;->getProjection()[Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getAccountsProviderHelper()Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/AccountsSettingsProviderHelper;->getCursorCreator()Lcom/android/calendar/content/CursorCreator;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/timely/data/DataCache;-><init>(Landroid/content/Context;Lcom/android/calendar/timely/data/CalendarLoaderManager$Builder;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/calendar/content/CursorCreator;I)V

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/android/calendar/timely/data/AccountsSettingsCache;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/android/calendar/timely/data/AccountsSettingsCache;->sInstance:Lcom/android/calendar/timely/data/AccountsSettingsCache;

    const-string v1, "AccountsSettingsCache#initialize(...) must be called first"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/calendar/timely/data/AccountsSettingsCache;->sInstance:Lcom/android/calendar/timely/data/AccountsSettingsCache;

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/android/calendar/timely/data/AccountsSettingsCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/calendar/timely/data/AccountsSettingsCache;->sInstance:Lcom/android/calendar/timely/data/AccountsSettingsCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    monitor-exit v1

    return-void

    .line 48
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/calendar/timely/data/AccountsSettingsCache;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/data/AccountsSettingsCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calendar/timely/data/AccountsSettingsCache;->sInstance:Lcom/android/calendar/timely/data/AccountsSettingsCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
