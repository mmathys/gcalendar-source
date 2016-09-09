.class public Lcom/google/android/calendar/extensions/RefreshUIManager;
.super Ljava/lang/Object;
.source "RefreshUIManager.java"

# interfaces
.implements Lcom/android/calendar/RefreshUIManagerInterface;
.implements Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;


# instance fields
.field private mFinishRefreshLabel:Ljava/lang/String;

.field private mStartRefreshLabel:Ljava/lang/String;

.field private mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/extensions/RefreshUIManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mStartRefreshLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/extensions/RefreshUIManager;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/extensions/RefreshUIManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mFinishRefreshLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/extensions/RefreshUIManager;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/calendar/extensions/RefreshUIManager;->showToast(Z)V

    return-void
.end method

.method private showToast(Z)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    if-eqz p1, :cond_2

    .line 101
    sget v0, Lcom/android/calendar/R$string;->drawer_account_sync_error:I

    .line 103
    :goto_1
    iget-object v1, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 102
    :cond_2
    sget v0, Lcom/android/calendar/R$string;->drawer_account_sync_compete:I

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized initialize(Landroid/content/Context;Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 4

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    sget v1, Lcom/android/calendar/R$string;->start_refresh_accessibility:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mStartRefreshLabel:Ljava/lang/String;

    .line 47
    sget v1, Lcom/android/calendar/R$string;->finish_refresh_accessibility:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mFinishRefreshLabel:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 52
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/android/calendar/R$color;->swipe_refresh_color1:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/android/calendar/R$color;->swipe_refresh_color2:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Lcom/android/calendar/R$color;->swipe_refresh_color3:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Lcom/android/calendar/R$color;->swipe_refresh_color4:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 55
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->addCallback(Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;)V

    .line 56
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->hasPendingSyncs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSyncCompleted(Z)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 81
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/calendar/extensions/RefreshUIManager$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/calendar/extensions/RefreshUIManager$2;-><init>(Lcom/google/android/calendar/extensions/RefreshUIManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onSyncPending()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 64
    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/extensions/RefreshUIManager;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/calendar/extensions/RefreshUIManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/calendar/extensions/RefreshUIManager$1;-><init>(Lcom/google/android/calendar/extensions/RefreshUIManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public trackSync(Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->getInstance()Lcom/google/android/syncadapters/calendar/SyncProgressTracker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->addPendingSync(Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 33
    return-void
.end method
