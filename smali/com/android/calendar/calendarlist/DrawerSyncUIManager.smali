.class public Lcom/android/calendar/calendarlist/DrawerSyncUIManager;
.super Ljava/lang/Object;
.source "DrawerSyncUIManager.java"

# interfaces
.implements Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerClosedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

.field private final mContext:Landroid/content/Context;

.field private mLoggedDisplay:Z

.field private mShowedSyncOff:Z

.field private mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Lcom/android/calendar/calendarlist/AccountSyncState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/calendarlist/DrawerListAdapter;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mStateMap:Ljava/util/Map;

    .line 31
    iput-boolean v2, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mLoggedDisplay:Z

    .line 32
    iput-boolean v2, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mShowedSyncOff:Z

    .line 35
    iput-object p1, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mContext:Landroid/content/Context;

    .line 37
    if-nez p2, :cond_0

    .line 38
    sget-object v0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->TAG:Ljava/lang/String;

    const-string v1, "Null adapter passed to DrawerSyncUIManager.initialize()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 40
    :cond_0
    iput-object p2, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->showToast(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->updateDrawerOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;)Lcom/android/calendar/calendarlist/DrawerListAdapter;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    return-object v0
.end method

.method private showToast(I)V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$3;-><init>(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method private updateDrawerOnUiThread()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$2;-><init>(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    return-void
.end method


# virtual methods
.method public getSyncState(Landroid/accounts/Account;)Lcom/android/calendar/calendarlist/AccountSyncState;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/AccountSyncState;

    .line 46
    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-object v0

    .line 50
    :cond_0
    const-string v0, "com.android.calendar"

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "com.android.calendar"

    .line 51
    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lcom/android/calendar/calendarlist/AccountSyncState;->DISABLED:Lcom/android/calendar/calendarlist/AccountSyncState;

    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, Lcom/android/calendar/calendarlist/AccountSyncState;->ENABLED:Lcom/android/calendar/calendarlist/AccountSyncState;

    goto :goto_0
.end method

.method public onDrawerClosed()V
    .locals 6

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mStateMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 115
    iget-boolean v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mLoggedDisplay:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mShowedSyncOff:Z

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mLoggedDisplay:Z

    .line 117
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/calendar/R$string;->analytics_category_sync_warnings:I

    .line 118
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/calendar/R$string;->analytics_action_sync_off_status_in_drawer:I

    .line 119
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/calendar/R$string;->analytics_label_displayed:I

    .line 120
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 117
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onShowedSyncOff()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mShowedSyncOff:Z

    .line 107
    return-void
.end method

.method public startSync(Landroid/accounts/Account;)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->mStateMap:Ljava/util/Map;

    sget-object v1, Lcom/android/calendar/calendarlist/AccountSyncState;->SYNCING:Lcom/android/calendar/calendarlist/AccountSyncState;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->updateDrawerOnUiThread()V

    .line 64
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/calendarlist/DrawerSyncUIManager$1;-><init>(Lcom/android/calendar/calendarlist/DrawerSyncUIManager;Landroid/accounts/Account;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->addPendingIndividualSync(Landroid/accounts/Account;Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;)V

    .line 92
    const-string v0, "com.android.calendar"

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 94
    const-string v0, "com.android.calendar"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/android/calendar/calendarlist/DrawerSyncUIManager;->TAG:Ljava/lang/String;

    const-string v1, "Cannot start a sync for a non-syncable account..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
