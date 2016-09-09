.class public Lcom/android/calendar/timely/SyncOffNotificationsManager;
.super Ljava/lang/Object;
.source "SyncOffNotificationsManager.java"

# interfaces
.implements Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;


# static fields
.field private static sInstance:Lcom/android/calendar/timely/SyncOffNotificationsManager;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAllAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsShowing:Z

.field private mNeedsRefresh:Z

.field private mNotification:Lcom/android/calendar/timely/SyncOffNotification;

.field private mShowReason:I

.field private mSyncOffAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mIsShowing:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mNeedsRefresh:Z

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAllAccounts:Ljava/util/Set;

    .line 81
    iput v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mShowReason:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/SyncOffNotificationsManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/SyncOffNotificationsManager;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isMasterSyncOff()Z

    move-result v0

    return v0
.end method

.method private checkDismissCycle()V
    .locals 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAllAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->computeSyncOffAccountsStateHash()I

    move-result v0

    .line 413
    iget-object v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    const-string v2, "com.android.calendar.timely.syncOffNotification.accountsHash"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 414
    iget-object v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    const-string v2, "com.android.calendar.timely.syncOffNotification.accountsHash"

    invoke-static {v1, v2, v0}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 415
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->resetNumDismisses()V

    goto :goto_0
.end method

.method private computeSyncOffAccountsStateHash()I
    .locals 3

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 421
    iget-object v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 422
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-virtual {v0}, Landroid/accounts/Account;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 426
    :cond_0
    return v1
.end method

.method private enableSync()V
    .locals 2

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getAccountsToSync()Ljava/util/Set;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/android/calendar/timely/SyncOffNotificationsManager$2;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager$2;-><init>(Lcom/android/calendar/timely/SyncOffNotificationsManager;Ljava/util/Set;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 377
    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 378
    return-void
.end method

.method private getAccountsToSync()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 382
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isMasterSyncOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAllAccounts:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 390
    :goto_0
    return-object v0

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAccount:Landroid/accounts/Account;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/calendar/timely/SyncOffNotificationsManager;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->sInstance:Lcom/android/calendar/timely/SyncOffNotificationsManager;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/android/calendar/timely/SyncOffNotificationsManager;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->sInstance:Lcom/android/calendar/timely/SyncOffNotificationsManager;

    .line 97
    :cond_0
    sget-object v0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->sInstance:Lcom/android/calendar/timely/SyncOffNotificationsManager;

    return-object v0
.end method

.method private getNumDismisses()I
    .locals 3

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->checkDismissCycle()V

    .line 397
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.calendar.timely.syncOffNotification.numDismisses"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOnAppOpenAccount()Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOnAppOpenText()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 293
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isMasterSyncOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->sync_off_notification_message_device:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAllAccounts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 298
    if-nez v0, :cond_1

    .line 300
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :cond_1
    if-ne v0, v3, :cond_3

    .line 303
    if-ne v1, v3, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->sync_off_notification_message_general:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 307
    iget-object v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/calendar/R$string;->sync_off_notification_message_account:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->sync_off_notification_message_accounts:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private increaseNumDismisses()V
    .locals 3

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.calendar.timely.syncOffNotification.numDismisses"

    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getNumDismisses()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 402
    return-void
.end method

.method private isDismissed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 335
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getNumDismisses()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInitialized()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mNotification:Lcom/android/calendar/timely/SyncOffNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAllAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMasterSyncOff()Z
    .locals 1

    .prologue
    .line 347
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSyncOff(Landroid/accounts/Account;)Z
    .locals 1

    .prologue
    .line 342
    const-string v0, "com.android.calendar"

    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "com.android.calendar"

    .line 343
    invoke-static {p1, v0}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    .line 343
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshIfNeeded()V
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mNeedsRefresh:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->onAppOpen()V

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->updateState()V

    .line 290
    return-void
.end method

.method private resetNumDismisses()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.calendar.timely.syncOffNotification.numDismisses"

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->removeSharedPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method private shouldShowOnAppOpen()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 323
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isDismissed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isMasterSyncOff()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    const-string v2, "com.android.calendar.timely.syncOffNotification.lastShown"

    const-wide/16 v4, -0x1

    invoke-static {v1, v2, v4, v5}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 328
    sub-long v2, v4, v2

    const-wide/32 v4, 0x3dcc500

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAnalyticsActionId()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mShowReason:I

    packed-switch v0, :pswitch_data_0

    .line 247
    sget v0, Lcom/android/calendar/R$string;->analytics_action_sync_off_other:I

    :goto_0
    return v0

    .line 243
    :pswitch_0
    sget v0, Lcom/android/calendar/R$string;->analytics_action_sync_off_app_open:I

    goto :goto_0

    .line 245
    :pswitch_1
    sget v0, Lcom/android/calendar/R$string;->analytics_action_sync_off_calendar_toggle:I

    goto :goto_0

    .line 246
    :pswitch_2
    sget v0, Lcom/android/calendar/R$string;->analytics_action_sync_off_create_event:I

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mIsShowing:Z

    return v0
.end method

.method public onAppOpen()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 134
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iput-boolean v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mNeedsRefresh:Z

    .line 146
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->shouldShowOnAppOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getOnAppOpenText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mText:Ljava/lang/String;

    .line 141
    iput v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mShowReason:I

    .line 142
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->getOnAppOpenAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAccount:Landroid/accounts/Account;

    .line 143
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mNotification:Lcom/android/calendar/timely/SyncOffNotification;

    invoke-virtual {v0}, Lcom/android/calendar/timely/SyncOffNotification;->show()V

    .line 145
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mNeedsRefresh:Z

    goto :goto_0
.end method

.method public onCalendarToggle(Landroid/accounts/Account;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 152
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isSyncOff(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isMasterSyncOff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->sync_off_notification_message_device:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mText:Ljava/lang/String;

    .line 164
    :goto_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mShowReason:I

    .line 165
    iput-object p1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAccount:Landroid/accounts/Account;

    .line 166
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mNotification:Lcom/android/calendar/timely/SyncOffNotification;

    invoke-virtual {v0}, Lcom/android/calendar/timely/SyncOffNotification;->show()V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAllAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 159
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->sync_off_notification_message_general:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mText:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->sync_off_notification_message_account:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mText:Ljava/lang/String;

    goto :goto_1
.end method

.method public onDismiss()V
    .locals 4

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->increaseNumDismisses()V

    .line 205
    iget v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mShowReason:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.calendar.timely.syncOffNotification.lastShown"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;J)V

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mShowReason:I

    .line 210
    return-void
.end method

.method public onEnableSync()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->enableSync()V

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mShowReason:I

    .line 198
    return-void
.end method

.method public onEventCreated(Landroid/accounts/Account;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 174
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isDismissed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isSyncOff(Landroid/accounts/Account;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isMasterSyncOff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->sync_off_notification_message_device:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mText:Ljava/lang/String;

    .line 186
    :goto_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mShowReason:I

    .line 187
    iput-object p1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAccount:Landroid/accounts/Account;

    .line 188
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mNotification:Lcom/android/calendar/timely/SyncOffNotification;

    invoke-virtual {v0}, Lcom/android/calendar/timely/SyncOffNotification;->show()V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAllAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 181
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->sync_off_notification_message_general_event:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mText:Ljava/lang/String;

    goto :goto_1

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/calendar/R$string;->sync_off_notification_message_account_event:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mText:Ljava/lang/String;

    goto :goto_1
.end method

.method public onSyncCompleted(Z)V
    .locals 3

    .prologue
    .line 269
    invoke-static {p0}, Lcom/google/android/syncadapters/calendar/SyncProgressTracker;->removeCallback(Lcom/google/android/syncadapters/calendar/SyncProgressTracker$SyncProgressCallback;)V

    .line 272
    if-eqz p1, :cond_0

    .line 273
    sget v0, Lcom/android/calendar/R$string;->drawer_account_sync_error:I

    .line 275
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/calendar/timely/SyncOffNotificationsManager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager$1;-><init>(Lcom/android/calendar/timely/SyncOffNotificationsManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-void

    .line 274
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->drawer_account_sync_compete:I

    goto :goto_0
.end method

.method public onSyncPending()V
    .locals 0

    .prologue
    .line 264
    return-void
.end method

.method public setAccounts(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAllAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 105
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAllAccounts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 108
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 109
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isSyncOff(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->checkDismissCycle()V

    .line 115
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->refreshIfNeeded()V

    .line 116
    return-void
.end method

.method public setIsShowing(Z)V
    .locals 0

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mIsShowing:Z

    .line 257
    return-void
.end method

.method public setNotification(Lcom/android/calendar/timely/SyncOffNotification;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mNotification:Lcom/android/calendar/timely/SyncOffNotification;

    .line 123
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->refreshIfNeeded()V

    .line 124
    return-void
.end method

.method public updateState()V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/calendar/timely/SyncOffNotificationsManager;->isMasterSyncOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mSyncOffAccounts:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mAccount:Landroid/accounts/Account;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/SyncOffNotificationsManager;->mNotification:Lcom/android/calendar/timely/SyncOffNotification;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/SyncOffNotification;->hide(ZZ)V

    goto :goto_0
.end method
