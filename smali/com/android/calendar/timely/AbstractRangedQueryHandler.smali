.class public abstract Lcom/android/calendar/timely/AbstractRangedQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AbstractRangedQueryHandler.java"

# interfaces
.implements Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncQueryHandler;",
        "Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener",
        "<",
        "Lcom/android/calendar/timely/data/CalendarItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllDataReadyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseVersion:I

.field protected mBusyTitle:Ljava/lang/String;

.field private final mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

.field private final mContentResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mDoingQuery:Z

.field private mFocusDay:I

.field protected mHideDeclined:Z

.field private mHideDeclinedVersion:I

.field private mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

.field protected mNoColorColor:I

.field protected mNoTitleTitle:Ljava/lang/String;

.field private final mPrime:I

.field private final mQueriesQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryVelocity:I

.field private mRangeQuery:Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;

.field private mShowDeclinedVersion:I

.field private mTokenCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 73
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mPrime:I

    .line 81
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueriesQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 82
    iput-boolean v2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mDoingQuery:Z

    .line 83
    iput v2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueryVelocity:I

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mTokenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$color;->event_center:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mNoColorColor:I

    .line 87
    sget v0, Lcom/android/calendar/R$string;->no_title_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mNoTitleTitle:Ljava/lang/String;

    .line 88
    sget v0, Lcom/android/calendar/R$string;->busy:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mBusyTitle:Ljava/lang/String;

    .line 89
    iput-boolean v2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mHideDeclined:Z

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mContentResolver:Ljava/lang/ref/WeakReference;

    .line 94
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    .line 98
    invoke-static {}, Lcom/android/calendar/timely/data/CalendarsCache;->getInstance()Lcom/android/calendar/timely/data/CalendarsCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    .line 99
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/data/CalendarsCache;->addDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getProjection()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getSortOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mBaseVersion:I

    .line 107
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->onDataChanged(ILjava/util/Collection;)V

    .line 108
    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/timely/AbstractRangedQueryHandler;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->deQueue()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/timely/AbstractRangedQueryHandler;)Lcom/android/calendar/latency/LatencyLogger;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    return-object v0
.end method

.method private deQueue()V
    .locals 4

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueriesQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v1

    .line 270
    :try_start_0
    invoke-direct {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getBestQuery()Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;

    move-result-object v0

    .line 271
    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 273
    const-string v0, "MonthQueryHandler"

    const-string v2, "No data queued."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mDoingQuery:Z

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mRangeQuery:Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;

    .line 276
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mAllDataReadyListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mAllDataReadyListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;

    .line 278
    invoke-interface {v0}, Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;->onAllEventsDataReady()V

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 281
    :cond_0
    :try_start_1
    monitor-exit v1

    .line 286
    :goto_1
    return-void

    .line 283
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->doQuery(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)V

    goto :goto_1
.end method

.method private doQuery(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 368
    const-string v0, "AbstractMonthQueryHandler doQuery"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 369
    iput-boolean v5, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mDoingQuery:Z

    .line 370
    iput-object p1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mRangeQuery:Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;

    .line 371
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mRangeQuery:Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;

    invoke-direct {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getVersion()I

    move-result v1

    int-to-long v2, v1

    # invokes: Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->setVersion(J)V
    invoke-static {v0, v2, v3}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->access$300(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;J)V

    .line 372
    # invokes: Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->getData()Lcom/android/calendar/timely/RangedData;
    invoke-static {p1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->access$100(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)Lcom/android/calendar/timely/RangedData;

    move-result-object v2

    .line 373
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mLatencyLogger:Lcom/android/calendar/latency/LatencyLogger;

    const/16 v1, 0xa

    # invokes: Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->getToken()I
    invoke-static {p1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->access$200(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)I

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/android/calendar/latency/LatencyLogger;->markAt(II)V

    .line 380
    monitor-enter v2

    .line 383
    :try_start_0
    # invokes: Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->getToken()I
    invoke-static {p1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->access$200(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)I

    move-result v1

    .line 384
    invoke-interface {v2}, Lcom/android/calendar/timely/RangedData;->getToken()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 386
    invoke-virtual {p0, v2}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getQueryUri(Lcom/android/calendar/timely/RangedData;)Landroid/net/Uri;

    move-result-object v3

    .line 389
    iget-boolean v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mHideDeclined:Z

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getSelectionHideDeclined()Ljava/lang/String;

    move-result-object v5

    .line 394
    :goto_0
    const-string v0, "MonthQueryHandler"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x27

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Starting query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with token "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 395
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getProjection()[Ljava/lang/String;

    move-result-object v4

    .line 396
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getSortOrder()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    .line 395
    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 398
    monitor-exit v2

    .line 417
    :goto_1
    return-void

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getSelection()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 400
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    const-string v0, "MonthQueryHandler"

    const-string v1, "Data\'s token was changed before query with token %d could begin."

    new-array v2, v5, [Ljava/lang/Object;

    .line 403
    # invokes: Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->getToken()I
    invoke-static {p1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->access$200(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 402
    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 410
    new-instance v0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$1;-><init>(Lcom/android/calendar/timely/AbstractRangedQueryHandler;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 416
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_1

    .line 400
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private enQueue(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)V
    .locals 2

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueriesQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-boolean v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mDoingQuery:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueriesQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->push(Ljava/lang/Object;)V

    .line 257
    :goto_0
    monitor-exit v1

    .line 258
    return-void

    .line 255
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->doQuery(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)V

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getBestQuery()Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 300
    iget v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueryVelocity:I

    if-nez v0, :cond_5

    .line 302
    const v6, 0x7fffffff

    .line 303
    const/high16 v4, -0x80000000

    .line 308
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueriesQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v1

    move v3, v7

    .line 309
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;

    .line 311
    # invokes: Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->getData()Lcom/android/calendar/timely/RangedData;
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->access$100(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)Lcom/android/calendar/timely/RangedData;

    move-result-object v9

    .line 312
    iget v5, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mFocusDay:I

    invoke-interface {v9, v5}, Lcom/android/calendar/timely/RangedData;->containsDay(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 359
    :goto_1
    return-object v0

    .line 318
    :cond_0
    invoke-interface {v9}, Lcom/android/calendar/timely/RangedData;->getStartDay()I

    move-result v5

    iget v10, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mFocusDay:I

    sub-int/2addr v5, v10

    .line 319
    if-lez v5, :cond_1

    if-ge v5, v6, :cond_1

    move v2, v3

    move v3, v4

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_2
    move v4, v3

    move v6, v5

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 328
    goto :goto_0

    .line 322
    :cond_1
    if-gez v5, :cond_7

    if-le v5, v4, :cond_7

    .line 324
    invoke-interface {v9}, Lcom/android/calendar/timely/RangedData;->getEndDay()I

    move-result v1

    iget v3, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mFocusDay:I

    sub-int/2addr v1, v3

    move v3, v5

    move v5, v6

    move-object v11, v2

    move v2, v1

    move-object v1, v11

    .line 325
    goto :goto_2

    .line 332
    :cond_2
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 343
    const/16 v0, -0x1f

    if-le v3, v0, :cond_6

    neg-int v0, v4

    if-le v6, v0, :cond_6

    move-object v0, v1

    .line 347
    :goto_3
    if-eqz v0, :cond_3

    .line 348
    iget-object v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueriesQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    :cond_3
    if-eqz v1, :cond_4

    .line 351
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueriesQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 352
    goto :goto_1

    .line 353
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueriesQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 354
    const-string v0, "MonthQueryHandler"

    const-string v1, "Unexpected failure to find best query"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 359
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueriesQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_3

    :cond_7
    move-object v0, v1

    move v5, v6

    move-object v1, v2

    move v2, v3

    move v3, v4

    goto :goto_2
.end method

.method private getVersion()I
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mHideDeclined:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mHideDeclinedVersion:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mShowDeclinedVersion:I

    goto :goto_0
.end method

.method private remove(I)V
    .locals 3

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueriesQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueriesQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 434
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;

    # invokes: Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->getData()Lcom/android/calendar/timely/RangedData;
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->access$100(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)Lcom/android/calendar/timely/RangedData;

    move-result-object v0

    .line 436
    invoke-interface {v0, p1}, Lcom/android/calendar/timely/RangedData;->containsDay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 438
    monitor-exit v1

    .line 442
    :goto_0
    return-void

    .line 441
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected closeCursor(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 514
    if-eqz p1, :cond_0

    .line 515
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 517
    :cond_0
    return-void
.end method

.method protected abstract getProjection()[Ljava/lang/String;
.end method

.method protected abstract getQueryUri(Lcom/android/calendar/timely/RangedData;)Landroid/net/Uri;
.end method

.method protected abstract getSelection()Ljava/lang/String;
.end method

.method protected abstract getSelectionArgs()[Ljava/lang/String;
.end method

.method protected abstract getSelectionHideDeclined()Ljava/lang/String;
.end method

.method protected abstract getSortOrder()Ljava/lang/String;
.end method

.method public onDataChanged(ILjava/util/Collection;)V
    .locals 6

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v0}, Lcom/android/calendar/timely/data/CalendarsCache;->getVisibleHashCode()I

    move-result v1

    .line 181
    const-string v2, "MonthQueryHandler"

    const-string v3, "%sVisible Calendar Version: %d"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-gez p1, :cond_0

    .line 182
    const-string v0, ""

    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 181
    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 183
    iget v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mBaseVersion:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 185
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getSelection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mShowDeclinedVersion:I

    .line 186
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getSelectionHideDeclined()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mHideDeclinedVersion:I

    .line 187
    return-void

    .line 182
    :cond_0
    const-string v0, "Updating "

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 447
    new-instance v0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;-><init>(Lcom/android/calendar/timely/AbstractRangedQueryHandler;Ljava/lang/Object;ILandroid/database/Cursor;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 510
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 511
    return-void
.end method

.method protected abstract processCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract processResults(Lcom/android/calendar/timely/RangedData;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/RangedData;",
            "TT;)V"
        }
    .end annotation
.end method

.method public refreshData(Lcom/android/calendar/timely/RangedData;I)V
    .locals 7

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueriesQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-boolean v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mDoingQuery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mRangeQuery:Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;

    # invokes: Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->getVersion()J
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->access$000(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->getVersion()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mRangeQuery:Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;

    # invokes: Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->getData()Lcom/android/calendar/timely/RangedData;
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->access$100(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)Lcom/android/calendar/timely/RangedData;

    move-result-object v0

    .line 203
    invoke-interface {v0, p2}, Lcom/android/calendar/timely/RangedData;->containsDay(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mRangeQuery:Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;

    .line 204
    # invokes: Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->getToken()I
    invoke-static {v2}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->access$200(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)I

    move-result v2

    invoke-interface {v0}, Lcom/android/calendar/timely/RangedData;->getToken()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 205
    const-string v0, "MonthQueryHandler"

    const-string v2, "Query request for %d already running for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 206
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 205
    invoke-static {v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 207
    monitor-exit v1

    .line 233
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->remove(I)V

    .line 222
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :try_start_1
    invoke-interface {p1, p2}, Lcom/android/calendar/timely/RangedData;->recycle(I)V

    .line 225
    new-instance v0, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;

    iget-object v2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mTokenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v0, p1, v2}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;-><init>(Lcom/android/calendar/timely/RangedData;I)V

    .line 226
    const-string v2, "MonthQueryHandler"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->getToken()I
    invoke-static {v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;->access$200(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x29

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Query created for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with token "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 227
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->enQueue(Lcom/android/calendar/timely/AbstractRangedQueryHandler$RangeQuery;)V

    .line 232
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 227
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public registerOnAllDataReadyListener(Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mAllDataReadyListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mAllDataReadyListeners:Ljava/util/List;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mAllDataReadyListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mHideDeclined:Z

    .line 135
    return-void
.end method

.method public setQueryVelocity(II)V
    .locals 3

    .prologue
    .line 138
    iput p1, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mQueryVelocity:I

    .line 139
    iput p2, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mFocusDay:I

    .line 140
    const-string v0, "MonthQueryHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "setQueryVelocity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " focusDay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 141
    return-void
.end method

.method public unregisterOnAllDataReadyListeners()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mAllDataReadyListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mAllDataReadyListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    :cond_0
    return-void
.end method

.method public unregisterOnDataChangedListener()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->mCalendarsCache:Lcom/android/calendar/timely/data/CalendarsCache;

    invoke-virtual {v0, p0}, Lcom/android/calendar/timely/data/CalendarsCache;->removeDataChangedListener(Lcom/android/calendar/timely/data/DataCache$OnDataChangedListener;)V

    .line 116
    return-void
.end method
