.class public Lcom/android/calendar/timely/DataFactory;
.super Landroid/app/Fragment;
.source "DataFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/DataFactory$OnEventsAndTasksReadyListener;,
        Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;,
        Lcom/android/calendar/timely/DataFactory$OnUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentDataInd:Ljava/lang/Integer;

.field private final mDataToday:Lcom/android/calendar/timely/MonthData;

.field private final mDatas:[Lcom/android/calendar/timely/MonthData;

.field private mDraftEvent:Lcom/android/calendar/timely/TimelineEvent;

.field private mEventQueryHandler:Lcom/android/calendar/timely/AbstractRangedQueryHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/calendar/timely/AbstractRangedQueryHandler",
            "<",
            "Lcom/android/calendar/timely/RangedData$EventResults;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskDataManager:Lcom/android/calendar/task/BaseTaskDataManager;

.field private mTimePassageDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/calendar/timely/DataFactory;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/DataFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/android/calendar/timely/MonthData;

    iput-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mDatas:[Lcom/android/calendar/timely/MonthData;

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mCurrentDataInd:Ljava/lang/Integer;

    .line 58
    new-instance v0, Lcom/android/calendar/timely/MonthData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/MonthData;-><init>(Z)V

    iput-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mDataToday:Lcom/android/calendar/timely/MonthData;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/DataFactory;)Lcom/android/calendar/timely/TimelineEvent;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mDraftEvent:Lcom/android/calendar/timely/TimelineEvent;

    return-object v0
.end method

.method private getFurthestData(I)Lcom/android/calendar/timely/MonthData;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 255
    iget-object v1, p0, Lcom/android/calendar/timely/DataFactory;->mDatas:[Lcom/android/calendar/timely/MonthData;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mCurrentDataInd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x19

    if-ge v0, v2, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mDatas:[Lcom/android/calendar/timely/MonthData;

    iget-object v2, p0, Lcom/android/calendar/timely/DataFactory;->mCurrentDataInd:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/android/calendar/timely/MonthData;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/calendar/timely/MonthData;-><init>(Z)V

    aput-object v3, v0, v2

    .line 259
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mCurrentDataInd:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mCurrentDataInd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mCurrentDataInd:Ljava/lang/Integer;

    .line 260
    monitor-exit v1

    .line 308
    :cond_0
    :goto_0
    return-object v3

    .line 262
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    iget-object v7, p0, Lcom/android/calendar/timely/DataFactory;->mDatas:[Lcom/android/calendar/timely/MonthData;

    array-length v8, v7

    move v5, v6

    move v1, v6

    move-object v3, v4

    :goto_1
    if-ge v5, v8, :cond_5

    aget-object v2, v7, v5

    .line 267
    invoke-virtual {v2}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v0

    sub-int/2addr v0, p1

    .line 268
    iget v9, p0, Lcom/android/calendar/timely/DataFactory;->mTimePassageDirection:I

    if-nez v9, :cond_3

    .line 269
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 270
    if-le v0, v1, :cond_7

    move-object v1, v2

    :goto_2
    move-object v3, v1

    move v1, v0

    .line 266
    :cond_2
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 262
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 278
    :cond_3
    iget v9, p0, Lcom/android/calendar/timely/DataFactory;->mTimePassageDirection:I

    mul-int/2addr v0, v9

    .line 281
    if-gez v0, :cond_4

    .line 282
    if-ge v0, v1, :cond_2

    move v1, v0

    move-object v3, v2

    .line 284
    goto :goto_3

    .line 286
    :cond_4
    if-ltz v1, :cond_2

    .line 289
    if-le v0, v1, :cond_2

    move v1, v0

    move-object v3, v2

    .line 291
    goto :goto_3

    .line 296
    :cond_5
    if-nez v3, :cond_6

    .line 297
    sget-object v0, Lcom/android/calendar/timely/DataFactory;->TAG:Ljava/lang/String;

    const-string v1, "Somehow, found no data for julian day %d"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v3, v4

    .line 298
    goto :goto_0

    .line 301
    :cond_6
    sget-object v0, Lcom/android/calendar/timely/DataFactory;->TAG:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/android/calendarcommon2/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v3}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v0

    .line 303
    sget-object v1, Lcom/android/calendar/timely/DataFactory;->TAG:Ljava/lang/String;

    const-string v2, "data was recycled for %d [%s] from %d with data[%s]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 304
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1}, Lcom/android/calendar/Utils;->julianToDebugString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    .line 305
    invoke-virtual {v3}, Lcom/android/calendar/timely/MonthData;->getDebugTag()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 303
    invoke-static {v1, v2, v4}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_7
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method private refreshDataToday(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 349
    const-string v0, "DataFactory.refreshDataToday"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 352
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mDataToday:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mDataToday:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->getNumDays()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 354
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mDataToday:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    .line 357
    :cond_1
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 358
    return-void

    .line 353
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getData(IZ)Lcom/android/calendar/timely/MonthData;
    .locals 2

    .prologue
    .line 191
    const-string v0, "DataFactory.getData"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/DataFactory;->getDataAllowNull(I)Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    .line 193
    if-nez v0, :cond_1

    .line 195
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/DataFactory;->getFurthestData(I)Lcom/android/calendar/timely/MonthData;

    move-result-object v0

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/DataFactory;->mEventQueryHandler:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    invoke-virtual {v1, v0, p1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->refreshData(Lcom/android/calendar/timely/RangedData;I)V

    .line 203
    iget-object v1, p0, Lcom/android/calendar/timely/DataFactory;->mTaskDataManager:Lcom/android/calendar/task/BaseTaskDataManager;

    invoke-interface {v1, p1}, Lcom/android/calendar/task/BaseTaskDataManager;->includeData(I)V

    .line 205
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 206
    :goto_0
    return-object v0

    .line 196
    :cond_1
    if-nez p2, :cond_0

    .line 198
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    goto :goto_0
.end method

.method public getDataAllowNull(I)Lcom/android/calendar/timely/MonthData;
    .locals 5

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mDataToday:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/MonthData;->containsDay(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mDataToday:Lcom/android/calendar/timely/MonthData;

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/timely/DataFactory;->mDatas:[Lcom/android/calendar/timely/MonthData;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 231
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/MonthData;->containsDay(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 230
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 236
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataToday()Lcom/android/calendar/timely/MonthData;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mDataToday:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v0}, Lcom/android/calendar/timely/MonthData;->getNumDays()I

    move-result v0

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mDataToday:Lcom/android/calendar/timely/MonthData;

    goto :goto_0
.end method

.method public getNumData()I
    .locals 1

    .prologue
    .line 240
    const/16 v0, 0x19

    return v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/calendar/timely/DataFactory;->mEventQueryHandler:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/android/calendar/timely/DataFactory$1;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/timely/DataFactory$1;-><init>(Lcom/android/calendar/timely/DataFactory;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/timely/DataFactory;->mEventQueryHandler:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    .line 101
    :cond_0
    invoke-static {p1}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/DataFactory;->setHideDeclinedEvents(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mEventQueryHandler:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/DataFactory;->setRetainInstance(Z)V

    .line 112
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getTaskDataFactory()Lcom/android/calendar/task/BaseTaskDataFactory;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/android/calendar/timely/DataFactory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/timely/DataFactory;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/DataFactory;->mDataToday:Lcom/android/calendar/timely/MonthData;

    iget-object v4, p0, Lcom/android/calendar/timely/DataFactory;->mDatas:[Lcom/android/calendar/timely/MonthData;

    .line 112
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/task/BaseTaskDataFactory;->getTaskDataManager(Landroid/app/Activity;Landroid/app/LoaderManager;Lcom/android/calendar/timely/MonthData;[Lcom/android/calendar/timely/MonthData;)Lcom/android/calendar/task/BaseTaskDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mTaskDataManager:Lcom/android/calendar/task/BaseTaskDataManager;

    .line 114
    invoke-virtual {p0}, Lcom/android/calendar/timely/DataFactory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v0

    const/16 v1, 0xe

    .line 115
    invoke-interface {v0, v1}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/calendar/timely/DataFactory;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/android/calendar/timely/DataFactory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/DataFactory;->initialize(Landroid/content/Context;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/DataFactory;->updateToday()V

    .line 121
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 126
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mTaskDataManager:Lcom/android/calendar/task/BaseTaskDataManager;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mTaskDataManager:Lcom/android/calendar/task/BaseTaskDataManager;

    invoke-interface {v0}, Lcom/android/calendar/task/BaseTaskDataManager;->onDestroy()V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mEventQueryHandler:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mEventQueryHandler:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    invoke-virtual {v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->unregisterOnDataChangedListener()V

    .line 132
    :cond_1
    return-void
.end method

.method public refreshDataAroundDay(IZZ)V
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 367
    const-string v1, "refreshDataAroundDay"

    invoke-static {v1}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 368
    if-eqz p2, :cond_0

    .line 369
    sget-object v1, Lcom/android/calendar/timely/DataFactory;->TAG:Ljava/lang/String;

    const-string v2, "refreshDataAroundDay - refreshExisting"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/DataFactory;->mTaskDataManager:Lcom/android/calendar/task/BaseTaskDataManager;

    invoke-interface {v1}, Lcom/android/calendar/task/BaseTaskDataManager;->refreshStart()V

    .line 372
    invoke-direct {p0, p2}, Lcom/android/calendar/timely/DataFactory;->refreshDataToday(Z)V

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v1

    .line 375
    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v2

    .line 376
    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthData;->getEndDay()I

    move-result v1

    .line 380
    invoke-virtual {p0}, Lcom/android/calendar/timely/DataFactory;->getNumData()I

    move-result v3

    if-lt v3, v0, :cond_1

    .line 381
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p2}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthData;->getEndDay()I

    move-result v1

    .line 383
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, p2}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v2

    .line 384
    invoke-virtual {v2}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v2

    .line 387
    :cond_1
    if-eqz p3, :cond_3

    .line 388
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/DataFactory;->getNumData()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 389
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_2

    .line 390
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p2}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v1

    .line 391
    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthData;->getEndDay()I

    move-result v1

    .line 388
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_2
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, p2}, Lcom/android/calendar/timely/DataFactory;->getData(IZ)Lcom/android/calendar/timely/MonthData;

    move-result-object v2

    .line 394
    invoke-virtual {v2}, Lcom/android/calendar/timely/MonthData;->getStartDay()I

    move-result v2

    goto :goto_1

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mTaskDataManager:Lcom/android/calendar/task/BaseTaskDataManager;

    invoke-interface {v0}, Lcom/android/calendar/task/BaseTaskDataManager;->refreshComplete()V

    .line 399
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 400
    return-void
.end method

.method public registerOnAllEventsDataReadyListener(Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mEventQueryHandler:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->registerOnAllDataReadyListener(Lcom/android/calendar/timely/DataFactory$OnAllEventsDataReadyListener;)V

    .line 149
    return-void
.end method

.method public setHideDeclinedEvents(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 168
    invoke-static {p1}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 169
    const-string v1, "preferences_hide_declined"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/android/calendar/timely/DataFactory;->mEventQueryHandler:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->setHideDeclinedEvents(Z)V

    .line 172
    return-void
.end method

.method public setOnEventsAndTasksReadyListener(Lcom/android/calendar/timely/DataFactory$OnEventsAndTasksReadyListener;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mDataToday:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v0, p1}, Lcom/android/calendar/timely/MonthData;->setOnEventsAndTasksReadyListener(Lcom/android/calendar/timely/DataFactory$OnEventsAndTasksReadyListener;)V

    .line 161
    return-void
.end method

.method public setTimePassage(II)V
    .locals 1

    .prologue
    .line 181
    iput p1, p0, Lcom/android/calendar/timely/DataFactory;->mTimePassageDirection:I

    .line 182
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mEventQueryHandler:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->setQueryVelocity(II)V

    .line 183
    return-void
.end method

.method public unregisterOnAllDataReadyListeners()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mEventQueryHandler:Lcom/android/calendar/timely/AbstractRangedQueryHandler;

    invoke-virtual {v0}, Lcom/android/calendar/timely/AbstractRangedQueryHandler;->unregisterOnAllDataReadyListeners()V

    .line 153
    return-void
.end method

.method public updateToday()V
    .locals 2

    .prologue
    .line 331
    const-string v0, "DataFactory.updateToday"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/android/calendar/timely/DataFactory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->getTodayJulianDay(Landroid/content/Context;)I

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/android/calendar/timely/DataFactory;->mDataToday:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v1}, Lcom/android/calendar/timely/MonthData;->getNumDays()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/timely/DataFactory;->mDataToday:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/MonthData;->containsDay(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/timely/DataFactory;->mDataToday:Lcom/android/calendar/timely/MonthData;

    invoke-virtual {v1, v0}, Lcom/android/calendar/timely/MonthData;->recycle(I)V

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/DataFactory;->refreshDataToday(Z)V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/DataFactory;->mTaskDataManager:Lcom/android/calendar/task/BaseTaskDataManager;

    invoke-interface {v0}, Lcom/android/calendar/task/BaseTaskDataManager;->updateToday()V

    .line 341
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 342
    return-void
.end method
