.class public abstract Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;
.super Ljava/lang/Object;
.source "SafetyNetBase.java"


# instance fields
.field protected mAllowedSimultaneousDeletesNumber:J

.field protected mAllowedSimultaneousDeletesPercent:J

.field protected mMaxLocalChangesInBatch:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCount(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 82
    invoke-static {}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->asClient()Lcom/google/android/syncadapters/calendar/ProviderHelper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "_count"

    aput-object v1, v3, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/syncadapters/calendar/ProviderHelper;->query(Landroid/content/ContentProviderClient;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 84
    if-nez v1, :cond_0

    move v0, v7

    .line 90
    :goto_0
    return v0

    .line 89
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 90
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getDeletesInBatch(Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/EntityIterator;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/apiary/ItemAndEntityHandler",
            "<TT;>;",
            "Landroid/content/EntityIterator;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 97
    if-nez p2, :cond_0

    move v1, v2

    .line 113
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 102
    :goto_1
    :try_start_0
    invoke-interface {p2}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-interface {p2}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 104
    invoke-virtual {v0}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 105
    invoke-interface {p1}, Lcom/google/android/apiary/ItemAndEntityHandler;->getDeletedColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 106
    :goto_2
    if-eqz v0, :cond_3

    .line 107
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    .line 109
    goto :goto_1

    :cond_1
    move v0, v2

    .line 105
    goto :goto_2

    .line 111
    :cond_2
    invoke-interface {p2}, Landroid/content/EntityIterator;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p2}, Landroid/content/EntityIterator;->reset()V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method private getTotalDeletes(Landroid/content/ContentProviderClient;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/net/Uri;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentProviderClient;",
            "Lcom/google/android/apiary/ItemAndEntityHandler",
            "<TT;>;",
            "Landroid/net/Uri;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/apiary/ParseException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-interface {p2}, Lcom/google/android/apiary/ItemAndEntityHandler;->getEntitySelection()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-interface {p2}, Lcom/google/android/apiary/ItemAndEntityHandler;->getDeletedColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {p1, p3, v0}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->getCount(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private hasTooManyDeletes(JJ)Z
    .locals 5

    .prologue
    .line 128
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 129
    :goto_0
    iget-wide v2, p0, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->mAllowedSimultaneousDeletesNumber:J

    cmp-long v2, p3, v2

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->mAllowedSimultaneousDeletesPercent:J

    long-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 128
    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    long-to-double v2, p3

    mul-double/2addr v0, v2

    long-to-double v2, p1

    div-double/2addr v0, v2

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processTooManyDeletesEvent(Landroid/content/SyncResult;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 137
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Too many deletions were found in provider %s, not doing any more updates"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 137
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 140
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v0}, Landroid/content/SyncStats;->clear()V

    .line 141
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    int-to-long v2, p2

    iput-wide v2, v0, Landroid/content/SyncStats;->numEntries:J

    .line 142
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    int-to-long v2, p3

    iput-wide v2, v0, Landroid/content/SyncStats;->numDeletes:J

    .line 143
    iput-boolean v5, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 145
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 146
    return-void
.end method


# virtual methods
.method public getBatchSize()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->mMaxLocalChangesInBatch:I

    return v0
.end method

.method protected abstract getConsideredDeletes(II)I
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method public abstract onBatchSync(Landroid/content/ContentProviderClient;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/EntityIterator;Landroid/content/SyncResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentProviderClient;",
            "Lcom/google/android/apiary/ItemAndEntityHandler",
            "<TT;>;",
            "Landroid/content/EntityIterator;",
            "Landroid/content/SyncResult;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onFullSync(Landroid/content/ContentProviderClient;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/SyncResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentProviderClient;",
            "Lcom/google/android/apiary/ItemAndEntityHandler",
            "<TT;>;",
            "Landroid/content/SyncResult;",
            ")V"
        }
    .end annotation
.end method

.method protected runProtection(Landroid/content/ContentProviderClient;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/EntityIterator;Landroid/content/SyncResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/ContentProviderClient;",
            "Lcom/google/android/apiary/ItemAndEntityHandler",
            "<TT;>;",
            "Landroid/content/EntityIterator;",
            "Landroid/content/SyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/apiary/ItemAndEntityHandler;->getEntityUri()Landroid/net/Uri;

    move-result-object v0

    .line 51
    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->getCount(Landroid/content/ContentProviderClient;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    .line 58
    invoke-direct {p0, p2, p3}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->getDeletesInBatch(Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/content/EntityIterator;)I

    move-result v2

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->getTotalDeletes(Landroid/content/ContentProviderClient;Lcom/google/android/apiary/ItemAndEntityHandler;Landroid/net/Uri;)I

    move-result v0

    .line 64
    instance-of v3, p2, Lcom/google/android/syncadapters/calendar/EventHandler;

    if-eqz v3, :cond_2

    .line 65
    invoke-static {v2, v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->saveDeletionValues(III)V

    .line 68
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->getConsideredDeletes(II)I

    move-result v0

    .line 69
    int-to-long v2, v1

    int-to-long v4, v0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->hasTooManyDeletes(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    invoke-direct {p0, p4, v1, v0}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->processTooManyDeletesEvent(Landroid/content/SyncResult;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/syncadapters/calendar/safetynet/SafetyNetBase;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ": Safety Net throws."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/SyncLog;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
