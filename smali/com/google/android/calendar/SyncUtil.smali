.class public final Lcom/google/android/calendar/SyncUtil;
.super Ljava/lang/Object;
.source "SyncUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;
    }
.end annotation


# direct methods
.method public static backUpSyncStats(Landroid/content/SyncResult;)Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;

    invoke-direct {v0}, Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;-><init>()V

    .line 55
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numEntries:J

    iput-wide v2, v0, Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;->numEntries:J

    .line 56
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numDeletes:J

    iput-wide v2, v0, Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;->numDeletes:J

    .line 57
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numInserts:J

    iput-wide v2, v0, Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;->numInserts:J

    .line 58
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numSkippedEntries:J

    iput-wide v2, v0, Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;->numSkippedEntries:J

    .line 59
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numUpdates:J

    iput-wide v2, v0, Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;->numUpdates:J

    .line 60
    return-object v0
.end method

.method public static requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    return-void
.end method

.method public static restoreSyncStats(Landroid/content/SyncResult;Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;Z)V
    .locals 4

    .prologue
    .line 72
    if-eqz p2, :cond_0

    .line 73
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, p1, Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;->numEntries:J

    iput-wide v2, v0, Landroid/content/SyncStats;->numEntries:J

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, p1, Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;->numDeletes:J

    iput-wide v2, v0, Landroid/content/SyncStats;->numDeletes:J

    .line 76
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, p1, Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;->numInserts:J

    iput-wide v2, v0, Landroid/content/SyncStats;->numInserts:J

    .line 77
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, p1, Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;->numSkippedEntries:J

    iput-wide v2, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 78
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, p1, Lcom/google/android/calendar/SyncUtil$SyncStatsBackup;->numUpdates:J

    iput-wide v2, v0, Landroid/content/SyncStats;->numUpdates:J

    .line 79
    return-void
.end method
