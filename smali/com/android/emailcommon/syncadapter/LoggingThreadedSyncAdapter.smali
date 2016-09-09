.class public abstract Lcom/android/emailcommon/syncadapter/LoggingThreadedSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "LoggingThreadedSyncAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract onLogSyncDetails(JJLandroid/content/SyncResult;)V
.end method

.method public abstract onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 10

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 47
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    .line 48
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    .line 50
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/emailcommon/syncadapter/LoggingThreadedSyncAdapter;->onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 56
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    sub-long v4, v0, v4

    move-object v1, p0

    move-object v6, p5

    .line 54
    invoke-virtual/range {v1 .. v6}, Lcom/android/emailcommon/syncadapter/LoggingThreadedSyncAdapter;->onLogSyncDetails(JJLandroid/content/SyncResult;)V

    .line 59
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    :try_start_1
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 56
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    sub-long v4, v0, v4

    move-object v1, p0

    move-object v6, p5

    .line 54
    invoke-virtual/range {v1 .. v6}, Lcom/android/emailcommon/syncadapter/LoggingThreadedSyncAdapter;->onLogSyncDetails(JJLandroid/content/SyncResult;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 55
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    sub-long v2, v6, v2

    .line 56
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    sub-long v4, v6, v4

    move-object v1, p0

    move-object v6, p5

    .line 54
    invoke-virtual/range {v1 .. v6}, Lcom/android/emailcommon/syncadapter/LoggingThreadedSyncAdapter;->onLogSyncDetails(JJLandroid/content/SyncResult;)V

    throw v0
.end method
